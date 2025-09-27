import 'package:e_commerce02/utils/constants/all_sizes.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class LogInHeader extends StatelessWidget {
  const LogInHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Log in Sreen Title
                Text(
                  OnTexts.loginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                SizedBox(height: AllSizes.sm),
                Text(
                  OnTexts.loginSubTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            );
  }
}