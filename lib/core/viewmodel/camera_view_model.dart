import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraViewModel extends ChangeNotifier {
  XFile? _before1, _before2, _before3;
  XFile? _after1, _after2, _after3;
  final ImagePicker _picker = ImagePicker();

  XFile? get before1 => _before1;

  set before1(XFile? value) {
    _before1 = value;
    notifyListeners();
  }

  get before2 => _before2;

  set before2(value) {
    _before2 = value;
    notifyListeners();
  }

  get before3 => _before3;

  set before3(value) {
    _before3 = value;
  }

  XFile? get after1 => _after1;

  set after1(XFile? value) {
    _after1 = value;
    notifyListeners();
  }

  get after2 => _after2;

  set after2(value) {
    _after2 = value;
    notifyListeners();
  }

  get after3 => _after3;

  set after3(value) {
    _after3 = value;
    notifyListeners();
  }

  Future<void> onImagePressed({required Key key}) async {
    final XFile? pickedFile = await _picker.pickImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );
    if (pickedFile != null) {
      if (key == const Key('before1')) {
        before1 = pickedFile;
      } else if (key == const Key('before2')) {
        before2 = pickedFile;
      } else if (key == const Key('before3')) {
        before3 = pickedFile;
      } else if (key == const Key('after1')) {
        after1 = pickedFile;
      } else if (key == const Key('after2')) {
        after2 = pickedFile;
      } else if (key == const Key('after3')) {
        after3 = pickedFile;
      }
    }
    notifyListeners();
  }
}
