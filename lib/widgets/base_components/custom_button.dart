import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    super.key,
    required this.child,
    required this.padding,
    required this.width,
    required this.height,
    required this.onPressed,
  });

  final Widget child;
  final EdgeInsets padding;
  final double width;
  final double height;
  final void Function() onPressed;

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: widget.onPressed,
        child: Container(
          width: widget.width,
          height: widget.height,
          padding: widget.padding,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Theme.of(context).colorScheme.inverseSurface),
              left: BorderSide(color: Theme.of(context).colorScheme.inverseSurface),
              right: BorderSide(
                width: 5,
                color: Theme.of(context).colorScheme.inverseSurface
              ),
              bottom: BorderSide(
                width: 5,
                color: Theme.of(context).colorScheme.inverseSurface
              ),
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: widget.child,
        ),
      ),
    );
  }
}