import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class UserId {
  final String value;

  UserId(this.value) {
    if (value == null || value.isEmpty) {
      try {
        throw Exception('code: ExceptionCode.UserId');
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
        throw Exception('code: ExceptionCode.UserId, max: 20');
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
      identical(other, this) || (other is UserId && other.value == value);

  @override
  int get hashCode => runtimeType.hashCode ^ value.hashCode;
}
