import 'package:flutter/material.dart';

class ProjectCardWidget extends StatefulWidget {
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
  State<ProjectCardWidget> createState() => _ProjectCardWidgetState();
}

class _ProjectCardWidgetState extends State<ProjectCardWidget> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 600;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(_hovering ? 0.97 : 0.85),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.cyan.withOpacity(_hovering ? 0.16 : 0.07),
              blurRadius: _hovering ? 24 : 12,
              offset: const Offset(0, 8),
            ),
          ],
          border: Border.all(
            color: Colors.cyan.withOpacity(_hovering ? 0.18 : 0.10),
          ),
        ),
        margin: const EdgeInsets.symmetric(vertical: 14, horizontal: 0),
        padding: const EdgeInsets.all(18),
        child:
            isMobile
                ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Text(
                        widget.title,
                        style: Theme.of(
                          context,
                        ).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    const SizedBox(height: 8),
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Text(
                        widget.description,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontSize: 15),
                        softWrap: true,
                        overflow: TextOverflow.visible,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            // TODO: Link to GitHub
                          },
                          icon: const Icon(Icons.code),
                          label: const Text('GitHub'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.cyan,
                            foregroundColor: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 12),
                        if (widget.liveDemoUrl != null)
                          OutlinedButton.icon(
                            onPressed: () {
                              // TODO: Link to Live Demo
                            },
                            icon: const Icon(Icons.open_in_new),
                            label: const Text('Live Demo'),
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.cyan,
                              side: BorderSide(color: Colors.cyan),
                            ),
                          ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(
                          maxWidth: 320,
                          maxHeight: 160,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            widget.imagePath,
                            width: double.infinity,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Left side: Image
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 120,
                        maxHeight: 90,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          widget.imagePath,
                          width: 100,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Right side: Text and buttons
                    Expanded(
                      child: ConstrainedBox(
                        constraints: const BoxConstraints(maxWidth: 350),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.title,
                              style: Theme.of(
                                context,
                              ).textTheme.titleMedium?.copyWith(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              widget.description,
                              style: Theme.of(
                                context,
                              ).textTheme.bodyMedium?.copyWith(fontSize: 15),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            const SizedBox(height: 12),
                            Row(
                              children: [
                                ElevatedButton.icon(
                                  onPressed: () {
                                    // TODO: Link to GitHub
                                  },
                                  icon: const Icon(Icons.code),
                                  label: const Text('GitHub'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.cyan,
                                    foregroundColor: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 12),
                                if (widget.liveDemoUrl != null)
                                  OutlinedButton.icon(
                                    onPressed: () {
                                      // TODO: Link to Live Demo
                                    },
                                    icon: const Icon(Icons.open_in_new),
                                    label: const Text('Live Demo'),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: Colors.cyan,
                                      side: BorderSide(color: Colors.cyan),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
      ),
    );
  }
}
