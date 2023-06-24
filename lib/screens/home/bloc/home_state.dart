part of 'home_bloc.dart';


abstract class HomeState {}

class HomeInitial extends HomeState {}

class UserGotState extends HomeState {
  final User user;

  UserGotState(this.user);

}

class LoadingState extends HomeState {}

class ErrorState extends HomeState {
  final String error;

  ErrorState(this.error);
}