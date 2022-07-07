import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:nsg_biolabs/data/model/todo_model.dart';

import '../../todo_filter_options/todo_filter_options_cubit.dart';
import '../../todo_list/todo_list_cubit.dart';

part 'filtered_todo_state.dart';

class FilteredTodoCubit extends Cubit<FilteredTodoState> {
  late StreamSubscription todoFilterSubscription;

  late StreamSubscription todoListSubscription;

  final TodoFilterOptionsCubit todoFilterCubit;
  final TodoListCubit todoListCubit;
  final List<NotesModel> initialListTodo;
  FilteredTodoCubit({
    required this.initialListTodo,
    required this.todoFilterCubit,
    required this.todoListCubit,
  }) : super(FilteredTodoState(
          filteredTodos: initialListTodo,
        )) {
    todoFilterSubscription = todoFilterCubit.stream.listen((TodoFilterOptionsState todoFilterState) {
      setFilterTodos();
    });

    todoListSubscription = todoListCubit.stream.listen((TodoListState todoListState) {
      setFilterTodos();
    });
  }

  void setFilterTodos() {
    List<NotesModel> _filteredTodos;

    switch (todoFilterCubit.state.filter) {
      case Filter.all:
      default:
        _filteredTodos = todoListCubit.state.todos;
        break;
    }

    emit(state.copyWith(filteredTodos: _filteredTodos));
    log('FilteredTodoState: Filtered Todos: $_filteredTodos');
  }

  @override
  Future<void> close() {
    todoFilterSubscription.cancel();
    todoListSubscription.cancel();
    return super.close();
  }
}
