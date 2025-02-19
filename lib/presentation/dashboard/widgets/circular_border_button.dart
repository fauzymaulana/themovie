import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watch_me/core/config/theme/app_colors.dart';

class CircularBorderButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final double? height;
  final double paddingVertical;
  final double paddingHorizontal;
  final TextStyle? textStyle;
  final double? width;
  final Function() onPressed;

  const CircularBorderButton({
    super.key,
    this.height,
    this.width,
    required this.label,
    required this.textStyle,
    required this.paddingHorizontal,
    required this.paddingVertical,
    this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        onPressed: onPressed, 
        style: OutlinedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size.zero,
          backgroundColor: AppColors.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          padding: EdgeInsets.symmetric(
            vertical: paddingVertical,
            horizontal: paddingHorizontal,
          ),
          visualDensity: VisualDensity.compact,
          side: BorderSide(
            color: AppColors.primary,
            width: 1.0,
          ),
        ),
        child: Text(
          label,
          style: textStyle
        ),
        ),
    );
    //     ),
    //     child: icon != null
    //         ? Row(
    //             mainAxisAlignment: MainAxisAlignment.center,
    //             children: [
    //               Icon(
    //                 icon,
    //                 color: Colors.black,
    //               ),
    //               SizedBox(width: 5.0),
    //               Text(
    //                 label,
    //                 style: TextStyle(
    //                   color: Colors.black,
    //                 ),
    //               ),
    //             ],
    //           )
    //         : Text(
    //             label,
    //             style: TextStyle(
    //               color: Colors.black,
    //             ),
    //           ),
    //   ),
    // )
  }
}