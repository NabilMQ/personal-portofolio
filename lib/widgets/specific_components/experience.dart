import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_portofolio/widgets/base_components/custom_loop_scroll.dart';

class Experience extends StatefulWidget {
  const Experience({
    super.key,
    required this.workDescription,
    required this.companyImagePath,
    required this.companyNameAndRoles,
    required this.workingPeriod,
  });

  final List <String> workDescription;
  final String companyImagePath;
  final String companyNameAndRoles;
  final String workingPeriod;

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 768) {
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: max(72, (constraints.maxWidth - 1280) / 2),
            ),
            child: Column(
              spacing: 24,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 32,
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerLow,
                        border: Border.all(
                          color: Theme.of(context).colorScheme.inverseSurface,
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 0,
                            blurRadius: 0,
                            offset: Offset(4, 4),
                            color: Theme.of(context).colorScheme.inverseSurface,
                          )
                        ]
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          widget.companyImagePath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 12,
                        children: [
                          Row(
                            spacing: 16,
                            children: [
                              Icon(
                                Icons.work_rounded,
                                color: Theme.of(context).colorScheme.inverseSurface,
                              ),
                      
                              Expanded(
                                child: CustomLoopScroll(
                                  direction: Axis.horizontal,
                                  // animationDuration: Duration(seconds: 3),
                                  childrenCounts: 1,
                                  curveAnimation: Curves.linear,
                                  pauseDuration: Duration(seconds: 1),
                                  spacing: 0,
                                  child: Text(
                                    widget.companyNameAndRoles,
                                    style: Theme.of(context).textTheme.titleLarge,
                                  ),
                                ),
                              ),
                            ],
                          ),
                                
                          Row(
                            spacing: 16,
                            children: [
                              Icon(
                                Icons.calendar_today,
                                color: Theme.of(context).colorScheme.inverseSurface,
                              ),
                      
                              Expanded(
                                child: CustomLoopScroll(
                                  direction: Axis.horizontal,
                                  // animationDuration: Duration(seconds: 3),
                                  childrenCounts: 1,
                                  curveAnimation: Curves.linear,
                                  pauseDuration: Duration(seconds: 1),
                                  spacing: 0,
                                  child: Text(
                                    widget.workingPeriod,
                                    style: Theme.of(context).textTheme.titleMedium,
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
          
                SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: List.generate(widget.workDescription.length, (index) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "• ",
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Expanded(
                            child: Text(
                              widget.workDescription.elementAt(index),
                              maxLines: null,
                              style: Theme.of(context).textTheme.labelLarge,
                            ),
                          ),
                        ],
                      );
                    }),
                  ),
                )
              ],
            ),
          );
        }

        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16
          ),
          child: Column(
            spacing: 24,
            children: [
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.inverseSurface,
                  ),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 0,
                      offset: Offset(4, 4),
                      color: Theme.of(context).colorScheme.inverseSurface,
                    )
                  ]
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    widget.companyImagePath,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
          
              SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomLoopScroll(
                      direction: Axis.horizontal,
                      // animationDuration: Duration(seconds: 3),
                      childrenCounts: 1,
                      curveAnimation: Curves.linear,
                      pauseDuration: Duration(seconds: 1),
                      spacing: 0,
                      child: Text(
                        widget.companyNameAndRoles,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                          
                    CustomLoopScroll(
                      direction: Axis.horizontal,
                      // animationDuration: Duration(seconds: 3),
                      childrenCounts: 1,
                      curveAnimation: Curves.linear,
                      pauseDuration: Duration(seconds: 1),
                      spacing: 0,
                      child: Text(
                        widget.workingPeriod,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                    ),
                  ],
                ),
              ),
        
              SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: List.generate(widget.workDescription.length, (index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "• ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        Expanded(
                          child: Text(
                            widget.workDescription.elementAt(index),
                            maxLines: null,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              )
            ],
          ),
        );
      }
    );
  }
}