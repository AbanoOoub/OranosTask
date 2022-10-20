part of 'chat_cubit.dart';

@immutable
abstract class ChatState {}

class ChatInitial extends ChatState {}

class BotSecondMsgState extends ChatState {}

class BotThirdMsgState extends ChatState {}

class BotFourthMsgState extends ChatState {}

class BotFinishedSuccessfulyState extends ChatState {}
