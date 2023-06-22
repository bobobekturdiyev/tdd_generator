import 'package:flutter/material.dart';
import '../resources/app_colors.dart';
import '../resources/styles.dart';

class WButton extends StatelessWidget {
  final GestureTapCallback onTap;

  const WButton({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        decoration: BoxDecoration(
          color: AppColors.black,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          "Qayta yuklash",
          style: Styles.getButtonStyle(),
        ),
      ),
    );
  }
}
