import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class MessageId {
  final String value;

  MessageId(this.value) {
    if (value == null || value.isEmpty) {
      try {
        throw Exception('code: ExceptionCode.MessageId');
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
        throw Exception('code: ExceptionCode.MessageId, max: 20');
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
      identical(other, this) || (other is MessageId && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
