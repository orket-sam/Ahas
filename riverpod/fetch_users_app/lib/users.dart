import 'dart:convert';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

Future<List> fetchUsers() async {
  var x =
      await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));

  var userData = jsonDecode(x.body) as List;
  return userData.map((e) => e['username']).toList();
}

final fetchUsersProvider = FutureProvider(((ref) {
  return fetchUsers();
}));
