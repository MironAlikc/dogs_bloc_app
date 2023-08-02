part of 'get_dogs_bloc.dart';

abstract class GetDogsState {}

class GetDogsInitial extends GetDogsState {}

class GetDogsSuccess extends GetDogsState {
  final DogsModel model;
  GetDogsSuccess({required this.model});
}

class GetDogsError extends GetDogsState {}
