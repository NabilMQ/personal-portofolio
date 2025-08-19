import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/images.dart';
import 'package:personal_portofolio/widgets/specific_components/achievement.dart';
import 'package:personal_portofolio/widgets/base_components/custom_header_with_line.dart';

class BodyAchievements extends StatefulWidget {
  const BodyAchievements({super.key});

  @override
  State<BodyAchievements> createState() => _BodyAchievementsState();
}

class _BodyAchievementsState extends State<BodyAchievements> {
  List <String> gdscSolutionChallengeWorkDescription = [
    'Develop "Si Rene" as Mobile Application using Flutter, an application where user can use it as an All-In-One Emergency App',
    'Working in the team as a Hacker and collaborating with other roles to develop',
    'Developed "Si Rene" with Flutter, Firebase, using Cloud Firestore as a database and Firebase ',
    'Successfully developed many features such as In-App Maps with Route and Navigation and In-App Voice Calling',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        spacing: 24,
        children: [
          CustomHeaderWithLine(textString: "Achievements"),

          Achievement(
            competitionImagePath: ImagesString.gdscSolutionChallenge,
            achievementsAndRoles: "Global Top 100 Finalist GDSC Solution Challenge 2024 (Mobile Developer)",
            period: "April 2024",
            workDescription: gdscSolutionChallengeWorkDescription,
          ),
        ],
      ),
    );
  }
}