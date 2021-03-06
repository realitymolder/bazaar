import 'package:flutter/material.dart';

class HeadlineLarge extends StatelessWidget {
  const HeadlineLarge({Key? key, required this.data}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Text(
      data,
      style: TextStyle(
        fontSize: theme.textTheme.headlineLarge!.fontSize,
        fontWeight: theme.textTheme.headlineLarge!.fontWeight,
        letterSpacing: theme.textTheme.headlineLarge!.letterSpacing,
        height: theme.textTheme.headlineLarge!.height,
        color: theme.textTheme.headlineLarge!.color,
      ),
    );
  }
}
