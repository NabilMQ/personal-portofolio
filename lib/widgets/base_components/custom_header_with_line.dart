import 'package:flutter/material.dart';
import 'package:personal_portofolio/constants/global.dart';

class CustomHeaderWithLine extends StatefulWidget {
  const CustomHeaderWithLine({
    super.key,
    required this.textString,
  });

  final String textString;

  @override
  State<CustomHeaderWithLine> createState() => _CustomHeaderWithLineState();
}

class _CustomHeaderWithLineState extends State<CustomHeaderWithLine> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      alignment: Alignment.center,
        child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Center(
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.inverseSurface,
                  borderRadius: BorderRadius.circular(Global.roundedBorder),
                ),
              ),
            ),
          ),
      
          Positioned.fill(
            child: Center(
              child: Container(
                color: Theme.of(context).colorScheme.surfaceContainerLow,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                  ),
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      widget.textString,
                      style: Theme.of(context).textTheme.headlineMedium!.apply(
                        fontWeightDelta: 3,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}