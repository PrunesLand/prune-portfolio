import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      color: Colors.cyan[50],
      child: Column(
        children: [
          Text(
            '© 2023 Pranaya Anargya',
            style: TextStyle(
              fontSize: 15,
              color: Colors.cyan[700],
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Privacy Policy'),
                style: TextButton.styleFrom(foregroundColor: Colors.cyan),
              ),
              const SizedBox(width: 16),
              TextButton(
                onPressed: () {},
                child: const Text('Terms of Service'),
                style: TextButton.styleFrom(foregroundColor: Colors.cyan),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
