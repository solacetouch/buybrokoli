import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
      _AgreeToTerms = prefs.getBool('ff_AgreeToTerms') ?? _AgreeToTerms;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _appleFirst = '';
  String get appleFirst => _appleFirst;
  set appleFirst(String value) {
    _appleFirst = value;
  }

  String _appleLast = '';
  String get appleLast => _appleLast;
  set appleLast(String value) {
    _appleLast = value;
  }

  String _tempEventPhoto = '';
  String get tempEventPhoto => _tempEventPhoto;
  set tempEventPhoto(String value) {
    _tempEventPhoto = value;
  }

  String _tempLogo = '';
  String get tempLogo => _tempLogo;
  set tempLogo(String value) {
    _tempLogo = value;
  }

  List<String> _tempPhotos = [];
  List<String> get tempPhotos => _tempPhotos;
  set tempPhotos(List<String> value) {
    _tempPhotos = value;
  }

  void addToTempPhotos(String value) {
    _tempPhotos.add(value);
  }

  void removeFromTempPhotos(String value) {
    _tempPhotos.remove(value);
  }

  void removeAtIndexFromTempPhotos(int index) {
    _tempPhotos.removeAt(index);
  }

  void updateTempPhotosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _tempPhotos[index] = updateFn(_tempPhotos[index]);
  }

  void insertAtIndexInTempPhotos(int index, String value) {
    _tempPhotos.insert(index, value);
  }

  String _tempUserProfilePhoto = '';
  String get tempUserProfilePhoto => _tempUserProfilePhoto;
  set tempUserProfilePhoto(String value) {
    _tempUserProfilePhoto = value;
  }

  String _tempBusinessProfilePhoto = '';
  String get tempBusinessProfilePhoto => _tempBusinessProfilePhoto;
  set tempBusinessProfilePhoto(String value) {
    _tempBusinessProfilePhoto = value;
  }

  bool _AgreeToTerms = false;
  bool get AgreeToTerms => _AgreeToTerms;
  set AgreeToTerms(bool value) {
    _AgreeToTerms = value;
    prefs.setBool('ff_AgreeToTerms', value);
  }

  List<String> _productList = [];
  List<String> get productList => _productList;
  set productList(List<String> value) {
    _productList = value;
  }

  void addToProductList(String value) {
    _productList.add(value);
  }

  void removeFromProductList(String value) {
    _productList.remove(value);
  }

  void removeAtIndexFromProductList(int index) {
    _productList.removeAt(index);
  }

  void updateProductListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _productList[index] = updateFn(_productList[index]);
  }

  void insertAtIndexInProductList(int index, String value) {
    _productList.insert(index, value);
  }

  int _imageUploadCount = 0;
  int get imageUploadCount => _imageUploadCount;
  set imageUploadCount(int value) {
    _imageUploadCount = value;
  }

  double _imageCount = 0.0;
  double get imageCount => _imageCount;
  set imageCount(double value) {
    _imageCount = value;
  }
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
