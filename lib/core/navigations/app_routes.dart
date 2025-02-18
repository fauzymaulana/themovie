/// Static class to hold all the routes of the app
/// 
/// This class will hold all the routes of the app as static constants
class AppRoutes {
  static const String SPLASH = '/splash';
  static const String DASHBOARD = '/dashboard';

  static const Map<String, String> DASHBOARD_ROUTES = {
    '/home': 'home',
    '/bookmark': 'bookmark',
    '/account': 'account'
  };
}