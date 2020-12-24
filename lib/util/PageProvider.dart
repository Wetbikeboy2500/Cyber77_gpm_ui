//Provider that should handle all pag changes
//This will include tracking state changes for what page is currently open

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class PageProvider extends ChangeNotifier {
  GlobalKey<NavigatorState> _navigatorKey;

  bool _settings = false;

  PageProvider();

  set navigatorKey(GlobalKey<NavigatorState> key) {
    _navigatorKey = key;
  }

  ///Toggle if settings is opened or closed
  toggleSettings() {
    if (_settings) {
      //Might what to change this to a pop until
      _settings = false;
      _navigatorKey.currentState.pop();
    } else {
      _settings = true;
      _navigatorKey.currentState.pushNamed('/settings');
    }
  }

  ///Open settings if not already opened
  openSettings() {
    if (!_settings) {
      _settings = true;
      _navigatorKey.currentState.pushNamed('/settings');
    }
  }

  ///Close settings if opened
  closeSettings() {
    if (_settings) {
      _settings = false;
      _navigatorKey.currentState.pop();
    }
  }
}
