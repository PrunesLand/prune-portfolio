import 'package:flutter/material.dart';

class ExperienceWidget extends StatelessWidget {
  const ExperienceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Left side: Text content
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Work Place 1',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eu metus arcu. Cras vestibulum massa eu turpis mollis, eu convallis libero cursus. Aenean id congue lorem. Integer eget congue tortor. Aenean id felis ac urna ullamcorper tristique vel sit amet ex. Integer facilisis congue nisl euismod volutpat. Phasellus bibendum erat non nisl finibus aliquam. Aenean placerat, urna vitae hendrerit semper, est dui facilisis odio, sit amet consectetur mi elit nec felis. Phasellus sagittis tortor at velit blandit ultricies. Nulla sapien felis, dictum id venenatis vitae, fermentum quis dolor.',
                    softWrap: true,
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),

            const SizedBox(width: 16),

            // Right side: Image placeholder box
            Expanded(
              flex: 2,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    'Image Here',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
