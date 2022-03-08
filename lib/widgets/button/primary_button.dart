import 'package:flutter/material.dart';
import 'package:platzi_best_ui/core/presentation/res/colors.dart';
import 'package:platzi_best_ui/core/presentation/theme/type.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        backgroundColor: UIColors.atlantis,
        padding: const EdgeInsets.only(top: 16, bottom: 15),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: button,
      ),
    );
  }
}
