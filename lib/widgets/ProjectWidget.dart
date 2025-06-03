import 'package:flutter/material.dart';
import 'package:prunes_portfolio/index.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: const [
            ProjectCardWidget(
              title: 'Portfolio Website',
              description:
                  'A personal website built using Flutter Web showcasing my work, experience, and contact information.',
              imagePath: 'assets/portfolio.png',
              githubUrl: 'https://github.com/yourname/portfolio',
              liveDemoUrl: 'https://yourname.dev',
            ),
            ProjectCardWidget(
              title: 'Weather App',
              description:
                  'A weather forecast app using OpenWeatherMap API with clean UI and geolocation support.',
              imagePath: 'assets/weather_app.png',
              githubUrl: 'https://github.com/yourname/weather_app',
            ),
          ],
        ),
      ),
    );
  }
}
