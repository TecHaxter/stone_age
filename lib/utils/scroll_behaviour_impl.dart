import 'package:flutter/material.dart';

class ScrollBehaviorImpl extends ScrollBehavior {
  const ScrollBehaviorImpl();
  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    /// bottom sheet scrolling issue fix
    return const ClampingScrollPhysics();
  }
}
