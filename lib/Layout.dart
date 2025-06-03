import 'package:flutter/cupertino.dart';

import 'widgets/index.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    HeroWidget(),
                    ExperienceWidget(),
                    EducationWidget(),
                    ProjectWidget(),
                  ],
                ),
                const FooterWidget(),
              ],
            ),
          ),
        );
      },
    );
  }
}
