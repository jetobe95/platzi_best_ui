import 'package:flutter/material.dart';

class VSpacing extends StatelessWidget {
  const VSpacing(
    this.value, {
    Key? key,
  }) : super(key: key);

  /// Constructs vertical spacing with 8 height.
  const VSpacing.small({
    Key? key,
  })  : value = 8,
        super(key: key);

  /// Constructs vertical spacing with 16 height.
  const VSpacing.regular({
    Key? key,
  })  : value = 16,
        super(key: key);

  /// Constructs vertical spacing with 32 height.
  const VSpacing.medium({
    Key? key,
  })  : value = 32,
        super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) => SizedBox(height: value);
}

class HSpacing extends StatelessWidget {
  const HSpacing(
    this.value, {
    Key? key,
  }) : super(key: key);

  /// Constructs horizontal spacing with 8 width.
  const HSpacing.small({
    Key? key,
  })  : value = 8,
        super(key: key);

  /// Constructs horizontal spacing with 16 width.
  const HSpacing.regular({
    Key? key,
  })  : value = 16,
        super(key: key);

  /// Constructs horizontal spacing with 32 width.
  const HSpacing.medium({
    Key? key,
  })  : value = 32,
        super(key: key);

  final double value;

  @override
  Widget build(BuildContext context) => SizedBox(width: value);
}
