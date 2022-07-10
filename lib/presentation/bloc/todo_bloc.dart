

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
    // on<UpdateTodoEvent>(_onUpdateTodo);
  }

  void _onLoadTodos(LoadTodosEvent event, Emitter<TodoState> emit) {
    emit(
      TodoLoadedState(todos: event.todos),
    );
  }

  void _onAddTodo(AddTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if (state is TodoLoadedState) {
      emit(
        TodoLoadedState(
          todos: List.from(state.todos)..add(event.todo),
        ),
      );
    }
  }

  void _onDeleteTodo(DeleteTodoEvent event, Emitter<TodoState> emit) {
    final state = this.state;
    if(state is TodoLoadedState){
     
      emit(TodoLoadedState(todos: List.from(state.todos)..remove(event.todo)));
    }
  }

  // void _onUpdateTodo(UpdateTodo event, Emitter<TodosState> emit) {
  //   final state = this.state;
  //   if(state is TodosLoaded){
  //     List<Todo> todos = (state.todos.map((todo) {
  //       return todo.id == event.todo.id ? event.todo : todo;
  //     })).toList();

  //     emit(TodosLoaded(todos: todos));
  //   }
  // }
}
