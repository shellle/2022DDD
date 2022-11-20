import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter_application_1/domain/value/chat_group_id.dart';
import 'package:flutter_application_1/domain/value/chat_group_name.dart';

export 'package:flutter_application_1/domain/value/chat_group_id.dart';
export 'package:flutter_application_1/domain/value/chat_group_name.dart';

class User {
  final ChatGroupId id;
  Chat_group_name _name;

  User({required this.id, required Chat_group_name name}) : _name = name;

  Chat_group_name get name => _name;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(other, this) || (other is User && other.id == id);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => runtimeType.hashCode ^ id.hashCode;

  void changeName(Chat_group_name newName) {
    _name = newName;
  }
}
