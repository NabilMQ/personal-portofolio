import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_portofolio/components/body/body.dart';
import 'package:personal_portofolio/components/header/header.dart';
import 'package:personal_portofolio/constants/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

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
      )
    );
  }
}