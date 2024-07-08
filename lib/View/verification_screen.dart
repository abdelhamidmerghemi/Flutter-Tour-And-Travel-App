

import '/View/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import '../../Helper/app_const.dart';
import 'Widget/custom_button.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConst.backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Almost there',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20,),
              Text(
                'Please enter the 4-digit code sent to your email abdelhamidmerghemi@gmail.com for verification.',
                style: TextStyle(
                  color: AppConst.textColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 16
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Directionality(
                textDirection: TextDirection.ltr,
                child: OtpTextField(
                  numberOfFields: 4,
                  borderWidth: 2,
                  enabledBorderColor: AppConst.primaryColor,
                  disabledBorderColor: AppConst.primaryColor,
                  borderColor: AppConst.primaryColor,
                  focusedBorderColor: AppConst.primaryColor,
                  cursorColor: AppConst.primaryColor,
                  styles: [
                    TextStyle(
                      color: AppConst.textColor,
                    ),
                    TextStyle(
                      color: AppConst.textColor,
                    ),
                    TextStyle(
                      color: AppConst.textColor,
                    ),
                    TextStyle(
                      color: AppConst.textColor,
                    ),
                  ],
                  decoration: InputDecoration(
                    hintStyle:  TextStyle(
                      color:AppConst.textColor,
                    ),),
                  borderRadius: BorderRadius.circular(12),
                  fieldWidth: 60,
                  showFieldAsBox: true,
                  onSubmit: (String verificationCode) {

                  }, // end onSu
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                onPressed: () async {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const WelcomeScreen()));

                },
                text: 'Verify',
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn’t receive any code? ',
                    style: TextStyle(
                        color: AppConst.textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      'Resend Again',
                      style: TextStyle(
                          color: AppConst.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ],
              ),



            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          },
          backgroundColor: Colors.black,
          child: const Icon(Icons.arrow_back_ios,color: Colors.white,),
        ),
      ),
    );
  }
}
