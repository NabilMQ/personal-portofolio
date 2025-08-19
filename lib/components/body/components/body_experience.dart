import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/images.dart';
import 'package:personal_portofolio/constants/section.dart';
import 'package:personal_portofolio/widgets/base_components/custom_header_with_line.dart';
import 'package:personal_portofolio/widgets/specific_components/experience.dart';

class BodyExperience extends StatefulWidget {
  const BodyExperience({super.key});

  @override
  State<BodyExperience> createState() => _BodyExperienceState();
}

class _BodyExperienceState extends State<BodyExperience> {

  List <String> crackinCodeWorkDescription = [
    "Developing many application using Flutter as a main Framework",
    "Collaborate with other Developer, such as UI/UX Designer Back End, Project Manager, and other Mobile Developer",
    "Implementing features such as Authentication, In-App Maps with route and navigation, Firebase, Stream",
    "Using Provider and Bloc as State Management",
  ];

  List <String> rotopowerWorkDescription = [
    "Developing Computerized Maintenance Management System (CMMS) to maintenance machine efficiency",
    "Contributing to developing the Landing Page",
    "Using NEXT.js as a main Framework",
    "Working with team, including Project Manager, Back-End Developer, UI/UX Designer, and other Front-End Developer.",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: WebsiteSection.experienceSection,
      child: Column(
        spacing: 24,
        children: [
          CustomHeaderWithLine(textString: "Experience"),
    
          Experience(
            companyImagePath: ImagesString.crackinCode,
            companyNameAndRoles: "Crackin'Code (Mobile Developer)",
            workingPeriod: "February 2025 - July 2025 (Internship)",
            workDescription: crackinCodeWorkDescription,
          ),
          
          SizedBox(height: 8),
    
          Experience(
            companyImagePath: ImagesString.rotopower,
            companyNameAndRoles: "Rotopower DT (Front End Web Developer)",
            workingPeriod: "August 2024 - February 2025 (Part-time)",
            workDescription: crackinCodeWorkDescription,
          )
        ],
      ),
    );
  }
}