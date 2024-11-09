import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class signupFormWidget extends StatelessWidget {
  const signupFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child:Column(
        children: [
          
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                  expands:false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName, prefixIcon: Icon(Iconsax.user),
                  ),
                                          
                                    ),
                ),
                const SizedBox(
                  width: TSizes.spaceBtwInputFields,
                ),
    
                Expanded(
                  child: TextFormField(
                  expands:false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName, prefixIcon: Icon(Iconsax.user),
                  ),
                                          
                                    ),
                ),
              ]
            ),
    
            //space
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
    
            //user name
            TextFormField(
                  expands:false,
                  decoration: const InputDecoration(
                    labelText: TTexts.username, prefixIcon: Icon(Iconsax.user_edit),
                  ),
                 ),
    
            //space between
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
    
            //email
             TextFormField(
                  expands:false,
                  decoration: const InputDecoration(
                    labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct),
                  ),
                 ),
              
              //space between
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
    
            //Phone Number
             TextFormField(
                  expands:false,
                  decoration: const InputDecoration(
                    labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call),
                  ),
                 ),
    
                 //space between
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
    
            //password
            TextFormField(
              obscureText: true,
                  decoration: const InputDecoration(
                    labelText: TTexts.password, 
                    prefixIcon: Icon(Iconsax.password_check),
                    suffixIcon: Icon(Iconsax.eye_slash)
                  ),
                 ),
    
            //space between
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
        ],
      )
    );
  }
}