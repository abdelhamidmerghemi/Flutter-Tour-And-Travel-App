import 'package:flutter/material.dart';
import '../../Helper/app_const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {Key? key, required this.text, required this.onPressed, this.icon})
      : super(key: key);
  final String text;
  final void Function() onPressed;
  final Widget? icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: AppConst.primaryColor,
            blurRadius: 5,
            spreadRadius: 0.0, // shadow direction: bottom right
          )
        ],
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15))),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style:
              const TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            if(icon != null)
              const SizedBox(width: 10,),
            if(icon != null)
              icon!
          ],
        ),
      ),
    );
  }
}
