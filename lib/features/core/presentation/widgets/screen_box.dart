import 'package:flutter/material.dart';

class ScreenBox extends StatelessWidget {
  const ScreenBox({
    required this.child, super.key,
    this.padding,
    this.backgroundColor,
  });

  final Widget child;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: GestureDetector(
                    onTap: () =>
                        FocusScope.of(context).requestFocus(FocusNode()),
                    child: Padding(
                      padding: padding ?? const EdgeInsets.all(16),
                      child: child,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
