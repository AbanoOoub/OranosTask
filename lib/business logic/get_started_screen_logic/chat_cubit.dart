import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:oranos/data/constants/shared_pref_keys.dart';
import 'package:oranos/presentation/widgets/bot_msg_widget.dart';

import '../../helpers/shared_prefs.dart';

part 'chat_state.dart';

class ChatCubit extends Cubit<ChatState> {
  ChatCubit() : super(ChatInitial());

  static ChatCubit get(context) => BlocProvider.of(context);

  double destinationIndex = 100;

  final List<Widget> messages = [
    const BotMsgWidget(msg: "Hi, What's your FirstName?", withCategory: false)
  ];
  int botMsgIndex = 1;

  void botReply(String userMsg) {
    if (botMsgIndex == 1) {
      messages.add(BotMsgWidget(
          msg: "Ok, $userMsg what's your LastName?", withCategory: false));
      botMsgIndex++;
      CacheHelper.saveData(key: firstNameKey, val: userMsg);
      emit(BotSecondMsgState());
    } else if (botMsgIndex == 2) {
      String firstName = CacheHelper.getData(key: firstNameKey);
      messages.add(BotMsgWidget(
          msg: "Dear, ${firstName+''+userMsg}, what's your Title?",
          withCategory: false));
      botMsgIndex++;
      emit(BotThirdMsgState());
    } else if (botMsgIndex == 3) {
      messages.add(const BotMsgWidget(
          msg: "What Categories you will need expert in?", withCategory: true));
      botMsgIndex++;
      emit(BotFourthMsgState());
    } else {
      emit(BotFinishedSuccessfulyState());
    }
  }
}
