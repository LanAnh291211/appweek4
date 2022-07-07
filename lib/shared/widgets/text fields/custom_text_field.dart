import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/extensions/image_assets_path_extension.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../../../todo_list/todo_list_cubit.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final TextEditingController? controller;
  final double borderRadius;
  final String? Function(String?)? validator; // SOlid và denpencies injection, khi dung getx
  final String? suffixIcon;
  final String? prefixIcon;
  final bool obscureText;
  final double suffixIconSize;
  final double prefixIconSize;
  final bool haveOutlineBorder;
  final TextInputType? keyboardType;
  final void Function()? suffixIconOnTap;
  final void Function()? prefixIconOnTap;
  final int? minLine;
  final int? maxLine;
  final TextStyle? style;
  final TextStyle? hintStyle;
  final void Function(String)? onFieldSubmitted;

  const CustomTextField({
    super.key,
    this.label = "",
    required this.hintText,
    this.borderRadius = AppRadius.radius5,
    this.controller,
    this.suffixIcon,
    this.validator,
    this.suffixIconSize = IconSize.verySmall,
    this.keyboardType,
    this.suffixIconOnTap,
    this.obscureText = false,
    this.prefixIcon,
    this.prefixIconOnTap,
    this.prefixIconSize = IconSize.small,
    this.haveOutlineBorder = true,
    this.minLine = 1,
    this.maxLine = 1,
    this.style,
    this.hintStyle, this.onFieldSubmitted,
    // this.onFieldSubmitted  = (){}
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Visibility(
          visible: label.isEmpty ? false : true,
          child: Container(
              margin: CustomEdgeInsets.only(bottom: Space.spacing7),
              child: Text(
                label.tr,
              )),
        ),
        TextFormField(
          validator: validator,
          keyboardType: keyboardType,
          obscureText: obscureText,
          maxLines: maxLine,
          minLines: minLine,
          style: style,
          onFieldSubmitted: (String? todoDesc) {
            if (todoDesc != null && todoDesc.trim().isNotEmpty) {
              context.read<TodoListCubit>().addTodo(todoDesc);
              controller?.clear();
              log('Add todo: $todoDesc');
              showTopSnackBar(context, CustomSnackBar.success(message: todoDesc + ' created successfully'),
                  displayDuration: const Duration(
                    milliseconds: 1800,
                  ));
            }
          },
          decoration: InputDecoration(
              hintText: hintText.tr,
              hintStyle: hintStyle,
              prefixIcon: prefixIcon == null
                  ? null
                  : Container(
                      margin: CustomEdgeInsets.symmetric(
                        horizontal: Space.spacing14,
                      ),
                      child: GestureDetector(
                        onTap: prefixIconOnTap,
                        child: SvgPicture.asset(
                          prefixIcon!.getSVGImageAssets,
                        ),
                      ),
                    ),
              suffixIcon: suffixIcon == null
                  ? null
                  : Container(
                      margin: CustomEdgeInsets.only(right: Space.spacing21),
                      child: GestureDetector(
                        onTap: suffixIconOnTap,
                        child: SvgPicture.asset(
                          suffixIcon!.getSVGImageAssets,
                        ),
                      ),
                    ),
              suffixIconConstraints: BoxConstraints(maxHeight: suffixIconSize.h),
              prefixIconConstraints: BoxConstraints(maxHeight: prefixIconSize.h),
              isDense: true,
              contentPadding: CustomEdgeInsets.symmetric(horizontal: Space.spacing14, vertical: Space.spacing16),
              border: haveOutlineBorder
                  ? OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius.r),
                      borderSide: const BorderSide(color: AppColors.gainsboro),
                    )
                  : InputBorder.none),
        )
      ],
    );
  }
}
