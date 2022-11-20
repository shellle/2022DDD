import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter_application_1/domain/value/unsent_message_id.dart';
import 'package:flutter_application_1/domain/value/unsent_message_text.dart';

export 'package:flutter_application_1/domain/value/unsent_message_id.dart';
export 'package:flutter_application_1/domain/value/unsent_message_text.dart';

class User {
  final UnsentMessageId id;
  Unsent_message_text _name;

  User({required this.id, required Unsent_message_text name}) : _name = name;

  Unsent_message_text get name => _name;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(other, this) || (other is User && other.id == id);

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => runtimeType.hashCode ^ id.hashCode;

  void changeName(Unsent_message_text newName) {
    _name = newName;
  }
}
