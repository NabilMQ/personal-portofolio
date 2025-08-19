import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/global.dart';
import 'package:personal_portofolio/constants/section.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  List <String> headerText = [
    "Home",
    "Experience",
    "Projects",
    "Contact",
  ];

  List <ValueNotifier <bool>> headerTextHovered = [
    ValueNotifier <bool> (false),
    ValueNotifier <bool> (false),
    ValueNotifier <bool> (false),
    ValueNotifier <bool> (false),
  ];

  List <GlobalKey <State<StatefulWidget>>> websiteSection = [
    WebsiteSection.homeSection,
    WebsiteSection.experienceSection,
    WebsiteSection.projectsSection,
    WebsiteSection.contactSection,
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1024) {
          return SizedBox(
            height: 54,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ValueListenableBuilder(
                    valueListenable: Global.showHeaderBetter,
                    builder: (context, showHeaderBetterValue, child) {
                      return AnimatedContainer(
                        duration: Duration(
                          milliseconds: 250
                        ),
                        curve: Curves.easeInOut,
                        height: 54,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerLow,
                          border: Border(
                            bottom: showHeaderBetterValue
                              ? BorderSide(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.inverseSurface,
                                )
                              : BorderSide.none,
                          ),
                        ),
                      );
                    }
                  ),
                ),
                
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            spacing: 24,
                            children: List.generate(headerText.length, (index) {
                              return MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onHover: (event) {
                                  headerTextHovered.elementAt(index).value = true;
                                },
                                onExit: (event) {
                                  headerTextHovered.elementAt(index).value = false;
                                },
                                child: ValueListenableBuilder(
                                  valueListenable: headerTextHovered.elementAt(index),
                                  builder: (context, headerTextHoveredValue, child) {
                                    return GestureDetector(
                                      onTap: () {
                                        Scrollable.ensureVisible(
                                          websiteSection.elementAt(index).currentContext!,
                                          duration: Duration(seconds: 1),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      },
                                      child: AnimatedDefaultTextStyle(
                                        duration: Duration(milliseconds: 0),
                                        style: Theme.of(context).textTheme.titleSmall!.apply(
                                          decoration: headerTextHoveredValue
                                            ? TextDecoration.underline
                                            : TextDecoration.none,
                                        ),
                                        child: Text(
                                          headerText.elementAt(index),
                                        ),
                                      ),
                                    );
                                  }
                                ),
                              );
                            }),
                          ),
                        ),
                    
                        // SizedBox(
                        //   child: Row(
                        //     spacing: 12,
                        //     children: [
                        //       Text(
                        //         "EN",
                        //         style: Theme.of(context).textTheme.titleSmall,
                        //       ),
                    
                        //       MouseRegion(
                        //         cursor: SystemMouseCursors.click,
                        //         child: ValueListenableBuilder(
                        //           valueListenable: Global.isIndonesianLanguage,
                        //           builder: (context, isIndonesianLanguageValue, child) {
                        //             return CustomSwitch(
                        //               value: isIndonesianLanguageValue,
                        //               onChanged: () {
                        //                 Global.isIndonesianLanguage.value = !isIndonesianLanguageValue;
                        //               },
                        //             );
                        //           }
                        //         ),
                        //       ),
                    
                        //       Text(
                        //         "IN",
                        //         style: Theme.of(context).textTheme.titleSmall,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          );
        }

        if (constraints.maxWidth >= 768) {
          return SizedBox(
            height: 54,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Positioned.fill(
                  child: ValueListenableBuilder(
                    valueListenable: Global.showHeaderBetter,
                    builder: (context, showHeaderBetterValue, child) {
                      return AnimatedContainer(
                        duration: Duration(
                          milliseconds: 250
                        ),
                        curve: Curves.easeInOut,
                        height: 54,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surfaceContainerLow,
                          border: Border(
                            bottom: showHeaderBetterValue
                              ? BorderSide(
                                  width: 1,
                                  color: Theme.of(context).colorScheme.inverseSurface,
                                )
                              : BorderSide.none,
                          ),
                        ),
                      );
                    }
                  ),
                ),
                
                Positioned.fill(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 24,
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 24,
                            children: List.generate(headerText.length, (index) {
                              return MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onHover: (event) {
                                  headerTextHovered.elementAt(index).value = true;
                                },
                                onExit: (event) {
                                  headerTextHovered.elementAt(index).value = false;
                                },
                                child: ValueListenableBuilder(
                                  valueListenable: headerTextHovered.elementAt(index),
                                  builder: (context, headerTextHoveredValue, child) {
                                    return GestureDetector(
                                      onTap: () {
                                        Scrollable.ensureVisible(
                                          websiteSection.elementAt(index).currentContext!,
                                          duration: Duration(seconds: 1),
                                          curve: Curves.fastOutSlowIn,
                                        );
                                      },
                                      child: AnimatedDefaultTextStyle(
                                        duration: Duration(milliseconds: 0),
                                        style: Theme.of(context).textTheme.titleSmall!.apply(
                                          decoration: headerTextHoveredValue
                                            ? TextDecoration.underline
                                            : TextDecoration.none,
                                        ),
                                        child: Text(
                                          headerText.elementAt(index),
                                        ),
                                      ),
                                    );
                                  }
                                ),
                              );
                            }),
                          ),
                        ),
                    
                        // SizedBox(
                        //   child: Row(
                        //     spacing: 12,
                        //     children: [
                        //       Text(
                        //         "EN",
                        //         style: Theme.of(context).textTheme.titleSmall,
                        //       ),
                    
                        //       MouseRegion(
                        //         cursor: SystemMouseCursors.click,
                        //         child: ValueListenableBuilder(
                        //           valueListenable: Global.isIndonesianLanguage,
                        //           builder: (context, isIndonesianLanguageValue, child) {
                        //             return CustomSwitch(
                        //               value: isIndonesianLanguageValue,
                        //               onChanged: () {
                        //                 Global.isIndonesianLanguage.value = !isIndonesianLanguageValue;
                        //               },
                        //             );
                        //           }
                        //         ),
                        //       ),
                    
                        //       Text(
                        //         "IN",
                        //         style: Theme.of(context).textTheme.titleSmall,
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          );
        }

        return SizedBox(
          height: 54,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned.fill(
                child: ValueListenableBuilder(
                  valueListenable: Global.showHeaderBetter,
                  builder: (context, showHeaderBetterValue, child) {
                    return AnimatedContainer(
                      duration: Duration(
                        milliseconds: 250
                      ),
                      curve: Curves.easeInOut,
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceContainerLow,
                        border: Border(
                          bottom: showHeaderBetterValue
                            ? BorderSide(
                                width: 1,
                                color: Theme.of(context).colorScheme.inverseSurface,
                              )
                            : BorderSide.none,
                        ),
                      ),
                    );
                  }
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 8,
                  horizontal: 24,
                ),
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    "NabilMQ | Personal Portofolio",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}