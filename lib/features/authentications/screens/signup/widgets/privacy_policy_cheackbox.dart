import 'package:e_commerce02/utils/constants/all_colors.dart';
import 'package:e_commerce02/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class PrivacyPolicyCheckbox extends StatelessWidget {
  const PrivacyPolicyCheckbox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
