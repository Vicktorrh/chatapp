import 'package:flutter/material.dart';
import 'package:freshproject/apis/auth.dart';
import 'package:freshproject/constant/app_color.dart';
import 'package:freshproject/core/snackbar.dart';
import 'package:freshproject/features/sign_in/screen/sign_in.dart';
import 'package:freshproject/global_widget/app_button.dart';
import 'package:freshproject/global_widget/app_text_field.dart';
import 'package:freshproject/global_widget/loading.dart';

class ForgotPassword extends StatefulWidget {
  ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final TextEditingController emailController = TextEditingController();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: isLoading
          ? Loading()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'Forgot ',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          decoration: TextDecoration.underline,
                          decorationThickness: 8,
                          decorationColor: AppColor.primary),
                    ),
                    TextSpan(
                        text: 'Password',
                        style:
                            Theme.of(context).textTheme.bodyLarge!.copyWith())
                  ])),
                  Text('Enter your email to reset your password',
                      style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: 70),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Your email'),
                      AppTextField(
                        controller: emailController,
                      ),
                    ],
                  ),
                  Spacer(),
                  AppButton(
                    onTap: () async {
                      if (emailController.text.isEmpty ||
                          !emailController.text.contains('@') ||
                          !emailController.text.contains('.')) {
                        AppSnackBar.error(context, 'Enter a valid email');
                        return;
                      }

                      setState(() {
                        isLoading = true;
                      });
                      await AuthService()
                          .forgotPassword(context, emailController.text);
                      setState(() {
                        isLoading = false;
                      });
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => SignIn()));
                    },
                    buttonText: 'Forgot Password',
                    backgroundColor: Theme.of(context).primaryColor,
                    textColor: AppColor.white,
                  ),
                  SizedBox(height: 70),
                ],
              ),
            ),
    );
  }
}
