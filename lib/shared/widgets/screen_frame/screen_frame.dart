import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/config/config.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

class ScreenFrame extends StatelessWidget {
  final Color? backgroundColors;
  final double horizontalPadding;
  final double verticalPadding;
  final List<Widget> children;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;
  final Widget? body;
  final Widget? floatingActionButton;
  const ScreenFrame({
    Key? key,
    this.backgroundColors,
    this.horizontalPadding = Space.spacing24,
    this.verticalPadding = Space.spacing22,
    this.children = const <Widget>[],
    this.appBar,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        backgroundColor: backgroundColors,
        appBar: appBar,
        body: children.isNotEmpty
            ? Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalPadding,
                  vertical: verticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: children,
                ),
              )
            : body,
        bottomNavigationBar: bottomNavigationBar,
        floatingActionButton: floatingActionButton,
      ),
    );
  }
}
