import 'package:flutter/material.dart';

enum CIButtonState {
  common,
  pressing,
}

class TouchableOpacity extends StatefulWidget {
  final double activeOpacity;
  final Widget child;
  final VoidCallback? onPressed;
  const TouchableOpacity({
    super.key,
    required this.child,
    this.activeOpacity = 0.7,
    this.onPressed,
  });

  @override
  State<TouchableOpacity> createState() => _TouchableOpacityState();
}

class _TouchableOpacityState extends State<TouchableOpacity> {
  CIButtonState buttonState = CIButtonState.common;
  Color bgColor = Colors.transparent;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(covariant TouchableOpacity oldWidget) {
    super.didUpdateWidget(oldWidget);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (widget.onPressed != null) {
      return GestureDetector(
        onTap: widget.onPressed,
        behavior: HitTestBehavior.translucent,
        onTapDown: (_) {
          buttonState = CIButtonState.pressing;
          bgColor = Theme.of(context).cardColor;
          setState(() {});
        },
        onTapUp: (tapUpDetails) {
          buttonState = CIButtonState.common;
          bgColor = Colors.transparent;
          setState(() {});
        },
        onTapCancel: () {
          buttonState = CIButtonState.common;
          bgColor = Colors.transparent;
          setState(() {});
        },
        child: _content(
            buttonState == CIButtonState.pressing ? widget.activeOpacity : 1.0),
      );
    } else {
      return _content(0.3);
    }
  }

  Widget _content(double opacity) {
    return Opacity(
      opacity: opacity,
      child: widget.child,
    );
  }
}
