import 'package:e_commerce02/core/constants/all_sizes.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogInHeader extends ConsumerWidget {
  const LogInHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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