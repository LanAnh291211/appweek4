import 'package:nsg_biolabs/shared/config/app_colors.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

// class NotesModel {
//   Color? color;
//   String? title;
//   String? time;
//   String? subTitle;

//   NotesModel({
//     required this.color,
//     this.title = '',
//     this.subTitle = '',
//     this.time='',

//   });
// }
enum Filter { all, active, completed }

Uuid uuid = const Uuid();

class NotesModel extends Equatable {
  final String id;
  final String title;
  final Color color;
  final String time;
  final String subTitle;
  NotesModel(  {
    String? id,
    required this.title,
     this.color=Colors.white, this.time='', this.subTitle='',
    
    
  }) : id = id ?? uuid.v4();

  @override
  List<Object> get props => [id, title, color,time,subTitle];

  @override
  String toString() => 'NotesModel(id: $id, title: $title, color: $color, time: $time, subTitle: $subTitle, )';

  NotesModel copyWith({
    String? id,
    String? title,
    Color? color,
   String? time,
   String? subTitle,
  }) {
    return NotesModel(
      id: id ?? this.id,
      title: title ?? this.title,
      color: color ?? this.color,
      time: time ?? this.time,
      subTitle: subTitle ?? this.subTitle,
      
    );
  }

  static fromMap(x) {
    return NotesModel(
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


List<NotesModel> inforListDemo = [
  NotesModel(
    color: AppColors.burntSienna,
    time: '16/11/2021',
    title: 'Shopping List',
    subTitle: 
        'Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. \n' +
        'Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. \n' +
        'Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus et malesuada. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla.\n' +
        '',
  ),
  NotesModel(
    color: AppColors.portica,
    title: 'Reminder 29/11 ',
    subTitle: 'Go and buy a new pair of headphones - old ones are broken',
  ),
  NotesModel(
    color: AppColors.mediumOrchid,
    title: 'Shopping List ',
    time: '25/11/2021',
    subTitle: 
        'Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. \n' +
        'Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. \n' +
        'Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus et malesuada. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla.\n' +
        '',
  ),
  NotesModel(
    color: AppColors.seaBuckthorn,
    title: 'Reminder 23/11 ',
    subTitle: 'It’s little sis’ birthday - get her a gift or anything. Last resort is to just give an allowance.',
  ),
  NotesModel(
    color: AppColors.mediumAquamarine,
    title: 'Spending Nov 21 ',
    subTitle: 'It’s little sis’ birthday - get her a gift or anything. Last resort is to just give an allowance.',
  ),
];
