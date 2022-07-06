import 'package:flutter/material.dart';
import 'package:nsg_biolabs/shared/widgets/widges.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Login"),
        ),
        body: Padding(
          padding: CustomEdgeInsets.symmetric(horizontal: 16),
          child: ViewBookingItem(
            label: 'abc',
            content: 'abc',
          ),
        ),
      ),
    );
  }
}
