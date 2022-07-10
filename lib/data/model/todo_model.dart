import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/app_colors.dart';
import 'package:uuid/uuid.dart';

class TodoModel {
  final String id;
  Color? color;
  String? title;
  String? content;

  TodoModel({
    required this.color,
    required this.id,
    this.title = '',
    this.content = '',
  });

  // TODO: implement props
}

List<TodoModel> todoListDemo = [
  TodoModel(
      color: AppColors.burntSienna,
      title: 'Shopping List',
      content: 'Neque egestas congue quisque egestas diam. Eu augue ut lectus arcu bibendum at varius vel pharetra. Aliquam faucibus purus in massa. Placerat duis ultricies lacus sed turpis tincidunt id. Adipiscing at in tellus integer feugiat. Pretium vulputate sapien nec sagittis. Integer enim neque volutpat ac tincidunt vitae. \n' +
          'Lectus quam id leo in vitae turpis massa sed. Amet justo donec enim diam vulputate ut pharetra sit. Aliquam ultrices sagittis orci a scelerisque purus semper eget duis. Id semper risus in hendrerit gravida. Lorem ipsum dolor sit amet consectetur. Turpis egestas maecenas pharetra convallis posuere morbi leo urna molestie. \n' +
          'Duis at consectetur lorem donec massa. Pellentesque habitant morbi tristique senectus et netus et malesuada. Odio pellentesque diam volutpat commodo sed egestas egestas fringilla.\n' +
          '',
      id: Uuid().v4()),
  TodoModel(
    color: AppColors.portica,
    title: 'Reminder 29/11 ',
    content: 'Go and buy a new pair of headphones - old ones are broken',
    id: Uuid().v4(),
  ),
];
