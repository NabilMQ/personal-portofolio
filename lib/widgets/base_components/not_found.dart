import 'package:flutter/material.dart';

class NotFound extends StatelessWidget {
  const NotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
      body: SizedBox.expand(
        child: Center(
          child: Text(
            "Page Not Found",
            style: Theme.of(context).textTheme.titleLarge!,
          ),
        ),
      ),
    );
  }
}