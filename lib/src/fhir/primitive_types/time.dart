import 'dart:convert';

import 'package:meta/meta.dart';
import 'package:yaml/yaml.dart';

import '../fhir_primitives.dart';

@immutable
class FhirTime extends PrimitiveType implements Comparable<FhirTime> {
  FhirTime._(this._valueString, this._valueTime, this._isValid);

  factory FhirTime(dynamic inValue) {
    if (inValue is String &&
        RegExp(r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$')
            .hasMatch(inValue)) {
      return FhirTime._(inValue, inValue, true);
    } else {
      return FhirTime._(inValue.toString(), null, false);
    }
  }

  factory FhirTime.fromUnits({
    dynamic hour,
    dynamic minute,
    dynamic second,
    dynamic millisecond,
  }) {
    String? timeString = hour?.toString().padLeft(2, '0');
    if (timeString != null && minute != null) {
      timeString += ':${minute.toString().padLeft(2, '0')}';
      if (second != null) {
        timeString += ':${second.toString().padLeft(2, '0')}';
        if (millisecond != null) {
          timeString += '.${millisecond.toString().padLeft(3, '0')}';
        }
      }
    }
    return timeString == null ? FhirTime('') : FhirTime(timeString);
  }

  factory FhirTime.fromJson(dynamic json) => FhirTime(json);

  factory FhirTime.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirTime.fromJson(jsonDecode(jsonEncode(loadYaml(yaml))));
    } else if (yaml is YamlMap) {
      return FhirTime.fromJson(jsonDecode(jsonEncode(yaml)));
    } else {
      throw YamlFormatException<FhirTime>(
        'FormatException: "$yaml" is not a valid Yaml string or YamlMap.',
      );
    }
  }

  @override
  String get fhirType => 'time';

  final String _valueString;
  final String? _valueTime;
  final bool _isValid;

  @override
  bool get isValid => _isValid;
  @override
  int get hashCode => _valueString.hashCode;
  @override
  String? get value => _valueTime;
  int? get hour => _valueTime?.split(':')[0] == null
      ? null
      : int.tryParse(_valueTime!.split(':')[0]);
  int? get minute => (_valueTime?.split(':').length ?? 0) <= 1 ||
          _valueTime?.split(':')[1] == null
      ? null
      : int.tryParse(_valueTime!.split(':')[1]);
  int? get second => (_valueTime?.split(':').length ?? 0) <= 2 ||
          _valueTime?.split(':')[2] == null
      ? null
      : int.tryParse(_valueTime!.split(':')[2].split('.')[0]);
  int? get millisecond => (_valueTime?.split(':').length ?? 0) <= 2 ||
          _valueTime?.split(':')[2] == null ||
          _valueTime!.split(':')[2].split('.').length <= 1
      ? null
      : int.tryParse(_valueTime!.split(':')[2].split('.')[1]);

  @override
  String toString() => _valueString;
  @override
  String toJson() => _valueString;
  @override
  String toYaml() => _valueString;
  @override
  String toJsonString() => jsonEncode(toJson());

  bool? _compare(Comparator comparator, Object o) {
    if (identical(this, o)) {
      switch (comparator) {
        case Comparator.eq:
          return true;
        case Comparator.gt:
          return false;
        case Comparator.gte:
          return true;
        case Comparator.lt:
          return false;
        case Comparator.lte:
          return true;
      }
    }

    final FhirTime? rhs = o is FhirTime
        ? o
        : o is String
            ? FhirTime(o)
            : null;

    if (rhs == null || !rhs.isValid || !isValid) {
      if (comparator == Comparator.eq && isValid) {
        return false;
      } else {
        throw InvalidTypes<FhirTime>('Two values were passed to the time '
            '"$comparator" comparison operator, '
            'they were not both valid FhirTime types\n'
            'Argument 1: $value (${value.runtimeType}): Valid - $isValid\n'
            'Argument 2: $o (${o.runtimeType}): Valid - false}');
      }
    }

    final List<String> lhsTime = toString().split(':');
    final List<String> rhsTime = o.toString().split(':');

    bool? comparePrecisionValue(
        Comparator comparator, String lhsValue, String rhsValue) {
      switch (comparator) {
        case Comparator.eq:
          if (num.parse(lhsValue) != num.parse(rhsValue)) {
            return false;
          }
        case Comparator.gt:
          if (num.parse(lhsValue) < num.parse(rhsValue)) {
            return false;
          } else if (num.parse(lhsValue) > num.parse(rhsValue)) {
            return true;
          }
        case Comparator.gte:
          if (num.parse(lhsValue) < num.parse(rhsValue)) {
            return false;
          } else if (num.parse(lhsValue) > num.parse(rhsValue)) {
            return true;
          }
        case Comparator.lt:
          if (num.parse(lhsValue) < num.parse(rhsValue)) {
            return true;
          } else if (num.parse(lhsValue) > num.parse(rhsValue)) {
            return false;
          }
        case Comparator.lte:
          if (num.parse(lhsValue) < num.parse(rhsValue)) {
            return true;
          } else if (num.parse(lhsValue) > num.parse(rhsValue)) {
            return false;
          }
      }
      return null;
    }

    final int timePrecision =
        lhsTime.length > rhsTime.length ? rhsTime.length : lhsTime.length;

    for (int i = 0; i < timePrecision; i++) {
      final bool? comparedValue =
          comparePrecisionValue(comparator, lhsTime[i], rhsTime[i]);
      if (comparedValue != null) {
        return comparedValue;
      }
    }

    if (lhsTime.length != rhsTime.length) {
      return null;
    }

    switch (comparator) {
      case Comparator.eq:
        return true;
      case Comparator.gt:
        return false;
      case Comparator.gte:
        return true;
      case Comparator.lt:
        return false;
      case Comparator.lte:
        return true;
    }
  }

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
    int? newMilliseconds =
        milliseconds == null ? millisecond : (millisecond ?? 0) - milliseconds;
    int? newSeconds = seconds == null ? second : (second ?? 0) - seconds;
    int? newMinutes = minutes == null ? minute : (minute ?? 0) - minutes;
    int? newHours = hours == null ? hour : (hour ?? 0) - hours;

    while ((newMilliseconds ?? 1) < 0) {
      newMilliseconds = (newMilliseconds ?? 0) + 1000;
      newSeconds = (newSeconds ?? 0) - 1;
    }

    while ((newSeconds ?? 1) < 0) {
      newSeconds = (newSeconds ?? 0) + 60;
      newMinutes = (newMinutes ?? 0) - 1;
    }

    while ((newMinutes ?? 1) < 0) {
      newMinutes = (newMinutes ?? 0) + 60;
      newHours = (newHours ?? 0) - 1;
    }

    while ((newHours ?? 1) < 0) {
      newHours = (newHours ?? 0) + 24;
    }
    newHours = (newHours ?? 0) % 24;

    return FhirTime.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  @override
  bool operator ==(Object other) => _compare(Comparator.eq, other) ?? false;

  bool? isEqual(Object other) => _compare(Comparator.eq, other);

  bool? operator >(Object other) => _compare(Comparator.gt, other);

  bool? operator >=(Object other) => _compare(Comparator.gte, other);

  bool? operator <(Object other) => _compare(Comparator.lt, other);

  bool? operator <=(Object other) => _compare(Comparator.lte, other);

  bool? isAfter(Object other) => _compare(Comparator.gt, other);

  bool? isBefore(Object other) => _compare(Comparator.lt, other);

  bool? isSameOrAfter(Object other) => _compare(Comparator.gte, other);

  bool? isSameOrBefore(Object other) => _compare(Comparator.lte, other);

  @override
  int compareTo(FhirTime other) => (this > other ?? false)
      ? 1
      : (this < other ?? false)
          ? -1
          : 0;

  @override
  FhirTime clone() => FhirTime.fromJson(toJson());
}
