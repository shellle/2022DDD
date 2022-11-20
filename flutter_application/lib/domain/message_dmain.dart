import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter_application_1/domain/value/message_id.dart';
import 'package:flutter_application_1/domain/value/message_text.dart';

export 'package:flutter_application_1/domain/value/message_id.dart';
export 'package:flutter_application_1/domain/value/message_text.dart';

class User {
  final MessageId id;
  Message_text _name;

  User({required this.id, required Message_text name}) : _name = name;

  Message_text get name => _name;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(other, this) || (other is User && other.id == id);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => runtimeType.hashCode ^ id.hashCode;

  void changeName(Message_text newName) {
    _name = newName;
  }
}
