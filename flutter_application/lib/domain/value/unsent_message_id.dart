import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class UnsentMessageId {
  final String value;

  UnsentMessageId(this.value) {
    if (value == null || value.isEmpty) {
      try {
        throw Exception('code: ExceptionCode.UnsentMessageId');
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
        throw Exception('code: ExceptionCode.UnsentMessageId, max: 20');
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
      (other is UnsentMessageId && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
