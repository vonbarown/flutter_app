import 'package:flutter/material.dart';


class EmailAddress {
  final String value;
  final Either<Left, Right> failure;

  factory EmailAddress(String input) {
    assert(input != null);
    return EmailAddress._(ValidateEmailAddress(input));
  }

  const EmailAddress._(this.value, this.failure);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is EmailAddress && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'EmailAddress(value: $value)';
}

//validating emails
String ValidateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  //validating  string based on regex
  if (RegExp(emailRegex).hasMatch(input)) {
    return input;
  } else {
    throw InvalidEmailFailure(failedValue: input);
  }
}

abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required T failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required T failedValue,
  }) = ShortPassword<T>;
}


InvalidEmailFailure {
  final String failedValue;

  InvalidEmailFailure({@required this.failedValue});
}
