import '/Helper/app_const.dart';
import 'package:flutter/material.dart';




class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hintText,this.inputType = TextInputType.text, this.suffixIcon,}) : super(key: key);
  final String hintText;
  final TextInputType? inputType;
  final IconData? suffixIcon;


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppConst.textColor,
      keyboardType: inputType,
      obscureText: inputType == TextInputType.visiblePassword,
      textDirection: TextDirection.ltr,

      style: TextStyle(
        fontWeight: FontWeight.w500,
        color: AppConst.textColor

      ),
      decoration: InputDecoration(
        alignLabelWithHint: true,
        suffixIcon: suffixIcon != null ? Icon(suffixIcon,color: Colors.grey,) : null,
        hintText: hintText,
        fillColor: const Color(0xffF1F1F1),
        filled: true,
        hintStyle: const TextStyle(color: Colors.grey,),
        errorStyle: const TextStyle(fontWeight: FontWeight.w500,),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            )
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            )
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            )
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              style: BorderStyle.none,
            )
        ),
      ),
    );
  }
}
