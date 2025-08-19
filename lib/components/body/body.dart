import 'package:flutter/material.dart';
import 'package:personal_portofolio/components/body/components/body_achievements.dart';
import 'package:personal_portofolio/components/body/components/body_banner.dart';
import 'package:personal_portofolio/components/body/components/body_contact.dart';
import 'package:personal_portofolio/components/body/components/body_experience.dart';
import 'package:personal_portofolio/components/body/components/body_projects.dart';
import 'package:personal_portofolio/components/body/components/body_skills.dart';
import 'package:personal_portofolio/components/footer/footer.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 24,
      children: [
        BodyBanner(),
    
        BodySkills(),
    
        BodyExperience(),
    
        BodyAchievements(),
    
        BodyProjects(),
    
        BodyContact(),
    
        Footer(),
      ]
    );
  }
}