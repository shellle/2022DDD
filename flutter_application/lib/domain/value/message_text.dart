import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Message_text {
  final String value;

  Message_text(this.value) {
    if (value == null || value.isEmpty) {
      try {
        throw Exception('code: ExceptionCode.Message_text');
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
        throw Exception('code: ExceptionCode.Message_text, max: 200');
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
      identical(other, this) || (other is Message_text && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
