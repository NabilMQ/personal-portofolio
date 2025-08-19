import 'dart:async';

import 'package:flutter/material.dart';

class CustomLoopScroll extends StatefulWidget {
  const CustomLoopScroll({
    super.key, 
    required this.child,
    required this.direction,
    // required this.animationDuration,
    required this.pauseDuration,
    required this.curveAnimation,
    required this.spacing,
    required this.childrenCounts,
    // this.shouldGetBackWhenManuallyScrolledOutOfBounds = false,
  });

  final Widget child;
  final Axis direction;
  // final Duration animationDuration;
  final Duration pauseDuration;
  final Curve curveAnimation;
  final double spacing;
  final int childrenCounts;
  // bool shouldGetBackWhenManuallyScrolledOutOfBounds;

  @override
  State<CustomLoopScroll> createState() => _CustomLoopScrollState();
}

class _CustomLoopScrollState extends State<CustomLoopScroll> {
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier <bool> _repeated = ValueNotifier <bool> (true);
  late DragStartDetails _dragStartDetails;

  bool shouldRepeat() {
    // THIS FUNCTION IS CREATED FOR DEBUGGING PURPOSE, YOU CAN FILL THIS FUNCTION WITH SOME DEBUG PRINT OR ANYTHIING ELSE
    return _scrollController.hasClients && _repeated.value;
  }

  // SCROLL FUNCTION, IT WILL SCROLL AUTOMATICALLY FOR ENDLESS AMOUNT OF TIMES, YOU CAN BREAK THIS LOOP BY CHANGING THE _repeated VALUE
  void scroll() async {
    while (shouldRepeat()) {
      // await Future.delayed(widget.pauseDuration);
      _scrollController.jumpTo(
        _scrollController.offset + 1,
        // duration: Duration(milliseconds: 250),
        // curve: widget.curveAnimation
      );
      await Future.delayed(Duration(milliseconds: 50));
    }
  }

  // STOP THE AUTOMATIC SCROLL BY ANIMATING IT TO THE CURRENT POSITION AND BREAKING THE LOOP BY CHANGING THE _repeated VARIABLE
  void stopScroll() {
    _scrollController.animateTo(
      _scrollController.offset,
      duration: Duration.zero,
      curve: Curves.linear,
    );
    _repeated.value = false;
  }

  // SELF EXPLANATORY
  Timer? timerToScrollAgainAfterInterruption;
  Timer? timerToScrollAgainAfterManualScroll;

  // SELF EXPLANATORY
  void scrollAgainAfterInterruption() {
    if (timerToScrollAgainAfterInterruption != null) {
      timerToScrollAgainAfterInterruption!.cancel();
    }
    timerToScrollAgainAfterInterruption = Timer(widget.pauseDuration, () {
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent || _scrollController.position.atEdge) {
        _scrollController.jumpTo(
          0.0,
        );
      }
      _repeated.value = true;
      scroll();
    }); 
  }

  // SELF EXPLANATORY
  void scrollAgainAfterManualScroll() {
    if (timerToScrollAgainAfterManualScroll != null) {
      timerToScrollAgainAfterManualScroll!.cancel();
    }
    timerToScrollAgainAfterManualScroll = Timer(Duration(seconds: 5), () {
      _repeated.value = true;
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent || _scrollController.position.atEdge) {
        _scrollController.jumpTo(
          0.0,
        );
      }
      scroll();
    }); 
  }

  @override
  void initState() {
    // ADD LISTENER, SO THAT IF THE SCROLL REACHED THE MAX LENGTH, IT GOES BACK TO THE INITIAL POSITION
    _scrollController.addListener(() async {
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent && _repeated.value) {
        _repeated.value = false;
        _scrollController.jumpTo(
          0.0,
        );
        await Future.delayed(widget.pauseDuration);
        _repeated.value = true;
        scroll();
      }
    });

    // AFTER INITSTATE (I THINK), SCROLL THE WIDGET
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scroll();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onHorizontalDragDown: (details) {
        stopScroll();
      },
      onHorizontalDragStart: (details) {
        stopScroll();
        _dragStartDetails = details;
      },
      onHorizontalDragUpdate: (details) {
        _repeated.value = false;
        stopScroll();
        _scrollController.position.drag(_dragStartDetails, () async {
        }).update(details);
      },
      onHorizontalDragCancel: () {
        scrollAgainAfterInterruption();
      },
      onHorizontalDragEnd: (details) {
        scrollAgainAfterInterruption();
      },
      onVerticalDragDown: (details) {
        stopScroll();
      },
      onVerticalDragEnd: (details) async {
        scrollAgainAfterInterruption;
      },
      onTapDown: (details) {
        stopScroll();
      },
      onTapUp: (details) async {
        scrollAgainAfterInterruption();
      },
      child: SingleChildScrollView(
        scrollDirection: widget.direction,
        physics: NeverScrollableScrollPhysics(),
        controller: _scrollController,
        child: Builder(
          builder: (context) {
            if (widget.direction == Axis.horizontal) {
              return Row(
                spacing: widget.spacing,
                children: List.generate(widget.childrenCounts, (index) {
                  return widget.child;
                }),
              );
            }
            return Column(
              spacing: widget.spacing,
              children: List.generate(widget.childrenCounts, (index) {
                return widget.child;
              }),
            );
          }
        ),
      ),
    );
  }
}