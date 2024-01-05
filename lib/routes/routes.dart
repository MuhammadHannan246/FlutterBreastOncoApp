import 'package:breast_onco/screens/account_screen.dart';
import 'package:breast_onco/screens/alternate_verification_screen.dart';
import 'package:breast_onco/screens/course_filters_screen.dart';
import 'package:breast_onco/screens/course_detail_screen.dart';
import 'package:breast_onco/screens/courses_screen.dart';
import 'package:breast_onco/screens/dash_screen.dart';
import 'package:breast_onco/screens/edit_patient_details_screen.dart';
import 'package:breast_onco/screens/goal_manager_one_screen.dart';
import 'package:breast_onco/screens/goal_manager_three_screen.dart';
import 'package:breast_onco/screens/goal_manager_two_screen.dart';
import 'package:breast_onco/screens/goals_screen.dart';
import 'package:breast_onco/screens/onboard_license_setup_five_screen.dart';
import 'package:breast_onco/screens/onboard_payment_one_screen.dart';
import 'package:breast_onco/screens/onboard_plan_one_screen.dart';
import 'package:breast_onco/screens/onboard_promo_one_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_five_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_ten_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_eight_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_seven_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_four_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_one_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_nine_screen.dart';
import 'package:breast_onco/screens/multi_factor_authentication_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_five_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_four_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_one_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_six_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_three_screen.dart';
import 'package:breast_onco/screens/onboard_goal_setup_two_screen.dart';
import 'package:breast_onco/screens/onboard_management_five_screen.dart';
import 'package:breast_onco/screens/onboard_license_setup_four_screen.dart';
import 'package:breast_onco/screens/onboard_license_setup_three_screen.dart';
import 'package:breast_onco/screens/onboard_management_four_screen.dart';
import 'package:breast_onco/screens/onboard_management_three_screen.dart';
import 'package:breast_onco/screens/onboard_management_two_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_seven_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_six_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_three_screen.dart';
import 'package:breast_onco/screens/onboard_reminder_two_screen.dart';
import 'package:breast_onco/screens/onboard_review_order_one_screen.dart';
import 'package:breast_onco/screens/onboard_review_order_two_screen.dart';
import 'package:breast_onco/screens/onboard_state_setup_one_screen.dart';
import 'package:breast_onco/screens/onboard_management_six_screen.dart';
import 'package:breast_onco/screens/onboard_management_one_screen.dart';
import 'package:breast_onco/screens/onboard_license_setup_two_screen.dart';
import 'package:breast_onco/screens/onboard_license_setup_one_screen.dart';
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
      OnBoardStateSetupOneScreen.routeName: (context) =>
          const OnBoardStateSetupOneScreen(),
      OnBoardLicenseSetupOneScreen.routeName: (context) =>
          const OnBoardLicenseSetupOneScreen(),
      OnBoardLicenseSetupTwoScreen.routeName: (context) =>
          const OnBoardLicenseSetupTwoScreen(),
      OnBoardLicenseSetupThreeScreen.routeName: (context) =>
          const OnBoardLicenseSetupThreeScreen(),
      OnBoardLicenseSetupFourScreen.routeName: (context) =>
          const OnBoardLicenseSetupFourScreen(),
      OnBoardLicenseSetupFiveScreen.routeName: (context) =>
          const OnBoardLicenseSetupFiveScreen(),
      OnBoardManagementOneScreen.routeName: (context) =>
          const OnBoardManagementOneScreen(),
      OnBoardManagementTwoScreen.routeName: (context) =>
          const OnBoardManagementTwoScreen(),
      OnBoardManagementThreeScreen.routeName: (context) =>
          const OnBoardManagementThreeScreen(),
      OnBoardManagementFourScreen.routeName: (context) =>
          const OnBoardManagementFourScreen(),
      OnBoardManagementFiveScreen.routeName: (context) =>
          const OnBoardManagementFiveScreen(),
      OnBoardManagementSixScreen.routeName: (context) =>
          const OnBoardManagementSixScreen(),
      OnBoardGoalSetupOneScreen.routeName: (context) =>
          const OnBoardGoalSetupOneScreen(),
      OnBoardGoalSetupTwoScreen.routeName: (context) =>
          const OnBoardGoalSetupTwoScreen(),
      OnBoardGoalSetupThreeScreen.routeName: (context) =>
          const OnBoardGoalSetupThreeScreen(),
      OnBoardGoalSetupFourScreen.routeName: (context) =>
          const OnBoardGoalSetupFourScreen(),
      OnBoardGoalSetupFiveScreen.routeName: (context) =>
          const OnBoardGoalSetupFiveScreen(),
      OnBoardGoalSetupSixScreen.routeName: (context) =>
          const OnBoardGoalSetupSixScreen(),
      OnBoardGoalSetupSevenScreen.routeName: (context) =>
          const OnBoardGoalSetupSevenScreen(),
      OnBoardGoalSetupEightScreen.routeName: (context) =>
          const OnBoardGoalSetupEightScreen(),
      OnBoardGoalSetupNineScreen.routeName: (context) =>
          const OnBoardGoalSetupNineScreen(),
      OnBoardGoalSetupTenScreen.routeName: (context) =>
          const OnBoardGoalSetupTenScreen(),
      OnBoardReminderOneScreen.routeName: (context) =>
          const OnBoardReminderOneScreen(),
      OnBoardReminderTwoScreen.routeName: (context) =>
          const OnBoardReminderTwoScreen(),
      OnBoardReminderThreeScreen.routeName: (context) =>
          const OnBoardReminderThreeScreen(),
      OnBoardReminderFourScreen.routeName: (context) =>
          const OnBoardReminderFourScreen(),
      OnBoardReminderFiveScreen.routeName: (context) =>
          const OnBoardReminderFiveScreen(),
      OnBoardReminderSixScreen.routeName: (context) =>
          const OnBoardReminderSixScreen(),
      OnBoardReminderSevenScreen.routeName: (context) =>
          const OnBoardReminderSevenScreen(),
      OnboardReviewOrderOneScreen.routeName: (context) =>
          const OnboardReviewOrderOneScreen(),
      OnboardReviewOrderTwoScreen.routeName: (context) =>
          const OnboardReviewOrderTwoScreen(),
      OnboardPaymentOneScreen.routeName: (context) =>
          const OnboardPaymentOneScreen(),
      OnBoardPlanOneScreen.routeName: (context) => const OnBoardPlanOneScreen(),
      OnboardPromoOneScreen.routeName: (context) =>
          const OnboardPromoOneScreen(),
      TabsScreen.routeName: (context) => const TabsScreen(),
      SignInScreen.routeName: (context) => const SignInScreen(),
      SignUpScreen.routeName: (context) => const SignUpScreen(),
      SignUpEmailScreen.routeName: (context) => const SignUpEmailScreen(),
      SignUpFullNameScreen.routeName: (context) => const SignUpFullNameScreen(),
      SignUpMobileScreen.routeName: (context) => const SignUpMobileScreen(),
      SignUpPasswordScreen.routeName: (context) => const SignUpPasswordScreen(),
      SignUpVerifyPasswordScreen.routeName: (context) =>
          const SignUpVerifyPasswordScreen(),
      MultiFactorAuthenticationScreen.routeName: (context) =>
          const MultiFactorAuthenticationScreen(),
      OtpVerificationScreen.routeName: (context) =>
          const OtpVerificationScreen(),
      AlternateVerificationScreen.routeName: (context) =>
          const AlternateVerificationScreen(),
      DashScreen.routeName: (context) => const DashScreen(),
      GoalsScreen.routeName: (context) => const GoalsScreen(),
      CoursesScreen.routeName: (context) => const CoursesScreen(),
      CoursesFiltersScreen.routeName: (context) => const CoursesFiltersScreen(),
      CourseDetailScreen.routeName: (context) => const CourseDetailScreen(),
      SupportScreen.routeName: (context) => const SupportScreen(),
      TechChatSupportScreen.routeName: (context) =>
          const TechChatSupportScreen(),
      AccountScreen.routeName: (context) => const AccountScreen(),
      GoalManagerOneScreen.routeName: (context) => const GoalManagerOneScreen(),
      GoalManagerTwoScreen.routeName: (context) => const GoalManagerTwoScreen(),
      GoalManagerThreeScreen.routeName: (context) =>
          const GoalManagerThreeScreen(),
      QuestionAndAnswerScreen.routeName: (context) =>
          const QuestionAndAnswerScreen(),

          EditPatientDetailsScreen.routeName: (context) =>
          const EditPatientDetailsScreen(),
    };
  }
}
