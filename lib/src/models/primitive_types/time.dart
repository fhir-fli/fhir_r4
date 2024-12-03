import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension on String to convert a String to [FhirTime].
extension FhirTimeExtension on String {
  /// Converts a String to a [FhirTime] object.
  FhirTime get toFhirTime => FhirTime(this);
}

/// Class to handle FHIR time values.
/// Inherits from [PrimitiveType] and implements [Comparable].
class FhirTime extends PrimitiveType<String> implements Comparable<FhirTime> {
  /// Constructor that accepts a valid [String] input representing a time and
  /// validates the input. Optionally takes an [Element].
  FhirTime(String? input, [Element? element])
      : super(_validateTime(input), element) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory method to construct [FhirTime] from time units (hour, minute,
  /// second, millisecond).
  factory FhirTime.fromUnits({
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
  }) {
    var timeString = hour?.toString().padLeft(2, '0') ?? '';
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

  /// Factory method to construct [FhirTime] from JSON input. Validates the
  /// input and throws a [FormatException] if the input is not a valid String.

  /// Factory constructor to create from JSON with standardized keys
  factory FhirTime.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirTime(value, element);
  }

  /// Factory method to construct [FhirTime] from YAML input.
  factory FhirTime.fromYaml(String yaml) => FhirTime.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );

  /// Method to attempt parsing the input into a [FhirTime]. Returns [null] if
  /// parsing fails.
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

  /// Validates the time input using a regular expression. Throws a
  /// [FormatException] if the input is not valid.
  static String? _validateTime(String? input) {
    if (input == null) {
      return input;
    }
    final timeRegex = RegExp(
      r'^([01][0-9]|2[0-3])(:([0-5][0-9])(:([0-5][0-9]|60)(\.[0-9]+)?)?)?$',
    );
    if (timeRegex.hasMatch(input)) {
      return input;
    } else {
      throw FormatException('Invalid time format: $input');
    }
  }

  /// Returns the FHIR type, which is 'time' for this class.
  @override
  String get fhirType => 'time';

  /// Getter for the hour component of the time.
  int? get hour => value == null ? null : int.tryParse(value!.split(':')[0]);

  /// Getter for the minute component of the time.
  int? get minute => value == null
      ? null
      : (value!.split(':').length > 1)
          ? int.tryParse(value!.split(':')[1])
          : null;

  /// Getter for the second component of the time.
  int? get second => value == null
      ? null
      : (value!.split(':').length > 2)
          ? int.tryParse(value!.split(':')[2].split('.')[0])
          : null;

  /// Getter for the millisecond component of the time.
  int? get millisecond => value == null
      ? null
      : (value!.split('.').length > 1)
          ? int.tryParse(value!.split('.')[1])
          : null;

  /// Adds the given time units (hours, minutes, seconds, milliseconds) to the
  /// current [FhirTime] and returns a new [FhirTime] with the updated value.
  FhirTime plus({
    int hours = 0,
    int minutes = 0,
    int seconds = 0,
    int milliseconds = 0,
  }) {
    var newMilliseconds = (millisecond ?? 0) + milliseconds;
    var newSeconds = (second ?? 0) + seconds + (newMilliseconds ~/ 1000);
    newMilliseconds = newMilliseconds % 1000;
    var newMinutes = (minute ?? 0) + minutes + (newSeconds ~/ 60);
    newSeconds = newSeconds % 60;
    var newHours = (hour ?? 0) + hours + (newMinutes ~/ 60);
    newMinutes = newMinutes % 60;
    newHours = newHours % 24;
    return FhirTime.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  /// Subtracts the given time units (hours, minutes, seconds, milliseconds)
  /// from the current [FhirTime] and returns a new [FhirTime] with the updated
  /// value.
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

  /// Private method to compare this [FhirTime] with another [FhirTime] or
  /// [String] using a specified [Comparator].
  bool? _compare(Comparator comparator, Object other) {
    final rhs = other is FhirTime
        ? other
        : other is String
            ? FhirTime(other)
            : null;

    if (rhs == null) {
      return false;
    }

    if (value == null || rhs.value == null) {
      return null;
    }

    final lhsParts = value!.split(':');
    final rhsParts = rhs.value!.split(':');

    for (var i = 0; i < lhsParts.length; i++) {
      final lhsValue = double.parse(lhsParts[i]);
      final rhsValue = double.parse(rhsParts[i]);

      switch (comparator) {
        case Comparator.equal:
          if (lhsValue != rhsValue) {
            return false;
          }
        case Comparator.equivalent:
          if (lhsValue == rhsValue) {
            return true;
          }
        case Comparator.greaterThan:
          if (lhsValue > rhsValue) {
            return true;
          }
          if (lhsValue < rhsValue) {
            return false;
          }
        case Comparator.lessThan:
          if (lhsValue < rhsValue) {
            return true;
          }
          if (lhsValue > rhsValue) {
            return false;
          }
        case Comparator.greaterThanEqual:
          if (lhsValue >= rhsValue) {
            return true;
          }
          return false;
        case Comparator.lessThanEqual:
          if (lhsValue <= rhsValue) {
            return true;
          }
          return false;
      }
    }
    return comparator == Comparator.equal ||
        comparator == Comparator.equivalent;
  }

  /// Hash code for the [FhirTime] based on the value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  /// Equality operator for comparing two [FhirTime] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  /// Checks equality between this [FhirTime] and another [FhirTime].
  @override
  bool equals(Object other) => _compare(Comparator.equal, other) ?? false;

  /// Greater-than comparison operator for comparing two [FhirTime] objects.
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);

  /// Greater-than-or-equal comparison operator for two [FhirTime] objects.
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Less-than comparison operator for comparing two [FhirTime] objects.
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);

  /// Less-than-or-equal comparison operator for two [FhirTime] objects.
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  /// Checks if this [FhirTime] is after another [FhirTime].
  bool? isAfter(Object other) => _compare(Comparator.greaterThan, other);

  /// Checks if this [FhirTime] is before another [FhirTime].
  bool? isBefore(Object other) => _compare(Comparator.lessThan, other);

  /// Checks if this [FhirTime] is the same or after another [FhirTime].
  bool? isSameOrAfter(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Checks if this [FhirTime] is the same or before another [FhirTime].
  bool? isSameOrBefore(Object other) =>
      _compare(Comparator.lessThanEqual, other);

  /// Checks if this [FhirTime] is the same as another [FhirTime].
  bool? isEqual(Object other) => _compare(Comparator.equal, other);

  /// Checks if this [FhirTime] is equivalent to another [FhirTime].
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  /// Comparison method to compare this [FhirTime] with another [FhirTime].
  @override
  int compareTo(FhirTime other) => (this > other ?? false)
      ? 1
      : (this < other ?? false)
          ? -1
          : 0;

  /// Converts [FhirTime] to a String.
  @override
  String toString() => value ?? '';

  /// Converts [FhirTime] to a JSON string.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Creates a copy of the current [FhirTime] with optional new properties.
  @override
  FhirTime copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    return FhirTime(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }

  /// Creates a clone of the current [FhirTime].
  @override
  FhirTime clone() => FhirTime(value, element?.clone() as Element?);

  /// Sets an element on the [FhirTime] object.
  @override
  FhirTime setElement(String name, dynamic elementValue) {
    return FhirTime(value, element?.setProperty(name, elementValue));
  }
}
