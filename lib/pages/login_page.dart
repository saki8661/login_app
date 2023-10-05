import 'package:flutter/material.dart';
import 'package:login_app/components/logo.dart';
import 'package:login_app/size.dart';

import '../components/custom_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            // inset 영역 때문에
            children: [
              SizedBox(height: xlarge_gap),
              Logo("Login"),
              Form(
                child: Column(
                  children: [
                    CustomTextFormField(text: "Email"),
                    CustomTextFormField(text: "Password", isPassword: true),
                    SizedBox(height: large_gap),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
