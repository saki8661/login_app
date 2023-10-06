import 'package:flutter/material.dart';
import 'package:login_app/components/custom_text_form_field.dart';
import 'package:login_app/size.dart';
import 'package:login_app/user_repository.dart';
import 'package:login_app/validator_util.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  // 폼태그를 만든 이유는 validation 체크를 위해 만들었다.
  final _email = TextEditingController();
  final _password = TextEditingController();

  CustomForm();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            text: "Email",
            validate: validateEmail(),
            textConrtoller: _email,
          ),
          CustomTextFormField(
              text: "Password",
              validate: validatePassword(),
              textConrtoller: _password,
              isPassword: true),
          SizedBox(height: large_gap),
          TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // validator가 null을 리턴하면 true가 된다.
                  UserRepository repo = UserRepository();
                  repo.login(_email.text.trim(), _password.text.trim());
                  Navigator.pushNamed(context, "/home");
                }
              },
              child: Text("Login"))
        ],
      ),
    );
  }
}
