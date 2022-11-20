import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Chat_group_name {
  final String value;

  Chat_group_name(this.value) {
    if (value == null || value.isEmpty) {
      try {
        throw Exception('code: ExceptionCode.Chat_group_name');
      } on Exception catch (err, stacktrace) {
        print(err);
        print(stacktrace);
        rethrow;
      } finally {
        print('例外処理を終了します');
      }
    }
    if (value.length > 20) {
      try {
        throw Exception('code: ExceptionCode.Chat_group_name, max: 20');
      } on Exception catch (err, stacktrace) {
        print(err);
        print(stacktrace);
        rethrow;
      } finally {
        print('例外処理を終了します');
      }
    }
  }
  @override
  bool operator ==(Object other) =>
      identical(other, this) ||
      (other is Chat_group_name && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
