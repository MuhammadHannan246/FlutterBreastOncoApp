import 'package:breast_onco/constants/repository.dart';
import 'package:breast_onco/themes/colors.dart';
import 'package:breast_onco/widgets/profile_options.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);
  static const routeName = '/account';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'User Account',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: kSecondarySwatchColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 16.0),
              // Statically display user name
              Text(
                'Muhammad Hannan',
                style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: kSecondarySwatchColor,

                ),
              ),
              const SizedBox(height: 8.0),
              // Statically display user email
              Text(
                 'hannan@gmail.com',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kSecondarySwatchColor,
                      
                ),
              ),
              const SizedBox(height: 16.0),
              ProfileOptions(
                title: 'Logout',
                icon: Icons.logout,
                onTap: () {
                  Repository.logout(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
