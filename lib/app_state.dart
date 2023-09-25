import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _isNewDay = prefs.getInt('ff_isNewDay') ?? _isNewDay;
    });
    _safeInit(() {
      _availableRequest =
          prefs.getInt('ff_availableRequest') ?? _availableRequest;
    });
    _safeInit(() {
      _badges2 = prefs.getInt('ff_badges2') ?? _badges2;
    });
    _safeInit(() {
      _title2 = prefs.getStringList('ff_title2') ?? _title2;
    });
    _safeInit(() {
      _recipelog2 = prefs.getStringList('ff_recipelog2')?.map((x) {
            try {
              return jsonDecode(x);
            } catch (e) {
              print("Can't decode persisted json. Error: $e.");
              return {};
            }
          }).toList() ??
          _recipelog2;
    });
    _safeInit(() {
      _urls2 = prefs.getStringList('ff_urls2') ?? _urls2;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  int _badge = 1;
  int get badge => _badge;
  set badge(int _value) {
    _badge = _value;
  }

  List<String> _titles = [];
  List<String> get titles => _titles;
  set titles(List<String> _value) {
    _titles = _value;
  }

  void addToTitles(String _value) {
    _titles.add(_value);
  }

  void removeFromTitles(String _value) {
    _titles.remove(_value);
  }

  void removeAtIndexFromTitles(int _index) {
    _titles.removeAt(_index);
  }

  void updateTitlesAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _titles[_index] = updateFn(_titles[_index]);
  }

  void insertAtIndexInTitles(int _index, String _value) {
    _titles.insert(_index, _value);
  }

  List<dynamic> _recipeLog = [];
  List<dynamic> get recipeLog => _recipeLog;
  set recipeLog(List<dynamic> _value) {
    _recipeLog = _value;
  }

  void addToRecipeLog(dynamic _value) {
    _recipeLog.add(_value);
  }

  void removeFromRecipeLog(dynamic _value) {
    _recipeLog.remove(_value);
  }

  void removeAtIndexFromRecipeLog(int _index) {
    _recipeLog.removeAt(_index);
  }

  void updateRecipeLogAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _recipeLog[_index] = updateFn(_recipeLog[_index]);
  }

  void insertAtIndexInRecipeLog(int _index, dynamic _value) {
    _recipeLog.insert(_index, _value);
  }

  bool _animFlag = false;
  bool get animFlag => _animFlag;
  set animFlag(bool _value) {
    _animFlag = _value;
  }

  List<dynamic> _recipes = [];
  List<dynamic> get recipes => _recipes;
  set recipes(List<dynamic> _value) {
    _recipes = _value;
  }

  void addToRecipes(dynamic _value) {
    _recipes.add(_value);
  }

  void removeFromRecipes(dynamic _value) {
    _recipes.remove(_value);
  }

  void removeAtIndexFromRecipes(int _index) {
    _recipes.removeAt(_index);
  }

  void updateRecipesAtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _recipes[_index] = updateFn(_recipes[_index]);
  }

  void insertAtIndexInRecipes(int _index, dynamic _value) {
    _recipes.insert(_index, _value);
  }

  bool _toggle = false;
  bool get toggle => _toggle;
  set toggle(bool _value) {
    _toggle = _value;
  }

  int _selectedEle = 0;
  int get selectedEle => _selectedEle;
  set selectedEle(int _value) {
    _selectedEle = _value;
  }

  bool _voiceState = true;
  bool get voiceState => _voiceState;
  set voiceState(bool _value) {
    _voiceState = _value;
  }

  List<String> _urls = [];
  List<String> get urls => _urls;
  set urls(List<String> _value) {
    _urls = _value;
  }

  void addToUrls(String _value) {
    _urls.add(_value);
  }

  void removeFromUrls(String _value) {
    _urls.remove(_value);
  }

  void removeAtIndexFromUrls(int _index) {
    _urls.removeAt(_index);
  }

  void updateUrlsAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _urls[_index] = updateFn(_urls[_index]);
  }

  void insertAtIndexInUrls(int _index, String _value) {
    _urls.insert(_index, _value);
  }

  bool _isPremium = false;
  bool get isPremium => _isPremium;
  set isPremium(bool _value) {
    _isPremium = _value;
  }

  int _bank = 3;
  int get bank => _bank;
  set bank(int _value) {
    _bank = _value;
  }

  int _isNewDay = 0;
  int get isNewDay => _isNewDay;
  set isNewDay(int _value) {
    _isNewDay = _value;
    prefs.setInt('ff_isNewDay', _value);
  }

  int _availableRequest = 0;
  int get availableRequest => _availableRequest;
  set availableRequest(int _value) {
    _availableRequest = _value;
    prefs.setInt('ff_availableRequest', _value);
  }

  int _badges2 = 0;
  int get badges2 => _badges2;
  set badges2(int _value) {
    _badges2 = _value;
    prefs.setInt('ff_badges2', _value);
  }

  List<String> _title2 = [];
  List<String> get title2 => _title2;
  set title2(List<String> _value) {
    _title2 = _value;
    prefs.setStringList('ff_title2', _value);
  }

  void addToTitle2(String _value) {
    _title2.add(_value);
    prefs.setStringList('ff_title2', _title2);
  }

  void removeFromTitle2(String _value) {
    _title2.remove(_value);
    prefs.setStringList('ff_title2', _title2);
  }

  void removeAtIndexFromTitle2(int _index) {
    _title2.removeAt(_index);
    prefs.setStringList('ff_title2', _title2);
  }

  void updateTitle2AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _title2[_index] = updateFn(_title2[_index]);
    prefs.setStringList('ff_title2', _title2);
  }

  void insertAtIndexInTitle2(int _index, String _value) {
    _title2.insert(_index, _value);
    prefs.setStringList('ff_title2', _title2);
  }

  List<dynamic> _recipelog2 = [];
  List<dynamic> get recipelog2 => _recipelog2;
  set recipelog2(List<dynamic> _value) {
    _recipelog2 = _value;
    prefs.setStringList(
        'ff_recipelog2', _value.map((x) => jsonEncode(x)).toList());
  }

  void addToRecipelog2(dynamic _value) {
    _recipelog2.add(_value);
    prefs.setStringList(
        'ff_recipelog2', _recipelog2.map((x) => jsonEncode(x)).toList());
  }

  void removeFromRecipelog2(dynamic _value) {
    _recipelog2.remove(_value);
    prefs.setStringList(
        'ff_recipelog2', _recipelog2.map((x) => jsonEncode(x)).toList());
  }

  void removeAtIndexFromRecipelog2(int _index) {
    _recipelog2.removeAt(_index);
    prefs.setStringList(
        'ff_recipelog2', _recipelog2.map((x) => jsonEncode(x)).toList());
  }

  void updateRecipelog2AtIndex(
    int _index,
    dynamic Function(dynamic) updateFn,
  ) {
    _recipelog2[_index] = updateFn(_recipelog2[_index]);
    prefs.setStringList(
        'ff_recipelog2', _recipelog2.map((x) => jsonEncode(x)).toList());
  }

  void insertAtIndexInRecipelog2(int _index, dynamic _value) {
    _recipelog2.insert(_index, _value);
    prefs.setStringList(
        'ff_recipelog2', _recipelog2.map((x) => jsonEncode(x)).toList());
  }

  List<String> _urls2 = [];
  List<String> get urls2 => _urls2;
  set urls2(List<String> _value) {
    _urls2 = _value;
    prefs.setStringList('ff_urls2', _value);
  }

  void addToUrls2(String _value) {
    _urls2.add(_value);
    prefs.setStringList('ff_urls2', _urls2);
  }

  void removeFromUrls2(String _value) {
    _urls2.remove(_value);
    prefs.setStringList('ff_urls2', _urls2);
  }

  void removeAtIndexFromUrls2(int _index) {
    _urls2.removeAt(_index);
    prefs.setStringList('ff_urls2', _urls2);
  }

  void updateUrls2AtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _urls2[_index] = updateFn(_urls2[_index]);
    prefs.setStringList('ff_urls2', _urls2);
  }

  void insertAtIndexInUrls2(int _index, String _value) {
    _urls2.insert(_index, _value);
    prefs.setStringList('ff_urls2', _urls2);
  }

  RecipeInputStruct _recipeInput = RecipeInputStruct();
  RecipeInputStruct get recipeInput => _recipeInput;
  set recipeInput(RecipeInputStruct _value) {
    _recipeInput = _value;
  }

  void updateRecipeInputStruct(Function(RecipeInputStruct) updateFn) {
    updateFn(_recipeInput);
  }

  String _currentLang = '';
  String get currentLang => _currentLang;
  set currentLang(String _value) {
    _currentLang = _value;
  }

  String _versionNumber = '';
  String get versionNumber => _versionNumber;
  set versionNumber(String _value) {
    _versionNumber = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
