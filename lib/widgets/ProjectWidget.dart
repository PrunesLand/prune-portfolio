import 'package:flutter/material.dart';
import 'package:prunes_portfolio/index.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;
    final projects = const [
      ProjectCardWidget(
        title: 'Portfolio Website',
        description:
            'A personal website built using Flutter Web showcasing my work, experience, and contact information.',
        imagePath: 'assets/portfolio.png',
        githubUrl: 'https://github.com/yourname/portfolio',
      ),
      ProjectCardWidget(
        title: 'Weather App',
        description:
            'A weather forecast app using OpenWeatherMap API with clean UI and geolocation support.',
        imagePath: 'assets/weather_app.png',
        githubUrl: 'https://github.com/yourname/weather_app',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Projects', style: Theme.of(context).textTheme.headlineSmall),
          const Divider(thickness: 1.2),
          isMobile
              ? Column(
                children:
                    projects
                        .map(
                          (p) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: p,
                          ),
                        )
                        .toList(),
              )
              : Wrap(
                spacing: 24,
                runSpacing: 24,
                children:
                    projects
                        .map((p) => SizedBox(width: 320, child: p))
                        .toList(),
              ),
        ],
      ),
    );
  }
}
