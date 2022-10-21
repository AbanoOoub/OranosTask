import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../presentation/screens/home_screen.dart';

part 'navigation_state.dart';

class NavigationScreenCubit extends Cubit<NavigationScreenState> {
  NavigationScreenCubit() : super(NavigationScreenInitial());

  static NavigationScreenCubit get(context) => BlocProvider.of(context);

  int screenIndex = 0;

  final screens = [
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  void updateIndex({required int index}){
    screenIndex = index;
    emit(UpdatedIndexSuccessState());
  }

}
