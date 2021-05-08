import 'package:flutter/material.dart';
import 'package:smart_duel_disk/packages/ui_components/lib/ui_components.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PrimaryButton({
    @required this.text,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: AppColors.primaryAccentColor,
        minimumSize: const Size(double.infinity, AppDimensions.buttonHeight),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(AppDimensions.generalBorderRadius),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyles.button,
      ),
    );
  }
}
