import 'package:e_commerce02/core/constants/all_colors.dart';
import 'package:e_commerce02/core/constants/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrivacyPolicyCheckbox extends ConsumerWidget {
  const PrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Checkbox(value: true, onChanged: (Value) {}),
        RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.bodyMedium,
        
            children: [
              TextSpan(text: '${OnTexts.iAgreeTo}'),
        
              TextSpan(
                text: '${OnTexts.PrivacyPolicy}',
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                      color: AllColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: AllColors.primary,
                    ),
              ),
              TextSpan(text: '${OnTexts.and}'),
              TextSpan(
                text: '${OnTexts.termsoffuse}',
                style: Theme.of(context).textTheme.bodyMedium!
                    .copyWith(
                      color: AllColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: AllColors.primary,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
