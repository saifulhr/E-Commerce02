import 'package:e_commerce02/bottom_nav_bar.dart';
import 'package:e_commerce02/common/widgets/button/elevated_button.dart';
import 'package:e_commerce02/features/authentications/screens/forgot_password/forgot_password.dart';
import 'package:e_commerce02/features/authentications/screens/signup/sign_up_screen.dart';
import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class LogInForm extends ConsumerWidget {
  const LogInForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: OnTexts.email,
          ),
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields),
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            suffixIcon: Icon(Iconsax.eye),
            labelText: OnTexts.password,
          ),
        ),
        SizedBox(height: AllSizes.spaceBtwInputFields / 2),
        // Log In Screen Remember me
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Checkbox(value: true, onChanged: (Value) {}),
                Text(OnTexts.rememberme),
              ],
            ),

            //  Log In Screens Forgot Button
            TextButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ForgotPassword()),
              ),
              child: Text(OnTexts.forgotpassord),
            ),
          ],
        ),
        SizedBox(height: AllSizes.spaceBtwSections),

        // Sign In Button
        DiffElevatedButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => BottomNavBar()),
          ),
          child: Text(OnTexts.signin),
        ),
        SizedBox(height: AllSizes.spaceBtwItems / 2),
        // Log In Screens Create Account button
        SizedBox(
          width: double.infinity,
          child: OutlinedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => SignUpScreen()),
            ),
            child: Text(OnTexts.createaccount),
          ),
        ),
      ],
    );
  }
}
