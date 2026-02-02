import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  final VoidCallback onPressed;
  const RetryButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.error_outline_rounded,
            color: Colors.white,
            size: 50,
          ),
          Text(
            'Retry',
            style: TextStyle(color: Colors.white,fontSize: 20),
          ),
        ],
      ),
    );
  }
}
