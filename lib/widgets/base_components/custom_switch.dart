import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function onChanged;

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onChanged();
      },
      child: AnimatedContainer(
        width: 40,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: Theme.of(context).colorScheme.surfaceDim,
        ),
        padding: EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 4,
        ),
        duration: Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        alignment: widget.value
          ? Alignment.centerRight
          : Alignment.centerLeft,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Icon(
            Icons.circle,
            color: Theme.of(context).colorScheme.surfaceContainerLow,
          ),
        ),
      ),
    );
  }
}