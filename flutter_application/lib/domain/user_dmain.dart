import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter_application_1/domain/value/user_id.dart';
import 'package:flutter_application_1/domain/value/user_name.dart';

export 'package:flutter_application_1/domain/value/user_id.dart';
export 'package:flutter_application_1/domain/value/user_name.dart';

class User {
  final UserId id;
  UserName _name;

  User({required this.id, required UserName name}) : _name = name;

  UserName get name => _name;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(other, this) || (other is User && other.id == id);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => runtimeType.hashCode ^ id.hashCode;

  void changeName(UserName newName) {
    _name = newName;
  }
}
