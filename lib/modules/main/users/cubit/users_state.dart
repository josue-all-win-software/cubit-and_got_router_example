part of 'users_cubit.dart';

sealed class UsersState {}

final class UsersInitial extends UsersState {}

final class UsersLoading extends UsersState {}

final class UsersSuccess extends UsersState {}

final class UsersError extends UsersState {}
