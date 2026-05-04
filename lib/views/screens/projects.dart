import 'package:flutter/material.dart';
import 'package:portfolio/project/projectcard.dart';
import 'package:portfolio/project/projectdetail.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Projects",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),

          Wrap(
            spacing: 30,
            runSpacing: 30,
            children: projects
                .map((project) => ProjectCard(project: project))
                .toList(),
          ),
        ],
      ),
    );
  }
}
