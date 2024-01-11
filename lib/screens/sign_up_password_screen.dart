import 'package:breast_onco/screens/onboard_review_order_two_screen.dart';
import 'package:breast_onco/screens/sign_in_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/sign_in_sign_up_prompt_widget.dart';
import 'package:flutter/material.dart';

class SignUpPasswordScreen extends StatefulWidget {
  const SignUpPasswordScreen({super.key});
  static const routeName = '/sign-up-password';

  @override
  State<SignUpPasswordScreen> createState() => _SignUpPasswordScreenState();
}

class _SignUpPasswordScreenState extends State<SignUpPasswordScreen> {
  final formKey = GlobalKey<FormState>();
  TextEditingController passwordController = TextEditingController();
  bool passwordObscure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Center(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const SizedBox(height: 32.0),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            'assets/images/logo-purple.png',
                            height: 280,
                            fit: BoxFit.contain,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Password is wrong!';
                              } else {
                                return null;
                              }
                            },
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: kTextColor, width: 1.0),
                              ),
                              labelText: 'Create a password',
                              floatingLabelStyle: TextStyle(color: kSecondarySwatchColor),
                              hintStyle: TextStyle(color: kTextColor),
                              labelStyle: TextStyle(color: kTextColor),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 2, color: kSecondarySwatchColor),
                              ),
                            ),
                            obscureText: passwordObscure,
                            enableSuggestions: false,
                            autocorrect: false,
                          ),
                        ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 32.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: OutlinedButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  style: Theme.of(context).outlinedButtonTheme.style!.copyWith(
                                          side: MaterialStateProperty.all(BorderSide(
                                        color: kSecondarySwatchColor,
                                      ))),
                                  child: Text(
                                    'Back',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          color: kSecondarySwatchColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                      Navigator.of(context).pushNamed(OnboardReviewOrderTwoScreen.routeName);
                                    }
                                  },
                                  style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                        backgroundColor: MaterialStateProperty.all(kSecondarySwatchColor),
                                      ),
                                  child: Text(
                                    'Next',
                                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                          color: kLightColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SignInSignUpPromptWidget(text1: 'Already have an account?', text2: 'Sign In', routeName: SignInScreen.routeName),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
