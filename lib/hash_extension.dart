import 'dart:convert';

import 'package:crypto/crypto.dart';

/// add hash functionality to our String
extension HashStringExtension on String {
  /// return sha256 hash 
  String get hashValue {
    return sha256.convert(utf8.encode(this)).toString();
  }
}
