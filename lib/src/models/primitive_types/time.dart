part of 'primitive_types.dart';

/// Extension on String to convert a String to [FhirTime].
extension FhirTimeExtension on String {
  /// Converts a String to a [FhirTime] object.
  FhirTime get toFhirTime => FhirTime(this);
}

/// Class to handle FHIR time values.
/// Inherits from [PrimitiveType] and implements [Comparable].
class FhirTime extends PrimitiveType<String>
    implements
        Comparable<FhirTime>,
        ValueXContractAnswer,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private underscore constructor that assigns a validated time (or null) to
  /// `super._(value: validatedValue)`. It also checks if both [value] and
  /// [element] are null, throwing an [ArgumentError] if so.
  FhirTime._({
    required String? validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Time',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirTime');
    }
  }

  /// **Single public factory constructor** that accepts a [String?] [input].
  /// - Validates via `_validateTime(input)` if not null
  /// - Calls the private underscore constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirTime(
    String? input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Time',
  }) {
    final validated = _validateTime(input);
    return FhirTime._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
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

  /// Creates empty [FhirTime] object
  factory FhirTime.empty() => FhirTime(null, element: Element.empty());

  /// Factory constructor to create [FhirTime] from JSON.
  factory FhirTime.fromJson(Map<String, dynamic> json) {
    final val = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Time';
    return FhirTime(val, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirTime] from YAML.
  factory FhirTime.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirTime.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirTime.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException('Invalid YAML format for FhirTime');
  }

  /// Method to attempt parsing the input into a [FhirTime]. Returns [null] if
  /// parsing fails.
  static FhirTime? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirTime(input);
      } catch (_) {
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
      return null;
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
            ? FhirTime.tryParse(other)
            : null;

    if (rhs == null) {
      return false;
    }

    if (value == null || rhs.value == null) {
      return null;
    }

    final lhsParts = value!.split(':');
    final rhsParts = rhs.value!.split(':');
    if (lhsParts.length != rhsParts.length) {
      return null;
    }

    for (var i = 0; i < lhsParts.length; i++) {
      final lhsValue = double.parse(lhsParts[i]);
      final rhsValue = double.parse(rhsParts[i]);

      switch (comparator) {
        case Comparator.equal:
          if (lhsValue != rhsValue) {
            return false;
          }
        // continue checking remaining parts
        case Comparator.equivalent:
          if (lhsValue != rhsValue) {
            return false;
          }
        // continue checking
        case Comparator.greaterThan:
          if (lhsValue < rhsValue) {
            return false;
          } else if (lhsValue > rhsValue) {
            return true;
          }
        case Comparator.lessThan:
          if (lhsValue > rhsValue) {
            return false;
          } else if (lhsValue < rhsValue) {
            return true;
          }
        case Comparator.greaterThanEqual:
          if (lhsValue < rhsValue) {
            return false;
          } else if (lhsValue > rhsValue) {
            return true;
          }
        case Comparator.lessThanEqual:
          if (lhsValue > rhsValue) {
            return false;
          } else if (lhsValue < rhsValue) {
            return true;
          }
      }
    }

    return comparator == Comparator.equal ||
        comparator == Comparator.equivalent ||
        comparator == Comparator.greaterThanEqual ||
        comparator == Comparator.lessThanEqual;
  }

  /// Hash code for the [FhirTime] based on the value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirTime && other.value == value && other.element == element;

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
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  /// Converts [FhirTime] to a JSON map.
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
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirTime(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Returns a new [FhirTime] with extensions disallowed.
  FhirTime noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a clone of the current [FhirTime].
  @override
  FhirTime clone() => FhirTime(value, element: element?.clone() as Element?);

  /// Updates the precision of the [FhirTime] to the specified [precision].
  ///
  /// If the current [FhirTime] has a higher precision than requested,
  /// the excess precision is truncated. If the current [FhirTime] has a lower
  /// precision than requested, missing parts are filled with `0`.
  ///
  /// Throws an [ArgumentError] if the requested precision is not a valid
  /// time precision.
  FhirTime adjustToPrecision(TemporalPrecisionEnum precision) {
    if (!precision.isValidTimePrecision) {
      throw ArgumentError(
        'Precision must be one of: hour, minute, second, millisecond.',
      );
    }

    final currentHour = hour ?? 0;
    final currentMinute = minute ?? 0;
    final currentSecond = second ?? 0;
    final currentMillisecond = millisecond ?? 0;

    // Adjust the time based on the requested precision.
    switch (precision) {
      case TemporalPrecisionEnum.hour:
        return FhirTime.fromUnits(hour: currentHour);
      case TemporalPrecisionEnum.minute:
        return FhirTime.fromUnits(
          hour: currentHour,
          minute: currentMinute,
        );
      case TemporalPrecisionEnum.second:
        return FhirTime.fromUnits(
          hour: currentHour,
          minute: currentMinute,
          second: currentSecond,
        );
      case TemporalPrecisionEnum.millisecond:
        return FhirTime.fromUnits(
          hour: currentHour,
          minute: currentMinute,
          second: currentSecond,
          millisecond: currentMillisecond,
        );
      case TemporalPrecisionEnum.year:
      case TemporalPrecisionEnum.month:
      case TemporalPrecisionEnum.day:
        throw ArgumentError('Unhandled precision: $precision');
    }
  }

  /// Creates an empty property in the object
  @override
  FhirTime createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirTime] object
  @override
  FhirTime clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirTime(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}

/// Extension on [TemporalPrecisionEnum] to check if it is a valid time
/// precision.
extension TimePrecisionCheck on TemporalPrecisionEnum {
  /// Checks if the [TemporalPrecisionEnum] is a valid time precision.
  bool get isValidTimePrecision =>
      this == TemporalPrecisionEnum.hour ||
      this == TemporalPrecisionEnum.minute ||
      this == TemporalPrecisionEnum.second ||
      this == TemporalPrecisionEnum.millisecond;
}
