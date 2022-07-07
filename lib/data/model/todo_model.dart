import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

enum Filter { all, active, completed }

Uuid uuid = const Uuid();

class Todo extends Equatable {
  final String id;
  final String title;
  final Color color;
  final String time;
  final String subTitle;
  Todo(  {
    String? id,
    required this.title,
     this.color=Colors.white, this.time='', this.subTitle='',
    
    
  }) : id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, title, color,time,subTitle];

  @override
  String toString() => 'Todo(id: $id, title: $title, color: $color, time: $time, subTitle: $subTitle, )';

  Todo copyWith({
    String? id,
    String? title,
    Color? color,
   String? time,
   String? subTitle,
  }) {
    return Todo(
      id: id ?? this.id,
      title: title ?? this.title,
      color: color ?? this.color,
      time: time ?? this.time,
      subTitle: subTitle ?? this.subTitle,
      
    );
  }

  static fromMap(x) {
    return Todo(
      id: x['id'],
      title: x['title'],
      color: x['color'],
      time: x['time'],
      subTitle: x['subTitle'],
    );
  }

  toMap() {
    return {
      'id': id,
      'title': title,
      'color': color,
      'time': time,
      'subTitle': subTitle,
    };
  }
}
