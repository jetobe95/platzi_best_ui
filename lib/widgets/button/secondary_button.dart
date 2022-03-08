import 'package:flutter/material.dart';
import 'package:platzi_best_ui/core/presentation/theme/type.dart';

class SecondaryButton extends StatelessWidget {
  const SecondaryButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  static final ButtonStyle style = OutlinedButton.styleFrom(
    primary: Colors.white,
    onSurface: Colors.white,
    side: const BorderSide(color: Colors.white),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(14),
    ),
    padding: const EdgeInsets.only(top: 16, bottom: 15),
  );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: style,
      onPressed: onPressed,
      child: Text(
        text,
        style: button.copyWith(color: Colors.white),
      ),
    );
  }
}
