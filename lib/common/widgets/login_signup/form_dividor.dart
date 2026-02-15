import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormDivider extends ConsumerWidget {
  final String title;

  const FormDivider({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
