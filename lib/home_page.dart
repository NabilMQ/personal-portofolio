import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_portofolio/components/body/body.dart';
import 'package:personal_portofolio/components/header/header.dart';
import 'package:personal_portofolio/constants/global.dart';
import 'package:personal_portofolio/constants/section.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  List <GlobalKey <State<StatefulWidget>>> websiteSection = [
    WebsiteSection.homeSection,
    WebsiteSection.experienceSection,
    WebsiteSection.projectsSection,
    WebsiteSection.contactSection,
  ];

  List <IconData> headerIcon = [
    Icons.home,
    Icons.work,
    Icons.assignment,
    Icons.contacts,
  ];

  List <String> headerText = [
    "Home",
    "Experience",
    "Projects",
    "Contact",
  ];

  @override
  void initState() {
    Global.isIndonesianLanguage.value = PlatformDispatcher.instance.locale.toString() == "id";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(
          MediaQuery.of(context).size.width,
          54,
        ),
        child: Header(),
      ),
      backgroundColor: Theme.of(context).colorScheme.surfaceContainerLow,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          controller: Global.globalScrollController,
          child: Body(),
        ),
      ),

      floatingActionButton: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 768) {
            return PopupMenuButton(
              elevation: 4,
              offset: Offset(0, -210),
              popUpAnimationStyle: AnimationStyle(
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 0)
              ),
              icon: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerLow,
                  border: Border.all(
                    color:Theme.of(context).colorScheme.inverseSurface,
                  ),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: Offset(0, 2),
                      color: Theme.of(context).colorScheme.inverseSurface.withValues(
                        alpha: 0.5
                      ),
                    )
                  ]
                ),
                child: Icon(
                  Icons.list,
                ),
              ),
              color: Theme.of(context).colorScheme.surfaceContainerLow,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color:Theme.of(context).colorScheme.inverseSurface,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              itemBuilder: (context) {
                return List.generate(headerText.length, (index) {
                  return PopupMenuItem(
                    onTap: () {
                      Scrollable.ensureVisible(
                        websiteSection.elementAt(index).currentContext!,
                        duration: Duration(seconds: 1),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        spacing: 8,
                        children: [
                          Icon(
                            headerIcon.elementAt(index)
                          ),
                          Text(
                            headerText.elementAt(index),
                            style: Theme.of(context).textTheme.titleSmall
                          ),
                        ],
                      ),
                    ),
                  );
                });
              },
            );
          }

          return SizedBox.shrink();
        },
      ),
    );
  }
}