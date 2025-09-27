import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  final String title;

  const FormDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Divider(indent: 60, endIndent: 5, thickness: 0.5),
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const Expanded(
          child: Divider(indent: 5, endIndent: 60, thickness: 0.5),
        ),
      ],
    );
  }
}
