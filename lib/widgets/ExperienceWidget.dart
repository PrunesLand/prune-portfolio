import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.7),
          boxShadow: [
            BoxShadow(
              color: Colors.cyan.withOpacity(0.07),
              blurRadius: 18,
              offset: const Offset(0, 8),
            ),
          ],
          border: Border.all(color: Colors.cyan.withOpacity(0.10)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Timeline dot
            Column(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    color: Colors.cyan,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 2,
                  height: 60,
                  color: Colors.cyan.withOpacity(0.2),
                ),
              ],
            ),
            const SizedBox(width: 24),
            // Experience details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Work Place 1',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Flutter Developer • 2022 - Present',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyan[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Worked on cross-platform mobile apps using Flutter. Collaborated with designers and backend engineers to deliver seamless user experiences. Implemented REST API integration, state management, and CI/CD pipelines.',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.black87,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
