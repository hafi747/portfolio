import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/project/projectinfo.dart';

class ProjectCard extends StatefulWidget {
  final Project project;

  const ProjectCard({super.key, required this.project});

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: AnimatedScale(
        scale: isHovered ? 1.03 : 1.0,
        duration: const Duration(milliseconds: 250),
        child: Material(
          elevation: isHovered ? 16 : 8, // ⭐ REAL SHADOW
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias, // ⭐ IMPORTANT
          child: SizedBox(
            width: 300,
            height: 200,
            child: Stack(
              children: [
                Image.asset(
                  widget.project.image,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                AnimatedOpacity(
                  opacity: isHovered ? 1 : 0,
                  duration: const Duration(milliseconds: 300),
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.project.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          widget.project.description,
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
