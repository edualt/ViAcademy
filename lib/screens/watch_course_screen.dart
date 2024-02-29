import 'package:academy/widgets/home_appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WatchCourseScreen extends StatefulWidget {
  const WatchCourseScreen({super.key});

  @override
  State<WatchCourseScreen> createState() => _WatchCourseScreenState();
}

class _WatchCourseScreenState extends State<WatchCourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HomeAppBar(
              welcomeText: "Nombre del curso",
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Gray container simulating video player
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Alineación izquierda del texto "Capítulos"
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Capítulos",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // List of chapters
                  ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    itemCount: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Capítulo N",
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .apply(color: Colors.black),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      );
                    },
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: const Color(0xFF4554DE),
                            foregroundColor: const Color(0xFF4554DE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Ant. video",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: const Color(0xFF4554DE),
                            foregroundColor: const Color(0xFF4554DE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Sig. video",
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .apply(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
