import '/Helper/app_const.dart';
import '/View/Widget/custom_button.dart';
import '/View/Widget/custom_text_field.dart';
import '/View/register_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () { return Future(() => false); },
      child: SafeArea(
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
                  'Welcome back',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppConst.textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                  ),
                ),
                const SizedBox(height: 10,),
                Text(
                  'sign in to access your account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppConst.textColor,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 80,),
                const CustomTextField(hintText: 'Enter your email',inputType: TextInputType.emailAddress,suffixIcon: Icons.email_outlined,),
                const SizedBox(height: 20,),
                const CustomTextField(hintText: 'Password',inputType: TextInputType.visiblePassword,suffixIcon: Icons.lock_open,),
                const SizedBox(height: 5,),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forget password?',
                    style: TextStyle(
                      color: AppConst.textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                const SizedBox(height: 80,),
                CustomButton(text: 'Next', onPressed: (){},icon: const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Member? ',
                      style: TextStyle(
                          color: AppConst.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>const RegisterScreen()));
                      },
                      child: Text(
                        'Register now',
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
      ),
    );
  }
}
