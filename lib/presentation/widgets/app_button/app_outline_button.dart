import 'package:flutter/material.dart';
import 'package:jibjab/utils/app_colors/app_colors.dart';
import 'package:jibjab/utils/app_fonts/app_fonts.dart';

class AppOutlinedButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? leading; // icon or any widget before text
  final double? width; // if null, wraps to content
  final double height;
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final Color? borderColor;
  final double borderWidth;
  final double borderRadius;
  final bool isLoading;
  final bool enabled;
  final Color? backgroundColor; // optional fill
  final Color? foregroundColor; // text/icon color

  const AppOutlinedButton({
    Key? key,
    required this.label,
    required this.onPressed,
    this.leading,
    this.width,
    this.height = 48.0,
    this.padding,
    this.textStyle,
    this.borderColor,
    this.borderWidth = 1.5,
    this.borderRadius = 8.0,
    this.isLoading = false,
    this.enabled = true,
    this.backgroundColor,
    this.foregroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveBorderColor = borderColor ?? AppColors.primaryColor;
    final effectiveForeground = foregroundColor ?? AppColors.primaryColor;
    final effectiveTextStyle = textStyle ??
        theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600);

    final buttonChild = isLoading
        ? SizedBox(
      width: 18,
      height: 18,
      child: CircularProgressIndicator(
        strokeWidth: 2.0,
        valueColor: AlwaysStoppedAnimation<Color>(effectiveForeground),
      ),
    )
        : Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leading != null) ...[
          leading!,
          const SizedBox(width: 8),
        ],
        Flexible(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: AppFonts.semiBold20.copyWith(
              color: AppColors.primaryColor,

            ),
          ),
        ),
      ],
    );

    final ButtonStyle style = OutlinedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: effectiveForeground,
      padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      minimumSize: Size(width ?? 0, height),
      side: BorderSide(color: effectiveBorderColor, width: borderWidth),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
    ).copyWith(
      // disable splash/press color when disabled
      overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
        if (states.contains(MaterialState.pressed)) return effectiveForeground.withOpacity(0.08);
        return null;
      }),
    );

    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: (enabled && !isLoading) ? onPressed : null,
        style: style,
        child: buttonChild,
      ),
    );
  }
}
