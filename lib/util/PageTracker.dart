
import 'package:flutter/foundation.dart';

class PageTracker extends ChangeNotifier {
  int _page = 0;
  PageTracker();

  setPage(int page) {
    print(page);
    _page = page;
    notifyListeners();
  }

  int get page => _page;
}
