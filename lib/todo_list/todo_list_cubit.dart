import 'dart:convert';
import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../data/model/infor.dart';
// import '../../models/todo_model.dart';
import '../data/model/todo_model.dart';

part 'todo_list_state.dart';

class TodoListCubit extends Cubit<TodoListState> with HydratedMixin {
  TodoListCubit() : super(TodoListState.initial());

  void loadDefaultTodos() {
    // final infoListDemo = [
    //   Todo(
    //     id: '1',
    //     title: 'Task 1',

    //   ),

    // ];
    emit(state.copyWith(todos: inforListDemo));
  }

  void addTodo(String todoDesc) {
    emit(state.copyWith(
      todos: [...state.todos, NotesModel(title: todoDesc)],
    ));
  }

  void editTodo(String id, String todoDesc) {
    emit(state.copyWith(
      todos: state.todos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(id: id, title: todoDesc);
        }
        return todo;
      }).toList(),
    ));
    log('TodoListState: editTodo id $id, with description: $todoDesc');
  }

  void toggleTodo(String id) {
    emit(state.copyWith(
      todos: state.todos.map((todo) {
        if (todo.id == id) {
          return todo.copyWith(
            id: id,
            title: todo.title,
          );
        }
        return todo;
      }).toList(),
    ));
    
  }

  void removeTodo(NotesModel todo) {
    emit(state.copyWith(
      todos: state.todos.where((t) => t.id != todo.id).toList(),
    ));
    log('TodoListState: removed todo id ${todo.id}');
  }


  void removeAllTodos() {
    emit(state.copyWith(todos: []));
    log('TodoListState: removed all todos');
  }

  @override
  TodoListState? fromJson(Map<String, dynamic> json) {
    return TodoListState.fromMap(json);
  }

  @override
  Map<String, dynamic>? toJson(TodoListState state) {
    return state.toMap();
  }
}
