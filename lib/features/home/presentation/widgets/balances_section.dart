import 'package:flutter/material.dart';
import '../../../../l10n/generated/app_localizations.dart';
import 'balance_card.dart';

class BalancesSection extends StatelessWidget {
  const BalancesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        Expanded(
          child: BalanceCard(
            title: AppLocalizations.of(context)!.checkingAccount,
            amount: 'R\$ 4.500,00',
            icon: Icons.account_balance,
            iconBackgroundColor: colorScheme.secondaryContainer,
            iconColor: colorScheme.onSecondaryContainer,
            amountColor: colorScheme.primary,
            blobColor: colorScheme.primary,
          ),
        ),
        const SizedBox(width: 24), // gap-gutter (24px)
        Expanded(
          child: BalanceCard(
            title: AppLocalizations.of(context)!.cajuBalance,
            amount: 'R\$ 850,00',
            icon: Icons.credit_card,
            iconBackgroundColor: colorScheme.surfaceContainerHighest,
            iconColor: colorScheme.onSurfaceVariant,
            amountColor: colorScheme.onSurface,
            topBorderColor: colorScheme.tertiaryContainer,
            blobColor: colorScheme.tertiaryContainer,
          ),
        ),
      ],
    );
  }
}
