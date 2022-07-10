import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/data/model/todo_model.dart';

part 'todo_event.dart';
part 'todo_state.dart';

class TodosBloc extends Bloc<TodosEvent, TodoState> {
  TodosBloc() : super(TodoLoadingState()) {
    on<LoadTodosEvent>(_onLoadTodos);
    on<AddTodoEvent>(_onAddTodo);
    on<DeleteTodoEvent>(_onDeleteTodo);
    on<UpdateTodoEvent>(_onUpdateTodo);
  }

  void _onLoadTodos(LoadTodosEvent event, Emitter<TodoState> emit) {
    emit(
      TodoLoadedState(todoList: event.todoList),
    );
  }

  void _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(
        TodoLoadedState(
          todoList: List.from(state.todoList)..add(event.todo),
        ),
      );
    }
  }

  void _onDeleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(TodoLoadedState(todoList: List.from(state.todoList)..remove(event.todo)));
    }
  }

  void _onUpdateTodo(UpdateTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      List<TodoModel> todos = state.todoList.map((todo) => todo.id == event.todo.id ? event.todo : todo).toList();
      emit(TodoLoadedState(todoList: todos));
    }
  }
}
