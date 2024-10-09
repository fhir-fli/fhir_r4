import 'dart:convert';
import 'package:yaml/yaml.dart';
import '../../../fhir_r4.dart';

extension FhirTimeExtension on String {
  FhirTime get toFhirTime => FhirTime(this);
}

class FhirTime extends PrimitiveType<String> implements Comparable<FhirTime> {
  final String _valueString;
  final String? _valueTime;
  final bool _isValid;

  FhirTime._(this._valueString, this._valueTime, this._isValid,
      {super.element});

  factory FhirTime(dynamic inValue, [Element? element]) {
    if (inValue is String &&
        RegExp(r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$')
            .hasMatch(inValue)) {
      return FhirTime._(inValue, inValue, true, element: element);
    } else {
      return FhirTime._(inValue.toString(), null, false, element: element);
    }
  }

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

  @override
  bool get isValid => _isValid;

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
      : int.tryParse(_valueTime.split(':')[2].split('.')[1]);

  @override
  String toString() => _valueString;

  @override
  String toJson() => _valueString;

  @override
  String toYaml() => _valueString;

  @override
  String toJsonString() => jsonEncode(toJson());

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

  bool? _compare(Comparator comparator, Object o) {
    final FhirTime? rhs = o is FhirTime
        ? o
        : o is String
            ? FhirTime(o)
            : null;

    if (rhs == null || !rhs.isValid || !isValid) {
      throw InvalidTypes<FhirTime>('Invalid comparison between values.');
    }

    final List<String> lhsTime = _valueString.split(':');
    final List<String> rhsTime = rhs._valueString.split(':');

    for (int i = 0; i < lhsTime.length; i++) {
      final int lhsPart = int.parse(lhsTime[i]);
      final int rhsPart = int.parse(rhsTime[i]);
      switch (comparator) {
        case Comparator.eq:
          if (lhsPart != rhsPart) {
            return false;
          }
        case Comparator.gt:
          if (lhsPart > rhsPart) {
            return true;
          }
          if (lhsPart < rhsPart) {
            return false;
          }
        case Comparator.lt:
          if (lhsPart < rhsPart) {
            return true;
          }
          if (lhsPart > rhsPart) {
            return false;
          }
        case Comparator.gte:
          if (lhsPart > rhsPart) {
            return true;
          }
          if (lhsPart < rhsPart) {
            return false;
          }
        case Comparator.lte:
          if (lhsPart < rhsPart) {
            return true;
          }
          if (lhsPart > rhsPart) {
            return false;
          }
      }
    }

    return comparator == Comparator.eq;
  }

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

  @override
  FhirTime clone() => FhirTime.fromJson(toJson());

  @override
  FhirTime setElement(String name, dynamic elementValue) {
    return FhirTime(value, element?.setProperty(name, elementValue));
  }

  @override
  FhirTime copyWith({
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    return FhirTime._(
      _valueString,
      _valueTime,
      _isValid,
      element: element?.copyWith(
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
