import 'package:flutter/foundation.dart';

//TODO: move all route logic to this provider

//determines what pages are currently open
//this is a very manual thing and is a work around since I need to open and close pages from outside context
class CurrentRouteProvider extends ChangeNotifier {
  bool _settings = false;

  set route(String r) {
    if (r == '/settings') {
      _settings = true;
    } else {
      _settings = false;
    }
  }

  bool get settings => _settings;
}
