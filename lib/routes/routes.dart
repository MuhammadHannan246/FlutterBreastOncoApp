import 'package:breast_onco/screens/account_screen.dart';
import 'package:breast_onco/screens/courses_screen.dart';
import 'package:breast_onco/screens/dash_screen.dart';
import 'package:breast_onco/screens/edit_patient_details_screen.dart';
import 'package:breast_onco/screens/goals_screen.dart';
import 'package:breast_onco/screens/onboard_payment_one_screen.dart';
import 'package:breast_onco/screens/onboard_plan_one_screen.dart';
import 'package:breast_onco/screens/onboard_promo_one_screen.dart';
import 'package:breast_onco/screens/onboard_review_order_one_screen.dart';
import 'package:breast_onco/screens/onboard_review_order_two_screen.dart';
import 'package:breast_onco/screens/otp_verification_screen.dart';
import 'package:breast_onco/screens/question_and_answer_screen.dart';
import 'package:breast_onco/screens/sign_in_screen.dart';
import 'package:breast_onco/screens/sign_up_email_screen.dart';
import 'package:breast_onco/screens/sign_up_full_name_screen.dart';
import 'package:breast_onco/screens/sign_up_mobile_screen.dart';
import 'package:breast_onco/screens/sign_up_password_screen.dart';
import 'package:breast_onco/screens/sign_up_screen.dart';
import 'package:breast_onco/screens/sign_up_verify_password_screen.dart';
import 'package:breast_onco/screens/splash_screen.dart';
import 'package:breast_onco/screens/support_screen.dart';
import 'package:breast_onco/screens/tabs_screen.dart';
import 'package:breast_onco/screens/tech_chat_support_screen.dart';

import 'package:flutter/material.dart';

class PageRoutes {
  Map<String, WidgetBuilder> routes() {
    return {
      SplashScreen.routeName: (context) => const SplashScreen(),
      OnboardReviewOrderOneScreen.routeName: (context) => const OnboardReviewOrderOneScreen(),
      OnboardReviewOrderTwoScreen.routeName: (context) => const OnboardReviewOrderTwoScreen(),
      OnboardPaymentOneScreen.routeName: (context) => const OnboardPaymentOneScreen(),
      OnBoardPlanOneScreen.routeName: (context) => const OnBoardPlanOneScreen(),
      OnboardPromoOneScreen.routeName: (context) => const OnboardPromoOneScreen(),
      TabsScreen.routeName: (context) => const TabsScreen(),
      SignInScreen.routeName: (context) => const SignInScreen(),
      SignUpScreen.routeName: (context) => const SignUpScreen(),
      SignUpEmailScreen.routeName: (context) => const SignUpEmailScreen(),
      SignUpFullNameScreen.routeName: (context) => const SignUpFullNameScreen(),
      SignUpMobileScreen.routeName: (context) => const SignUpMobileScreen(),
      SignUpPasswordScreen.routeName: (context) => const SignUpPasswordScreen(),
      SignUpVerifyPasswordScreen.routeName: (context) => const SignUpVerifyPasswordScreen(),
      OtpVerificationScreen.routeName: (context) => const OtpVerificationScreen(),
      DashScreen.routeName: (context) => const DashScreen(),
      GoalsScreen.routeName: (context) => const GoalsScreen(),
      CoursesScreen.routeName: (context) => const CoursesScreen(),
      SupportScreen.routeName: (context) => const SupportScreen(),
      TechChatSupportScreen.routeName: (context) => const TechChatSupportScreen(),
      AccountScreen.routeName: (context) => const AccountScreen(),
      QuestionAndAnswerScreen.routeName: (context) => const QuestionAndAnswerScreen(),
      EditPatientDetailsScreen.routeName: (context) => const EditPatientDetailsScreen(),
    };
  }
}
