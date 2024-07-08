import '/Helper/app_const.dart';
import '/View/Widget/custom_button.dart';
import '/View/Widget/custom_text_field.dart';
import '/View/login_screen.dart';
import '/View/verification_screen.dart';
import 'package:flutter/material.dart';


class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConst.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20,),
              Image.asset('assets/images/image.png',width: 250,),
              const SizedBox(height: 5,),
              Text(
                'Get Started',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                'by creating a free account.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 25,),
              const CustomTextField(hintText: 'Full name',inputType: TextInputType.text,suffixIcon: Icons.person_3_outlined,),
              const SizedBox(height: 20,),
              const CustomTextField(hintText: 'Enter your email',inputType: TextInputType.emailAddress,suffixIcon: Icons.email_outlined,),
              const SizedBox(height: 20,),
              const CustomTextField(hintText: 'Phone',inputType: TextInputType.phone,suffixIcon: Icons.phone,),
              const SizedBox(height: 20,),
              const CustomTextField(hintText: 'Strong Password',inputType: TextInputType.visiblePassword,suffixIcon: Icons.lock_open,),
              const SizedBox(height: 50,),
              CustomButton(text: 'Next', onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (_)=>const VerificationScreen()));},icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),),
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already a member? ',
                    style: TextStyle(
                        color: AppConst.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          color: AppConst.primaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
