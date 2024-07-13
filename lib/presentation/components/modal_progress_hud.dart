import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ModalProgressHUD extends StatelessWidget {
  final bool inAsyncCall;
  final double opacity;
  final Color color;
  final Widget progressIndicator;
  final Offset? offset;
  final bool dismissible;
  final Widget child;
  bool isDarkMode =
      SchedulerBinding.instance.window.platformBrightness == Brightness.dark;

  ModalProgressHUD({
    super.key,
    required this.inAsyncCall,
    this.opacity = 0.05,
    this.color = Colors.grey,
    this.progressIndicator = const CircularProgressIndicator.adaptive(),
    this.offset,
    this.dismissible = false,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetList = [];
    widgetList.add(child);
    if (inAsyncCall) {
      Widget layOutProgressIndicator;
      if (offset == null) {
        layOutProgressIndicator = Center(child: progressIndicator);
      } else {
        layOutProgressIndicator = Positioned(
          left: offset!.dx,
          top: offset!.dy,
          child: progressIndicator,
        );
      }
      final modal = [
        Opacity(
          opacity: opacity,
          child: ModalBarrier(
            dismissible: dismissible,
            color: color,
          ),
        ),
        layOutProgressIndicator
      ];
      widgetList += modal;
    }
    return Stack(
      children: widgetList,
    );
  }
}
