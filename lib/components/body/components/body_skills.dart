import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/images.dart';
import 'package:personal_portofolio/widgets/base_components/custom_header_with_line.dart';
import 'package:personal_portofolio/widgets/base_components/custom_loop_scroll.dart';

class BodySkills extends StatefulWidget {
  const BodySkills({super.key});

  @override
  State<BodySkills> createState() => _BodySkillsState();
}

class _BodySkillsState extends State<BodySkills> {
  static Map <String, String> skillsDetail = {
    "Flutter": ImagesString.flutter,
    "Nextjs": ImagesString.nextjs,
    "Vue": ImagesString.vue,
    "Laravel": ImagesString.laravel,
    "Typescript": ImagesString.typescript,
    "Tailwind": ImagesString.tailwind,
    "Javascript": ImagesString.javascript,
    "CSS": ImagesString.css,
    "HTML": ImagesString.html,
    "Firebase": ImagesString.firebase,
    "Supabase": ImagesString.supabase,
  };

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          child: Column(
            spacing: 24,
            children: [
              CustomHeaderWithLine(textString: "Skills"),
        
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: CustomLoopScroll(
                  pauseDuration: Duration(seconds: 1),
                  // animationDuration: Duration(seconds: 120),
                  curveAnimation: Curves.linear,
                  direction: Axis.horizontal,
                  childrenCounts: 1,
                  spacing: 12,
                  child: SizedBox(
                    child: Row(
                      spacing: 12,
                      children: List.generate(skillsDetail.length, (index) {
                        return Container(
                          width: constraints.maxWidth >= 768
                            ? 200
                            : 125,
                          height: 48,
                          margin: EdgeInsets.only(
                            right: 16,
                            bottom: 4,
                          ),
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.surfaceContainerLow,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              color: Theme.of(context).colorScheme.inverseSurface,
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(
                                  4,
                                  4,
                                ),
                                blurRadius: 0,
                                spreadRadius: 0,
                                color: Theme.of(context).colorScheme.inverseSurface,
                              ),
                            ],
                          ),
                          child: Row(
                            spacing: 8,
                            children: [
                              SizedBox.square(
                                dimension: constraints.maxWidth >= 768
                                  ? 40
                                  : 25,
                                child: Image.asset(
                                  skillsDetail.values.elementAt(index),
                                  fit: BoxFit.contain,
                                ),
                              ),
                    
                              Expanded(
                                child: Center(
                                  child: Text(
                                    skillsDetail.keys.elementAt(index),
                                    style: constraints.maxWidth >= 768
                                      ? Theme.of(context).textTheme.titleMedium
                                      : Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                      }),
                    ),
                  ),
                )
              ),
            ],
          ),
        );
      }
    );
  }
}