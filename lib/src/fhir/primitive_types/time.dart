import 'dart:convert';

import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirTimeExtension on String {
  FhirTime get toFhirTime => FhirTime(this);
}

class FhirTime extends PrimitiveType<String> implements Comparable<FhirTime> {
  @override
  final String value; // Single field to store the validated time string

  // Constructor to validate and store the time string
  FhirTime(String input, [Element? element])
      : value = _validateTime(input),
        super(element: element);

  // Factory method for constructing time from units
  factory FhirTime.fromUnits({
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    String timeString = hour?.toString().padLeft(2, '0') ?? '';
    if (minute != null) {
      timeString += ':${minute.toString().padLeft(2, '0')}';
      if (second != null) {
        timeString += ':${second.toString().padLeft(2, '0')}';
        if (millisecond != null) {
          timeString += '.${millisecond.toString().padLeft(3, '0')}';
        }
      }
    }
    return FhirTime(timeString);
  }

  static FhirTime? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirTime(input);
      } catch (e) {
        return null;
      }
    } else {
      return null;
    }
  }

  // Validation function using regex
  static String _validateTime(String input) {
    final RegExp timeRegex = RegExp(
        r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$');
    if (timeRegex.hasMatch(input)) {
      return input;
    } else {
      throw FormatException('Invalid time format: $input');
    }
  }

  // Factory methods for JSON and YAML
  factory FhirTime.fromJson(dynamic json) {
    if (json is String) {
      return FhirTime(json);
    } else {
      throw const FormatException('Invalid input for FhirTime');
    }
  }

  factory FhirTime.fromYaml(String yaml) =>
      FhirTime.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))) as String);

  @override
  String get fhirType => 'time';

  // Time component getters (hour, minute, second, millisecond)
  int? get hour => int.tryParse(value.split(':')[0]);

  int? get minute =>
      (value.split(':').length > 1) ? int.tryParse(value.split(':')[1]) : null;

  int? get second => (value.split(':').length > 2)
      ? int.tryParse(value.split(':')[2].split('.')[0])
      : null;

  int? get millisecond =>
      (value.split('.').length > 1) ? int.tryParse(value.split('.')[1]) : null;

  // Arithmetic methods: Plus and Subtract
  FhirTime plus({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    int newMilliseconds = (millisecond ?? 0) + milliseconds;
    int newSeconds = (second ?? 0) + seconds + (newMilliseconds ~/ 1000);
    newMilliseconds = newMilliseconds % 1000;
    int newMinutes = (minute ?? 0) + minutes + (newSeconds ~/ 60);
    newSeconds = newSeconds % 60;
    int newHours = (hour ?? 0) + hours + (newMinutes ~/ 60);
    newMinutes = newMinutes % 60;
    newHours = newHours % 24;
    return FhirTime.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  FhirTime subtract({
    int? hours,
    int? minutes,
    int? seconds,
    int? milliseconds,
  }) {
    int? newMilliseconds = (millisecond ?? 0) - (milliseconds ?? 0);
    int? newSeconds = (second ?? 0) - (seconds ?? 0);
    int? newMinutes = (minute ?? 0) - (minutes ?? 0);
    int? newHours = (hour ?? 0) - (hours ?? 0);

    while ((newMilliseconds ?? 0) < 0) {
      newMilliseconds = (newMilliseconds ?? 0) + 1000;
      newSeconds = (newSeconds ?? 0) - 1;
    }

    while ((newSeconds ?? 0) < 0) {
      newSeconds = (newSeconds ?? 0) + 60;
      newMinutes = (newMinutes ?? 0) - 1;
    }

    while ((newMinutes ?? 0) < 0) {
      newMinutes = (newMinutes ?? 0) + 60;
      newHours = (newHours ?? 0) - 1;
    }

    newHours = (newHours ?? 0) % 24;

    return FhirTime.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  // Comparisons (>, >=, <, <=) using helper method
  bool? _compare(Comparator comparator, Object other) {
    final FhirTime? rhs = other is FhirTime
        ? other
        : other is String
            ? FhirTime(other)
            : null;

    if (rhs == null) {
      return false;
    }

    final List<String> lhsParts = value.split(':');
    final List<String> rhsParts = rhs.value.split(':');

    for (int i = 0; i < lhsParts.length; i++) {
      final int lhs = int.parse(lhsParts[i]);
      final int rhsValue = int.parse(rhsParts[i]);

      switch (comparator) {
        case Comparator.eq:
          if (lhs != rhsValue) {
            return false;
          }
        case Comparator.gt:
          if (lhs > rhsValue) {
            return true;
          }
          if (lhs < rhsValue) {
            return false;
          }
        case Comparator.lt:
          if (lhs < rhsValue) {
            return true;
          }
          if (lhs > rhsValue) {
            return false;
          }
        case Comparator.gte:
          if (lhs >= rhsValue) {
            return true;
          }
          return false;
        case Comparator.lte:
          if (lhs <= rhsValue) {
            return true;
          }
          return false;
      }
    }
    return comparator == Comparator.eq;
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.eq, other) ?? false;

  @override
  bool equals(Object other) => _compare(Comparator.eq, other) ?? false;

  bool? operator >(Object other) => _compare(Comparator.gt, other);

  bool? operator >=(Object other) => _compare(Comparator.gte, other);

  bool? operator <(Object other) => _compare(Comparator.lt, other);

  bool? operator <=(Object other) => _compare(Comparator.lte, other);

  @override
  int compareTo(FhirTime other) => (this > other ?? false)
      ? 1
      : (this < other ?? false)
          ? -1
          : 0;

  // Serialization methods
  @override
  String toString() => value;
  @override
  String toJson() => value;
  @override
  String toYaml() => value;
  @override
  String toJsonString() => jsonEncode(toJson());

  // Clone and copyWith methods
  @override
  FhirTime clone() => FhirTime(value, element?.clone() as Element?);

  @override
  FhirTime setElement(String name, dynamic elementValue) {
    return FhirTime(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirTime copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirTime(
      newValue ?? value,
      element?.copyWith(
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        children: children,
        namedChildren: namedChildren,
      ),
    );
  }
}
