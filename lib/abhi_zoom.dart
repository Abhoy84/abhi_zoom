library abhi_zoom;

import 'package:flutter/material.dart';

class AbhiZoom extends StatelessWidget {
  final Widget child;
  final double maxScale;
  final double minScale;

  const AbhiZoom({
    Key? key,
    required this.child,
    this.maxScale = 5.0,
    this.minScale = 1.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InteractiveViewer(
      panEnabled: true,
      scaleEnabled: true,
      minScale: minScale,
      maxScale: maxScale,
      child: child,
    );
  }
}
