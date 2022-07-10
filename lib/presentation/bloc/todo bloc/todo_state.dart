part of 'todo_bloc.dart';

abstract class TodoState extends Equatable {
  const TodoState();

  @override
  List<Object> get props => [];
}

class TodoLoadingState extends TodoState {}

class TodoLoadedState extends TodoState {
  final List<TodoModel> todos;

  TodoLoadedState({this.todos = const <TodoModel>[]});

  @override
  List<Object> get props => [todos];
}
