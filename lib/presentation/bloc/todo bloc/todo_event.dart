part of 'todo_bloc.dart';

@immutable
abstract class TodosEvent extends Equatable {

  @override
  List<Object> get props => [];
}


class LoadTodosEvent extends TodosEvent {
  final List<TodoModel> todos;

  LoadTodosEvent({this.todos = const <TodoModel>[]});

  @override
  List<Object> get props => [todos];
}

class AddTodoEvent extends TodosEvent {
  final TodoModel todo;

  AddTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

class UpdateTodoEvent extends TodosEvent {
  final TodoModel todo;

  UpdateTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}

class DeleteTodoEvent extends TodosEvent {
  final TodoModel todo;

  DeleteTodoEvent({required this.todo});

  @override
  List<Object> get props => [todo];
}