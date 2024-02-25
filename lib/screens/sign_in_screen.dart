import 'package:breast_onco/constants/component.dart';
import 'package:breast_onco/constants/repository.dart';
import 'package:breast_onco/screens/sign_up_screen.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/sign_in_sign_up_prompt_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});
  static const routeName = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final formKey = GlobalKey<FormState>();
  Repository apis = Repository();
  TextEditingController emailController = TextEditingController();
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
                      // Padding(
                      //   padding: const EdgeInsets.all(16.0),
                      //   child: SvgPicture.asset(
                      //     'assets/images/dashce.svg',
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 64.0, vertical: 16.0),
                        child: Text(
                          'Login in with your credentials below',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(
                                color: kTextColor,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0, right: 32.0, top: 32.0, bottom: 8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}').hasMatch(value)) {
                              return 'Use the standard username format like example@breastonco.com';
                            } else {
                              return null;
                            }
                          },
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: kTextColor, width: 1.0),
                            ),
                            labelText: 'Email Address',
                            hintText: 'example@breastonco.com',
                            floatingLabelStyle: TextStyle(color: kSecondarySwatchColor),
                            hintStyle: TextStyle(color: kTextColor),
                            labelStyle: TextStyle(color: kTextColor),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: kSecondarySwatchColor),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
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
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      passwordObscure = !passwordObscure;
                                    });
                                  },
                                  icon: Icon(passwordObscure ? Icons.visibility_off : Icons.visibility, color: kSecondarySwatchColor),
                                ),
                              ),
                              obscureText: passwordObscure,
                              enableSuggestions: false,
                              autocorrect: false,
                            ),
                            MaterialButton(
                              onPressed: () {},
                              visualDensity: VisualDensity.compact,
                              child: Text(
                                'FORGOT PASSWORD?',
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: kSecondarySwatchColor,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                        child: SizedBox(
                          width: size(context).width,
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                apis.login(context, emailController.text, passwordController.text);
                              }
                            },
                            style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
                                  backgroundColor: MaterialStateProperty.all(kSecondarySwatchColor),
                                ),
                            child: Text(
                              'Login',
                              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: kLightColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SignInSignUpPromptWidget(text1: 'Join the new way to your health!', text2: 'Sign Up', routeName: SignUpScreen.routeName),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
