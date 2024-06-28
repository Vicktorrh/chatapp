import 'package:flutter/material.dart';
import 'package:freshproject/constant/constant.dart';
import 'package:freshproject/core/extension.dart';
import 'package:freshproject/features/sign_up/provider/sign_up_provider.dart';
import 'package:freshproject/global_widget/widget.dart';
import 'package:provider/provider.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
      body: Consumer<AuthProvider>(builder: (context, authProvider, _) {
        return isLoading
            ? Loading()
            : SingleChildScrollView(
                child: Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  children: [
                    SizedBox(height: 70),
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Icon(Icons.arrow_back),
                    ),
                    SizedBox(height: 20),
                    Text.rich(TextSpan(children: [
                      TextSpan(
                          text: 'Sign up with ',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith()),
                      TextSpan(
                          text: 'Email',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(
                                  decoration: TextDecoration.underline,
                                  decorationThickness: 8,
                                  decorationColor: AppColor.primary))
                    ])),
                    SizedBox(height: 10),
                    Text(
                      'Get chatting with friends and family today by signing up for our chat app!',
                      style: Theme.of(context).textTheme.bodySmall,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 60),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Your Name'),
                          AppTextField(
                              controller: nameController,
                              validator: (data) {
                                if (data == null || data.isEmpty) {
                                  return 'Name Field is required';
                                } else if (data.length < 3) {
                                  return 'The name is less than the required length';
                                } else {
                                  return null;
                                }
                              }),
                          SizedBox(height: 20),
                          Text('Your Email'),
                          AppTextField(
                            controller: emailController,
                            validator: (data) {
                              if (data == null || data.isEmpty) {
                                return 'Email field is required';
                              } else if (!data.isEmail()) {
                                return 'Input a valid Email';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          Text('Your Password'),
                          AppTextField(
                            isPassword: true,
                            controller: passwordController,
                            validator: (data) {
                              if (data == null || data.isEmpty) {
                                return 'Password is required';
                              } else if (data.length < 6) {
                                return 'Password length requirement is not met';
                              } else {
                                return null;
                              }
                            },
                          ),
                          SizedBox(height: 20),
                          Text('Confirm Password'),
                          AppTextField(
                            isPassword: true,
                            controller: confirmpasswordController,
                            validator: (data) {
                              if (data == null || data.isEmpty) {
                                return 'Please confirm your password';
                              } else if (data != passwordController.text) {
                                return 'Password doesnt match';
                              } else {
                                return null;
                              }
                            },
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    AppButton(
                      onTap: () async {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            isLoading = true;
                          });
                          await authProvider.SignUpWithEmailAndPassword(
                              name: nameController.text.trim(),
                              email: emailController.text.trim(),
                              password: passwordController.text.trim(),
                              context: context);
                          setState(() {
                            isLoading = false;
                          });
                        }
                      },
                      buttonText: 'Create an Account',
                      backgroundColor: AppColor.primary,
                      textColor: AppColor.white,
                    ),
                    SizedBox(height: 40),
                  ],
                ),
              ));
      }),
    );
  }
}
