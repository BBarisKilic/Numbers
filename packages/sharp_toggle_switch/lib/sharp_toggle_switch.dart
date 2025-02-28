/// A Flutter package to create a toggle switch with sharp edges.
library;

import 'package:flutter/material.dart';

enum SwitchPosition { left, right }

class SharpToggleSwitch extends StatefulWidget {
  const SharpToggleSwitch({
    required this.onToggle,
    required this.leftSwitch,
    required this.rightSwitch,
    this.initialPosition = SwitchPosition.left,
    this.primaryColor = Colors.black,
    this.secondaryColor = Colors.white,
    this.height,
    this.width,
    super.key,
  });

  final void Function(SwitchPosition) onToggle;
  final String leftSwitch;
  final String rightSwitch;
  final SwitchPosition initialPosition;
  final Color primaryColor;
  final Color secondaryColor;
  final double? height;
  final double? width;

  @override
  State<SharpToggleSwitch> createState() => _SharpToggleSwitchState();
}

class _SharpToggleSwitchState extends State<SharpToggleSwitch> {
  late SwitchPosition position;

  @override
  void initState() {
    super.initState();
    position = widget.initialPosition;
  }

  void onTap(SwitchPosition position) {
    if (!mounted) return;
    if (this.position == position) return;

    widget.onToggle(position);
    setState(() => this.position = position);
  }

  @override
  Widget build(BuildContext context) => Container(
        height: widget.height ?? 40.0,
        width: widget.width ?? 140.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.primaryColor,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () => onTap(SwitchPosition.left),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: position == SwitchPosition.left
                        ? widget.primaryColor
                        : widget.secondaryColor,
                  ),
                  child: Center(
                    child: Text(
                      widget.leftSwitch,
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: position == SwitchPosition.right
                                ? widget.primaryColor
                                : widget.secondaryColor,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () => onTap(SwitchPosition.right),
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: position == SwitchPosition.right
                        ? widget.primaryColor
                        : widget.secondaryColor,
                  ),
                  child: Center(
                    child: Text(
                      widget.rightSwitch,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: position == SwitchPosition.right
                                ? widget.secondaryColor
                                : widget.primaryColor,
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
