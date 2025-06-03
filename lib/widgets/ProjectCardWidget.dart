import 'package:flutter/material.dart';

class ProjectCardWidget extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;
  final String githubUrl;
  final String? liveDemoUrl;

  const ProjectCardWidget({
    super.key,
    required this.title,
    required this.description,
    required this.imagePath,
    required this.githubUrl,
    this.liveDemoUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          // Left side: Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              imagePath,
              width: 160,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),

          // Right side: Text and buttons
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(description, style: const TextStyle(fontSize: 14)),
                const SizedBox(height: 12),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Link to GitHub
                      },
                      child: const Text('GitHub'),
                    ),
                    const SizedBox(width: 12),
                    if (liveDemoUrl != null)
                      OutlinedButton(
                        onPressed: () {
                          // TODO: Link to Live Demo
                        },
                        child: const Text('Live Demo'),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
