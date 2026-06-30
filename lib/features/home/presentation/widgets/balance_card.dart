import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color iconBackgroundColor;
  final Color iconColor;
  final Color amountColor;
  final Color? topBorderColor;
  final Color blobColor;

  const BalanceCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconBackgroundColor,
    required this.iconColor,
    required this.amountColor,
    this.topBorderColor,
    required this.blobColor,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: 140,
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.surfaceContainerHighest),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF1A237E).withValues(alpha: 0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(11),
        child: Stack(
          children: [
            // Top accent bar (rendered separately to avoid non-uniform border)
            if (topBorderColor != null)
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(height: 4, color: topBorderColor),
              ),
            // Decorative blob
            Positioned(
              right: -32,
              top: -32,
              child: Container(
                width: 96,
                height: 96,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: blobColor.withValues(alpha: 0.05),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 32,
                        height: 32,
                        decoration: BoxDecoration(
                          color: iconBackgroundColor,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(icon, size: 18, color: iconColor),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: textTheme.labelMedium?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    amount,
                    style: textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: amountColor,
                      letterSpacing: -0.5,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
