import 'package:flutter/material.dart';
import 'package:login_app/size.dart';

class CustomTextFormField extends StatelessWidget {
  final textConrtoller;
  final validate;
  String text;
  bool isPassword;
  CustomTextFormField(
      {required this.text,
      required this.validate,
      this.textConrtoller,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$text"),
        SizedBox(height: small_gap),
        TextFormField(
          controller: textConrtoller,
          // 1. value가 들어옴
          // 2. value로 유효성 검사하기(유효성 검사 코드는 나중에 따로 빼야한다)
          // 3. 리턴
          // null 리턴 -> 유효성검사 통과 : 잘못된게 없다
          // 메시지 리턴 -> 유효성검사 실패 : 오류메시지를 화면에 띄워줌
          validator: validate,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: "Enter email",
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
