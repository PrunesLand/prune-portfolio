import 'package:flutter/material.dart';

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

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
            // Badge
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.cyan[100],
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Icon(Icons.school, size: 26, color: Colors.cyan),
            ),
            const SizedBox(width: 24),
            // Education details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'University of Example',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'B.Sc. in Computer Science • 2018 - 2022',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyan[700],
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Focused on mobile and web application development. Built multiple projects using Flutter, Firebase, and REST APIs.',
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
