import 'package:flutter/material.dart';

class HeadlineSmall extends StatelessWidget {
  const HeadlineSmall({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.headlineSmall!.fontSize,
        fontWeight: theme.textTheme.headlineSmall!.fontWeight,
        letterSpacing: theme.textTheme.headlineSmall!.letterSpacing,
        height: theme.textTheme.headlineSmall!.height,
        color: theme.textTheme.headlineSmall!.color,
      ),
    );
  }
}
