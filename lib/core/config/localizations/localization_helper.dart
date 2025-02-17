import 'package:watch_me/core/extensions/AppLocationsExt.dart';

class LocalizationService {
  static late AppLocalizations _localizations;

  static void initialize(AppLocalizations localizations) {
    _localizations = localizations;
  }

  static AppLocalizations get instance => _localizations;
}