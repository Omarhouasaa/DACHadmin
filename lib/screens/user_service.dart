import 'package:flutter/material.dart';

import '../models/user_model.dart';

class UserService with ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  void fetchUsers() async {
    // TO DO: Implement user data fetching from your database or API
    // For now, let's use some dummy data
    _users = [
      User(id: '1', name: 'John Doe', email: 'johndoe@example.com'),
      User(id: '2', name: 'Jane Doe', email: 'janedoe@example.com'),
      // Add more users here
    ];
    notifyListeners();
  }
}