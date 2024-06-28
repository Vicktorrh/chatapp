import 'package:flutter/material.dart';
import 'package:freshproject/apis/auth.dart';
import 'package:freshproject/constant/app_color.dart';
import 'package:freshproject/constant/app_image.dart';
import 'package:freshproject/features/sign_in/forgot_password.dart';
import 'package:freshproject/global_widget/app_button.dart';
import 'package:freshproject/global_widget/app_text_field.dart';
import 'package:freshproject/global_widget/loading.dart';
import 'package:freshproject/global_widget/social_button.dart';

class SignIn extends StatefulWidget {
  SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final TextEditingController emailController = TextEditingController();

  final TextEditingController nameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController confirmpasswordController =
      TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Loading()
          : SingleChildScrollView(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70, left: 20),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.arrow_back),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Text.rich(TextSpan(children: [
                      TextSpan(
                        text: 'Log in ',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 8,
                            decorationColor: AppColor.primary),
                      ),
                      TextSpan(
                          text: 'to Chatbox',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith())
                    ])),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    textAlign: TextAlign.center,
                    'Welcome back! Sign in using your social\naccount or email to continue us',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SocialButton(
                          imagePath: AppImages.facebook, onPressed: () {}),
                      SocialButton(
                          imagePath: AppImages.google,
                          onPressed: () async {
                            await AuthService()
                                .signInWithEmailProvider(context);
                          }),
                      SocialButton(
                          imagePath: AppImages.apple, onPressed: () {}),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Row(
                      children: [
                        Expanded(child: Divider()),
                        Text(
                          'OR',
                          style: TextStyle(color: AppColor.white),
                        ),
                        Expanded(child: Divider())
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 30, left: 20, right: 20),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your email'),
                          AppTextField(
                            controller: emailController,
                            validator: (data) {
                              if (data == null || data.isEmpty) {
                                return 'Your email is required';
                              } else if (!emailController.text.contains('@') ||
                                  !emailController.text.contains('.')) {
                                return 'The email is not valid';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                          const Text('Password'),
                          AppTextField(
                            isPassword: true,
                            controller: passwordController,
                            validator: (data) {
                              if (data == null || data.isEmpty) {
                                return 'Your password is required';
                              } else {
                                return null;
                              }
                            },
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 160),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      height: 50,
                      width: 360,
                      child: AppButton(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              setState(() {
                                isLoading = true;
                              });
                              await AuthService().signInWithEmailandPassword(
                                  context,
                                  emailController.text,
                                  passwordController.text);
                              setState(() {
                                isLoading = false;
                              });
                            }
                          },
                          buttonText: 'Log in'),
                    ),
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
