import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/values/strings.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../shared/widgets/widges.dart';
import '../../../todo_list/todo_list_cubit.dart';

class NotePage extends StatefulWidget {
  const NotePage({Key? key}) : super(key: key);

  @override
  State<NotePage> createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  final TextEditingController newTodoControllerTitle = TextEditingController();
  final TextEditingController newTodoControllersubTitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ScreenFrame(
      appBar: CustomAppBar(),
      children: [
        CustomTextField(
          hintText: AppString.enterTitle,
          hintStyle: CustomTextStyle.bold(color: AppColors.nobel, fontSize: FontSize.veryBig),
          haveOutlineBorder: false,
          style: CustomTextStyle.bold(fontSize: FontSize.veryBig),
          onFieldSubmitted: (String? todoDesc) {
            if (todoDesc != null && todoDesc.trim().isNotEmpty) {
              context.read<TodoListCubit>().addTodo(todoDesc);
              newTodoControllerTitle.clear();
              log('Add todo: $todoDesc');
              showTopSnackBar(context, CustomSnackBar.success(message: todoDesc + ' created successfully'),
                  displayDuration: const Duration(
                    milliseconds: 1800,
                  ));
            }
          },
        ),
        CustomTextField(
          hintText: AppString.enterContent,
          haveOutlineBorder: false,
          maxLine: null,
          style: CustomTextStyle.regular(),
          onFieldSubmitted: (String? todoDesc) {
            if (todoDesc != null && todoDesc.trim().isNotEmpty) {
              context.read<TodoListCubit>().addTodo(todoDesc);
              newTodoControllersubTitle.clear();
              log('Add todo: $todoDesc');
              showTopSnackBar(context, CustomSnackBar.success(message: todoDesc + ' created successfully'),
                  displayDuration: const Duration(
                    milliseconds: 1800,
                  ));
            }
          },
        ),
      ],
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

//   Align _retote(double offsetx, double offsety, double rt, Color backgroundColor, double height, double width) {
//     return Align(
//       alignment: Alignment(offsetx, offsety),
//       child: RotationTransition(
//         turns: AlwaysStoppedAnimation(rt / 360),
//         child: Container(
//           height: height,
//           width: width,
//           decoration: BoxDecoration(color: backgroundColor),
//         ),
//       ),
//     );
//   }
}
