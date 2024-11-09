import 'package:e_commerce/common/widgets/login_signup/form_divider.dart';
import 'package:e_commerce/common/widgets/login_signup/social_button.dart';
import 'package:e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:e_commerce/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body:  SingleChildScrollView(
        child:  Padding(
          padding: const EdgeInsets.all( TSizes.defaultSpace),
          child: Column(
          
            children: [
              //title
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium
              ),
              //space
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              // form
              const signupFormWidget(),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: ()=>Get.to(()=>const VerifyEmailScreen()), child: const Text(
                          TTexts.createAccount,
                        )),
                      ),

                       //space between
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),                      

                      TFormDivider(dark: dark),
                      
                      //space between
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      const TSocialButtons(),

                      //space between
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),   
            ],
          ),
        ),
      ),
    );
  }
}

