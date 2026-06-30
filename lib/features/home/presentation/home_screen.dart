import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/welcome_section.dart';
import 'widgets/balances_section.dart';
import 'widgets/performance_summary_section.dart';
import 'widgets/credit_card_details_section.dart';
import 'widgets/home_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              WelcomeSection(),
              SizedBox(height: 32),
              BalancesSection(),
              SizedBox(height: 32),
              PerformanceSummarySection(),
              SizedBox(height: 32),
              CreditCardDetailsSection(),
              SizedBox(height: 32), // Padding for BottomNavBar and FAB
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        elevation: 4,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const HomeBottomNavBar(),
    );
  }
}
