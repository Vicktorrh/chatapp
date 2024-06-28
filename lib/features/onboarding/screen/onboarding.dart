import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:freshproject/apis/auth.dart';
import 'package:freshproject/constant/constant.dart';
import 'package:freshproject/features/sign_in/screen/sign_in.dart';
import 'package:freshproject/features/sign_up/screen/sign_up.dart';
import 'package:freshproject/global_widget/widget.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title: ImageWidget(imagePath: AppImages.logo),
        leading: Container(),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.onboarding), fit: BoxFit.fill),
          ),
          height: MediaQuery.sizeOf(context).height,
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 70),
              const Text(
                'Connect friends ',
                style: TextStyle(fontSize: 68, color: AppColor.white),
              ),
              const Text(
                'easily & quickly',
                style: TextStyle(
                    fontSize: 68,
                    fontWeight: FontWeight.bold,
                    color: AppColor.white),
              ),
              const Text(
                textAlign: TextAlign.center,
                'Our chat app is the perfect way to stay connected with friends and family.',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SocialButton(imagePath: AppImages.facebook, onPressed: () {}),
                  SocialButton(
                      imagePath: AppImages.google,
                      onPressed: () async {
                        await AuthService().signInWithEmailProvider(context);
                      }),
                  SocialButton(imagePath: AppImages.apple, onPressed: () {}),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Expanded(child: Divider()),
                  Text(
                    'OR',
                    style: TextStyle(color: AppColor.white),
                  ),
                  Expanded(child: Divider())
                ],
              ),
              Spacer(),
              AppButton(
                  onTap: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (_) => SignUp()));
                  },
                  buttonText: 'Sign up with mail'),
              SizedBox(height: 20),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: 'Existing account?  ',
                    style: TextStyle(color: AppColor.appgrey)),
                TextSpan(
                    text: 'Log in',
                    style: TextStyle(
                        color: AppColor.white, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => SignIn()));
                      }),
              ])),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
