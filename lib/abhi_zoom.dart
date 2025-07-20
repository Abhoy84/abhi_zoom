import 'package:flutter/material.dart';

/// A widget that enables zooming and panning for its [child] using [InteractiveViewer].
///
/// Typically used for zoomable images, maps, or custom widgets.
/// Customize [minScale] and [maxScale] to control zoom limits.
class AbhiZoom extends StatelessWidget {
  /// The widget to apply zoom and pan gestures to.
  final Widget child;

  /// The minimum zoom scale (default is 1.0).
  final double minScale;

  /// The maximum zoom scale (default is 5.0).
  final double maxScale;

  /// Creates an [AbhiZoom] widget.
  ///
  /// The [child] is required. You can optionally configure [minScale] and [maxScale].
  const AbhiZoom({
    super.key,
    required this.child,
    this.minScale = 1.0,
    this.maxScale = 5.0,
  });

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
