import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/global.dart';
import 'package:personal_portofolio/constants/images.dart';
import 'package:personal_portofolio/constants/section.dart';
import 'dart:math';

class BodyBanner extends StatefulWidget {
  const BodyBanner({super.key});

  @override
  State<BodyBanner> createState() => _BodyBannerState();
}

class _BodyBannerState extends State<BodyBanner> with SingleTickerProviderStateMixin {

  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Padding(
          key: WebsiteSection.homeSection,
          padding: EdgeInsets.only(
            top: 24,
            left: constraints.maxWidth >= 768
              ? max(24, (constraints.maxWidth - 1280) / 2)
              : 16,
            right: constraints.maxWidth >= 768
              ? max(24, (constraints.maxWidth - 1280) / 2)
              : 16,
          ),
          child: Builder(
            builder: (context) {
              if (constraints.maxWidth >= 1024) {
                return Row(
                  spacing: 64,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      onEnter: (event) {
                        _controller.repeat();
                      },
                      onExit: (event) {
                        _controller.stop();
                      },
                      child: SizedBox.square(
                        dimension: 300,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            RotationTransition(
                              turns: Tween(
                                begin: 0.0,
                                end: 1.0,
                              ).animate(_controller),
                              child: Container(
                                height: 280,
                                width: 280,
                                margin: EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.surfaceDim,
                                ),
                              ),
                            ),
                      
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Global.roundedBorder),
                              child: SizedBox.square(
                                dimension: 280,
                                child: Image.asset(
                                  ImagesString.me,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4,
                      children: [
                        Text(
                          "Hello!",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text(
                          "I’m Nabil Mutawakkil Qisthi",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                
                        SizedBox(height: 8),
                
                        Text(
                          "Web and Mobile Developer",
                          style: Theme.of(context).textTheme.displaySmall!.apply(
                            fontWeightDelta: 3,
                          ),
                        ),
                      ],
                    )
                  ],
                );
              }
        
              if (constraints.maxWidth >= 768) {
                return Column(
                  spacing: 32,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MouseRegion(
                      onEnter: (event) {
                        _controller.repeat();
                      },
                      onExit: (event) {
                        _controller.stop();
                      },
                      child: SizedBox.square(
                        dimension: 300,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            RotationTransition(
                              turns: Tween(
                                begin: 0.0,
                                end: 1.0,
                              ).animate(_controller),
                              child: Container(
                                height: 280,
                                width: 280,
                                margin: EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.surfaceDim,
                                ),
                              ),
                            ),
                      
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Global.roundedBorder),
                              child: SizedBox.square(
                                dimension: 280,
                                child: Image.asset(
                                  ImagesString.me,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  
                    SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 4,
                        children: [
                          Text(
                            "Hello!",
                            style: Theme.of(context).textTheme.headlineSmall,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "I’m Nabil Mutawakkil Qisthi",
                            style: Theme.of(context).textTheme.displaySmall,
                            textAlign: TextAlign.center,
                          ),
                                  
                          SizedBox(height: 8),
                                  
                          Text(
                            "Web and Mobile Developer",
                            style: Theme.of(context).textTheme.displaySmall!.apply(
                              fontWeightDelta: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    )
                  ],
                );
              }
        
              return Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MouseRegion(
                    onEnter: (event) {
                      _controller.repeat();
                    },
                    onExit: (event) {
                      _controller.stop();
                    },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: SizedBox.square(
                        dimension: 300,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            RotationTransition(
                              turns: Tween(
                                begin: 0.0,
                                end: 1.0,
                              ).animate(_controller),
                              child: Container(
                                height: 280,
                                width: 280,
                                margin: EdgeInsets.only(
                                  top: 16,
                                  left: 16,
                                ),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Theme.of(context).colorScheme.surfaceDim,
                                ),
                              ),
                            ),
                      
                            ClipRRect(
                              borderRadius: BorderRadius.circular(Global.roundedBorder),
                              child: SizedBox.square(
                                dimension: 280,
                                child: Image.asset(
                                  ImagesString.me,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                
                  SizedBox(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 4,
                        children: [
                          Text(
                            "Hello!",
                            style: Theme.of(context).textTheme.titleLarge,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "I’m Nabil Mutawakkil Qisthi",
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.center,
                          ),
                                  
                          SizedBox(height: 8),
                                  
                          Text(
                            "Web and Mobile Developer",
                            style: Theme.of(context).textTheme.headlineMedium!.apply(
                              fontWeightDelta: 3,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              );
            }
          ),
        );
      }
    );
  }
}