import 'package:flutter/material.dart';
import 'package:yarisingu_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:yarisingu_s_application2/presentation/get_started_screen/get_started_screen.dart';
import 'package:yarisingu_s_application2/presentation/login_screen/login_screen.dart';
import 'package:yarisingu_s_application2/presentation/forgot_password_screen/forgot_password_screen.dart';
import 'package:yarisingu_s_application2/presentation/otp_screen/otp_screen.dart';
import 'package:yarisingu_s_application2/presentation/new_password_screen/new_password_screen.dart';
import 'package:yarisingu_s_application2/presentation/registers_screen/registers_screen.dart';
import 'package:yarisingu_s_application2/presentation/home_screen/home_screen.dart';
import 'package:yarisingu_s_application2/presentation/transactions_tab_container_screen/transactions_tab_container_screen.dart';
import 'package:yarisingu_s_application2/presentation/accounts_screen/accounts_screen.dart';
import 'package:yarisingu_s_application2/presentation/investments_screen/investments_screen.dart';
import 'package:yarisingu_s_application2/presentation/credit_cards_screen/credit_cards_screen.dart';
import 'package:yarisingu_s_application2/presentation/loans_screen/loans_screen.dart';
import 'package:yarisingu_s_application2/presentation/services_screen/services_screen.dart';
import 'package:yarisingu_s_application2/presentation/setting_preference_tab_container_screen/setting_preference_tab_container_screen.dart';
import 'package:yarisingu_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String getStartedScreen = '/get_started_screen';

  static const String loginScreen = '/login_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String otpScreen = '/otp_screen';

  static const String newPasswordScreen = '/new_password_screen';

  static const String registersScreen = '/registers_screen';

  static const String homeScreen = '/home_screen';

  static const String transactionsPage = '/transactions_page';

  static const String transactionsTabContainerScreen =
      '/transactions_tab_container_screen';

  static const String accountsScreen = '/accounts_screen';

  static const String investmentsScreen = '/investments_screen';

  static const String creditCardsScreen = '/credit_cards_screen';

  static const String loansScreen = '/loans_screen';

  static const String servicesScreen = '/services_screen';

  static const String settingEditProfilePage = '/setting_edit_profile_page';

  static const String settingPreferencePage = '/setting_preference_page';

  static const String settingPreferenceTabContainerScreen =
      '/setting_preference_tab_container_screen';

  static const String settingSecurityPage = '/setting_security_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        splashScreen: SplashScreen.builder,
        getStartedScreen: GetStartedScreen.builder,
        loginScreen: LoginScreen.builder,
        forgotPasswordScreen: ForgotPasswordScreen.builder,
        otpScreen: OtpScreen.builder,
        newPasswordScreen: NewPasswordScreen.builder,
        registersScreen: RegistersScreen.builder,
        homeScreen: HomeScreen.builder,
        transactionsTabContainerScreen: TransactionsTabContainerScreen.builder,
        accountsScreen: AccountsScreen.builder,
        investmentsScreen: InvestmentsScreen.builder,
        creditCardsScreen: CreditCardsScreen.builder,
        loansScreen: LoansScreen.builder,
        servicesScreen: ServicesScreen.builder,
        settingPreferenceTabContainerScreen:
            SettingPreferenceTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
