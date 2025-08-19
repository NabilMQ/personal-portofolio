import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:personal_portofolio/constants/section.dart';
import 'package:personal_portofolio/widgets/base_components/custom_button.dart';
import 'package:personal_portofolio/widgets/base_components/custom_header_with_line.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyContact extends StatefulWidget {
  const BodyContact({super.key});

  @override
  State<BodyContact> createState() => _BodyContactState();
}

class _BodyContactState extends State<BodyContact> {

  Map <IconData, String> contactList = {
    Icons.email: "nabilmq13@gmail.com",
    FontAwesomeIcons.github: "NabilMQ",
    FontAwesomeIcons.linkedin: "Nabil Mutawakkil Qisthi",
  };

  List <String> goToContact = [
    "mailto:nabilmq13@gmail.com?subject=&body=",
    "https://github.com/NabilMQ",
    "https://www.linkedin.com/in/nabil-mutawakkil-qisthi-191b9729a/",
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          key: WebsiteSection.contactSection,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 24,
            children: [
              CustomHeaderWithLine(textString: "Contact"),
        
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: constraints.maxWidth >= 768
                    ? max(72, (constraints.maxWidth - 1280) / 2)
                    : 16,
                ),
                child: SizedBox(
                  child: Wrap(
                    alignment: WrapAlignment.start,
                    runAlignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 12,
                    runSpacing: 12,
                    children: List.generate(contactList.length, (index) {
                      return MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: CustomButton(
                          width: constraints.maxWidth <= 500
                            ? MediaQuery.of(context).size.width
                            : 230,
                          height: 48,
                          padding: EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 12,
                          ),
                          onPressed: () async {
                            if (
                              !await launchUrl(Uri.parse(goToContact.elementAt(index)))
                              // true
                              ) {
                              if (context.mounted) {
                                toastification.dismissAll();
                                toastification.show(
                                  dismissDirection: DismissDirection.startToEnd,
                                  style: ToastificationStyle.fillColored,
                                  type: ToastificationType.error,
                                  icon: Icon(
                                    Icons.error_outline_rounded
                                  ),
                                  autoCloseDuration: Duration(seconds: 3),
                                  dragToClose: true,
                                  description: Text(
                                    "Could not go to the new page\nPlease try again later",
                                  ),
                                );
                              }
                            }

                            if (goToContact.elementAt(index).contains("nabilmq13@gmail.com")) {
                              try {
                                await Clipboard.setData(ClipboardData(text: "nabilmq13@gmail.com"));
                                toastification.dismissAll();
                                toastification.show(
                                  dismissDirection: DismissDirection.startToEnd,
                                  style: ToastificationStyle.fillColored,
                                  type: ToastificationType.success,
                                  autoCloseDuration: Duration(seconds: 3),
                                  dragToClose: true,
                                  description: Text(
                                    "Email Copied!",
                                  ),
                                );
                              }
                              catch (e) {
                                debugPrint("Faild copying: ${e}");
                              }
                            }
                          },
                          child: Row(
                            spacing: 8,
                            children: [
                              SizedBox.square(
                                dimension: constraints.maxWidth >= 768
                                  ? 40
                                  : 25,
                                child: Icon(
                                  contactList.keys.elementAt(index),
                                )
                              ),
                                          
                              Expanded(
                                child: Align(
                                  alignment: constraints.maxWidth <= 500
                                    ? Alignment.centerLeft
                                    : Alignment.center,
                                  child: FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      contactList.values.elementAt(index),
                                      style: constraints.maxWidth >= 768
                                        ? Theme.of(context).textTheme.titleMedium
                                        : Theme.of(context).textTheme.titleSmall,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      );
                    }),
                  ),
                ),
              ),
            ]
          ),
        );
      }
    );
  }
}