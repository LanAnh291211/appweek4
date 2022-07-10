part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoLoadingState extends TodoState {}

class TodoLoadedState extends TodoState {
  final List<TodoModel> todoList;

  TodoLoadedState({this.todoList = const <TodoModel>[]});

  @override
  List<Object> get props => [todoList];
}
