import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Widget? leading; // optional icon
  final EdgeInsetsGeometry? padding;
  final TextStyle? textStyle;
  final bool isLoading;
  final bool enabled;
  final Color? textColor;

  const AppTextButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.leading,
    this.padding,
    this.textStyle,
    this.isLoading = false,
    this.enabled = true,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final effectiveColor = textColor ?? theme.colorScheme.primary;

    final labelWidget = Text(
      label,
      style: (textStyle ??
          theme.textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w600,
            color: effectiveColor,
          )),
    );

    return TextButton(
      onPressed: (enabled && !isLoading) ? onPressed : null,
      style: TextButton.styleFrom(
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: isLoading
          ? SizedBox(
        height: 18,
        width: 18,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation(effectiveColor),
        ),
      )
          : Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (leading != null) ...[
            leading!,
            const SizedBox(width: 6),
          ],
          labelWidget,
        ],
      ),
    );
  }
}
