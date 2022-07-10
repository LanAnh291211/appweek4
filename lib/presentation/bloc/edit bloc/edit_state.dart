part of 'edit_bloc.dart';

abstract class EditState extends Equatable {
  const EditState();

  @override
  List<Object> get props => [];
}

class DisableEditState extends EditState {}

class EnableEditState extends EditState {}
