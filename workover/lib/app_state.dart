import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _searchallusers = true;
  bool get searchallusers => _searchallusers;
  set searchallusers(bool value) {
    _searchallusers = value;
  }

  bool _searchfnbusers = true;
  bool get searchfnbusers => _searchfnbusers;
  set searchfnbusers(bool value) {
    _searchfnbusers = value;
  }

  bool _searchfrontofzusers = true;
  bool get searchfrontofzusers => _searchfrontofzusers;
  set searchfrontofzusers(bool value) {
    _searchfrontofzusers = value;
  }

  bool _searchhousekeepingusers = true;
  bool get searchhousekeepingusers => _searchhousekeepingusers;
  set searchhousekeepingusers(bool value) {
    _searchhousekeepingusers = value;
  }

  bool _searchkitchenusers = true;
  bool get searchkitchenusers => _searchkitchenusers;
  set searchkitchenusers(bool value) {
    _searchkitchenusers = value;
  }
}
