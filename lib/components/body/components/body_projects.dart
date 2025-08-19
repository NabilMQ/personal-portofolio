import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/images.dart';
import 'package:personal_portofolio/constants/section.dart';
import 'package:personal_portofolio/widgets/base_components/custom_header_with_line.dart';
import 'package:personal_portofolio/widgets/specific_components/project.dart';

class BodyProjects extends StatefulWidget {
  const BodyProjects({super.key});

  @override
  State<BodyProjects> createState() => _BodyProjectsState();
}

class _BodyProjectsState extends State<BodyProjects> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          key: WebsiteSection.projectsSection,
          child: Column(
            spacing: 24,
            children: [
              CustomHeaderWithLine(textString: "Projects"),
        
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth >= 768
                    ? max(72, (constraints.maxWidth - 1280) / 2)
                    : 16,
                ),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  runAlignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 64,
                  runSpacing: 32,
                  children: [
                    Project(
                      projectImagePath: ImagesString.sirene,
                      projectName: "SiRene",
                      projectDescription: "An application where user can use it as an All-In-One Emergency App, to call Police, Ambulance, and Firefighter. Successfully become the Global Top 100 Finalist in GDSC Solution Challenge 2024",
                      projectTechStackLoopDuration: Duration(seconds: 5),
                      projectTechStackImages: [
                        ImagesString.flutter,
                        ImagesString.firebase,
                      ],
                    ),
                    Project(
                      projectImagePath: ImagesString.personalPortofolio,
                      projectName: "Personal Portofolio",
                      projectDescription: "My Own Website Portofolio",
                      projectTechStackLoopDuration: Duration(seconds: 5),
                      projectTechStackImages: [
                        ImagesString.flutter,
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}