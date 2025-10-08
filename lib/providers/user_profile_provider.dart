import 'package:flutter/foundation.dart';
import '../models/user_profile.dart';

class UserProfileProvider with ChangeNotifier {
  final UserProfile _userProfile = UserProfile(username: 'Student101');

  UserProfile get userProfile => _userProfile;

  void setUsername(String newName) {
    _userProfile.username = newName;
    notifyListeners();
  }
}
