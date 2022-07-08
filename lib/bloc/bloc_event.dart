part of 'bloc_bloc.dart';

@immutable
abstract class ToDoListEvent {}

class Add extends ToDoListEvent {
  final NotesModel item;
  Add(this.item);
}

class Delete extends ToDoListEvent {
  final int index;
  Delete(this.index);
}

