import 'package:flutter/material.dart';

import 'widgets/index.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Remove the static AppBar
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth < 750 ? double.infinity : 700;
          return CustomScrollView(
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: _NameAppBarDelegate(minExtent: 60, maxExtent: 120),
              ),
              SliverToBoxAdapter(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxWidth),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 24.0,
                        horizontal: 8.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              HeroWidget(),
                              const SizedBox(height: 24),
                              ExperienceWidget(),
                              const SizedBox(height: 24),
                              EducationWidget(),
                              const SizedBox(height: 24),
                              ProjectWidget(),
                            ],
                          ),
                          const SizedBox(height: 32),
                          const FooterWidget(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

// Custom SliverAppBar that only shows the name when scrolled
class _NameAppBarDelegate extends SliverPersistentHeaderDelegate {
  final double minExtent;
  final double maxExtent;

  _NameAppBarDelegate({required this.minExtent, required this.maxExtent});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final showTitle = shrinkOffset > maxExtent * 0.6;
    return AnimatedOpacity(
      opacity: showTitle ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 200),
      child: Material(
        color: Theme.of(context).colorScheme.primary.withOpacity(0.95),
        elevation: showTitle ? 4 : 0,
        child: SafeArea(
          child: Center(
            child: Text(
              'Pranaya Anargya',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 22,
                letterSpacing: 1.1,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(_NameAppBarDelegate oldDelegate) => false;
}
