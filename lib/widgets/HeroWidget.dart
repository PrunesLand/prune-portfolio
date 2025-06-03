import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Profile picture
          CircleAvatar(
            radius: 60,
            backgroundImage: const AssetImage('assets/placeholder.jpg'),
            backgroundColor: Colors.cyan[100],
          ),
          const SizedBox(height: 20),
          // Name/title
          Text(
            'Pranaya Anargya',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.cyan[800],
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Flutter Developer',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              color: Colors.cyan[400],
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 18),
          // Social links
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _socialIcon(
                EvaIcons.linkedin,
                Colors.cyan[700]!,
                'https://linkedin.com',
              ),
              const SizedBox(width: 24),
              _socialIcon(EvaIcons.github, Colors.black, 'https://github.com'),
            ],
          ),
          const SizedBox(height: 24),
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Text(
              'I am a passionate Flutter developer with a keen interest in building beautiful, responsive, and efficient mobile applications. My goal is to create impactful software solutions that enhance user experiences.',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.grey[800],
                fontSize: 17,
                height: 1.6,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _socialIcon(IconData icon, Color color, String url) {
    return InkWell(
      borderRadius: BorderRadius.circular(30),
      onTap: () {
        // TODO: Implement launch URL
      },
      child: Ink(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
          color: color.withOpacity(0.08),
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: color, size: 28),
      ),
    );
  }
}
