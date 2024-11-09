import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_form.dart';
import 'package:e_commerce/features/authentication/screens/login/widgets/login_header.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      // we are using this cos, if the phone is small, users will be able to scroll
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo title and subtitle
              TLoginHeader(dark: dark),
              // form
            const TLoginForm(),

            //divider
            TFormDivider(dark: dark),
            const SizedBox(
              height: TSizes.spaceBtwItems,
            ),
            // footer

            const TSocialButtons()

            ],
          ),
        ),
      ),
    );
  }
}







