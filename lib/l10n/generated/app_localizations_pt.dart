// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'FinControl';

  @override
  String helloUser(String name) {
    return 'Olá, $name';
  }

  @override
  String get dashboard => 'Dashboard';

  @override
  String get dashboardSubtitle => 'Seu resumo financeiro atualizado.';

  @override
  String get checkingAccount => 'Conta Corrente';

  @override
  String get cajuBalance => 'Saldo Caju';

  @override
  String get performance => 'Desempenho';

  @override
  String get monthlySavings => 'Economia do Mês';

  @override
  String get comparedToLastMonth => 'Comparado ao mês anterior';

  @override
  String get income => 'Entradas';

  @override
  String get expenses => 'Saídas';

  @override
  String get creditCard => 'Cartão de Crédito';

  @override
  String get currentInvoice => 'Fatura Atual';

  @override
  String dueOn(String date) {
    return 'Vence em $date';
  }

  @override
  String get spendingDivision => 'Divisão de Gastos';

  @override
  String get personal => 'Pessoal';

  @override
  String get thirdParty => 'Terceiros/Emprestado';

  @override
  String get viewDetails => 'Ver Detalhes';

  @override
  String get payInvoice => 'Pagar Fatura';

  @override
  String get home => 'Home';

  @override
  String get history => 'History';

  @override
  String get thirdParties => 'Terceiros';

  @override
  String get analysis => 'Analysis';
}
