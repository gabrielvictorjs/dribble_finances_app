import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class ApiClient {
  dynamic get(String path) async {
    final result = await Future.delayed(
      const Duration(seconds: 2),
      () => rootBundle.loadString('assets/data/$path.json'),
    );
    return json.decode(result);
  }
}
