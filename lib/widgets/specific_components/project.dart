import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/global.dart';
import 'package:personal_portofolio/widgets/base_components/custom_loop_scroll.dart';

class Project extends StatefulWidget {
  const Project({
    super.key,
    required this.projectImagePath,
    required this.projectName,
    required this.projectDescription,
    required this.projectTechStackImages,
    required this.projectTechStackLoopDuration,
  });

  final String projectImagePath;
  final String projectName;
  final String projectDescription;
  final List <String> projectTechStackImages;
  final Duration projectTechStackLoopDuration;

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceContainerLow,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Theme.of(context).colorScheme.inverseSurface,
        ),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                )
              ),
              child: Image.asset(
                widget.projectImagePath,
                alignment: Alignment.topCenter,
              ),
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 12,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      spacing: 8,
                      children: [
                        Text(
                          widget.projectName,
                          style: Theme.of(context).textTheme.headlineSmall,
                          textAlign: TextAlign.center,
                        ),
              
                        Expanded(
                          child: SingleChildScrollView(
                            child: Text(
                              widget.projectDescription,
                              style: Theme.of(context).textTheme.bodySmall,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              
                  CustomLoopScroll(
                    direction: Axis.horizontal,
                    // animationDuration: widget.projectTechStackLoopDuration,
                    pauseDuration: Duration(seconds: 1),
                    curveAnimation: Curves.linear,
                    childrenCounts: 1,
                    spacing: 12,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: 12,
                        children: List.generate(widget.projectTechStackImages.length, (index) {
                          return Container(
                            width: 40,
                            height: 40,
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surfaceContainerLow,
                              border: Border.all(
                                color: Theme.of(context).colorScheme.inverseSurface,
                              ),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 0,
                                  blurRadius: 0,
                                  offset: Offset(4, 4),
                                  color: Theme.of(context).colorScheme.inverseSurface,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(Global.roundedBorder),
                              child: Image.asset(
                                widget.projectTechStackImages.elementAt(index),
                              ),
                            ),
                          );
                        })
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}