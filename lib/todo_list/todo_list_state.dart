part of 'todo_list_cubit.dart';
import '../../../data/model/infor.dart' ;


class TodoListState extends Equatable {
  final List<NotesModel> todos;
  const TodoListState({
    required this.todos,
  });

  factory TodoListState.initial() => const TodoListState(todos: []);

  @override
  List<Object> get props => [todos];

  TodoListState copyWith({
    List<NotesModel>? todos,
  }) {
    return TodoListState(
      todos: todos ?? this.todos,
    );
  }

  @override
  String toString() => 'TodoListState(todos: $todos)';

  Map<String, dynamic> toMap() {
    return {
      'todos': todos.map((x) => x.toMap()).toList(),
    };
  }

  factory TodoListState.fromMap(Map<String, dynamic> map) {
    return TodoListState(
      todos: List<NotesModel>.from(map['todos']?.map((x) => NotesModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory TodoListState.fromJson(String source) =>
      TodoListState.fromMap(json.decode(source));
}
