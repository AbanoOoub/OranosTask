import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oranos/business%20logic/get_started_screen_logic/chat_cubit.dart';
import 'package:oranos/data/models/app_colors.dart';
import 'package:oranos/presentation/widgets/user_msg_widget.dart';

import '../../data/models/app_routes.dart';
import '../widgets/text_form_field_widget.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  TextEditingController msgController = TextEditingController();
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatCubit(),
      child: BlocConsumer<ChatCubit, ChatState>(
        listener: (context, state) {
          if(state is BotFinishedSuccessfulyState){
            Navigator.pushReplacementNamed(context, AppRoutes.navigationScreenRoute);
          }
        },
        builder: (context, state) {
          var chatCubit = ChatCubit.get(context);
          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 830.h,
                    child: ListView.builder(
                      addAutomaticKeepAlives: true,
                        controller: scrollController,
                        itemBuilder: (context, index) =>
                            chatCubit.messages[index],
                        itemCount: chatCubit.messages.length),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 6,
                        child: CustomTextForm(
                            controller: msgController,
                            hint: "Type something...",
                            textColor: AppColors.mainTextColor,
                            prefixIcon: const Icon(Icons.language),
                            suffixIcon: const Icon(Icons.upload),
                            validator: (String? value) {
                              return null;
                            }),
                      ),
                      Expanded(
                          flex: 1,
                          child: InkWell(
                              onTap: () {
                                if (msgController.text.isNotEmpty) {
                                  chatCubit.messages.add(
                                      UserMsgWidget(msg: msgController.text));
                                  chatCubit.botReply(msgController.text);
                                  msgController.clear();
                                  // chatCubit.scrollToIndex(scrollController);
                                } else {}
                              },
                              child: Icon(Icons.send,
                                  color: AppColors.mainColor))),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
