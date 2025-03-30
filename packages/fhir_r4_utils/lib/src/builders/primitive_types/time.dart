part of 'primitive_types.dart';

/// Extension on String to convert a String to [FhirTimeBuilder].
extension FhirTimeBuilderExtension on String {
  /// Converts a String to a [FhirTimeBuilder] object.
  FhirTimeBuilder get toFhirTimeBuilder => FhirTimeBuilder(this);
}

/// Class to handle FHIR time values.
/// Inherits from [PrimitiveTypeBuilder] and implements [Comparable].
class FhirTimeBuilder extends PrimitiveTypeBuilder<String>
    implements
        Comparable<FhirTimeBuilder>,
        ValueXContractAnswerBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXParametersParameterBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor that assigns a validated time (or null) to
  /// `super._(value: validatedValue)`. It also checks if both [value] and
  /// [element] are null, throwing an [ArgumentError] if so.
  FhirTimeBuilder._({
    required String? validatedValue,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Time',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirTimeBuilder');
    }
  }

  /// **Single public factory constructor** that accepts a [String?] [input].
  /// - Validates via `_validateTime(input)` if not null
  /// - Calls the private underscore constructor.
  // ignore: sort_unnamed_constructors_first
  factory FhirTimeBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Time',
  }) {
    final validated = _validateTime(input);
    return FhirTimeBuilder._(
      validatedValue: validated,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory method to construct [FhirTimeBuilder] from time units (hour, minute,
  /// second, millisecond).
  factory FhirTimeBuilder.fromUnits({
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
    return FhirTimeBuilder(timeString);
  }

  /// Creates empty [FhirTimeBuilder] object
  factory FhirTimeBuilder.empty() =>
      FhirTimeBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirTimeBuilder]
  /// from JSON.
  factory FhirTimeBuilder.fromJson(Map<String, dynamic> json) {
    final val = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Time';
    return FhirTimeBuilder(val, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirTimeBuilder] from YAML.
  factory FhirTimeBuilder.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirTimeBuilder.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirTimeBuilder.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid YAML format for FhirTimeBuilder',
              );
  }

  /// Method to attempt parsing the input into a [FhirTimeBuilder]. Returns [null] if
  /// parsing fails.
  static FhirTimeBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirTimeBuilder(input);
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

  /// Element property
  @override
  ElementBuilder? element;

  /// ID property
  @override
  FhirStringBuilder? id;

  /// Extensions property
  @override
  List<FhirExtensionBuilder>? extension_;

  /// DisallowExtensions property
  @override
  bool? disallowExtensions;

  /// ObjectPath property
  @override
  String? objectPath;

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
  /// current [FhirTimeBuilder] and returns a new [FhirTimeBuilder] with the updated value.
  FhirTimeBuilder plus({
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
    return FhirTimeBuilder.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  /// Subtracts the given time units (hours, minutes, seconds, milliseconds)
  /// from the current [FhirTimeBuilder] and returns a new [FhirTimeBuilder] with the updated
  /// value.
  FhirTimeBuilder subtract({
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

    return FhirTimeBuilder.fromUnits(
      hour: newHours,
      minute: newMinutes,
      second: newSeconds,
      millisecond: newMilliseconds,
    );
  }

  /// Private method to compare this [FhirTimeBuilder] with another
  /// [FhirTimeBuilder] or [String] using a specified [Comparator].
  bool? _compare(Comparator comparator, Object other) {
    final rhs = other is FhirTimeBuilder
        ? other
        : other is String
            ? FhirTimeBuilder.tryParse(other)
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

  /// Hash code for the [FhirTimeBuilder] based on the value.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirTimeBuilder &&
      other.value == value &&
      other.element == element;

  /// Equality operator for comparing two [FhirTimeBuilder] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => _compare(Comparator.equal, other) ?? false;

  /// Checks equality between this [FhirTimeBuilder]
  /// and another [FhirTimeBuilder].
  @override
  bool equals(Object other) => _compare(Comparator.equal, other) ?? false;

  /// Greater-than comparison operator for comparing two
  /// [FhirTimeBuilder] objects.
  bool? operator >(Object other) => _compare(Comparator.greaterThan, other);

  /// Greater-than-or-equal comparison operator for two
  /// [FhirTimeBuilder] objects.
  bool? operator >=(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Less-than comparison operator for comparing two [FhirTimeBuilder] objects.
  bool? operator <(Object other) => _compare(Comparator.lessThan, other);

  /// Less-than-or-equal comparison operator for two [FhirTimeBuilder] objects.
  bool? operator <=(Object other) => _compare(Comparator.lessThanEqual, other);

  /// Checks if this [FhirTimeBuilder] is after another [FhirTimeBuilder].
  bool? isAfter(Object other) => _compare(Comparator.greaterThan, other);

  /// Checks if this [FhirTimeBuilder] is before another [FhirTimeBuilder].
  bool? isBefore(Object other) => _compare(Comparator.lessThan, other);

  /// Checks if this [FhirTimeBuilder] is the same or after
  /// another [FhirTimeBuilder].
  bool? isSameOrAfter(Object other) =>
      _compare(Comparator.greaterThanEqual, other);

  /// Checks if this [FhirTimeBuilder] is the same or before
  /// another [FhirTimeBuilder].
  bool? isSameOrBefore(Object other) =>
      _compare(Comparator.lessThanEqual, other);

  /// Checks if this [FhirTimeBuilder] is the same as another [FhirTimeBuilder].
  bool? isEqual(Object other) => _compare(Comparator.equal, other);

  /// Checks if this [FhirTimeBuilder]
  /// is equivalent to another [FhirTimeBuilder].
  bool? isEquivalent(Object other) => _compare(Comparator.equivalent, other);

  /// Comparison method to compare this [FhirTimeBuilder]
  /// with another [FhirTimeBuilder].
  @override
  int compareTo(FhirTimeBuilder other) => (this > other ?? false)
      ? 1
      : (this < other ?? false)
          ? -1
          : 0;

  /// Converts [FhirTimeBuilder] to a String.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  /// Converts this instance to a [FhirTime] object
  @override
  FhirTime build() => FhirTime.fromJson(toJson());

  /// Converts [FhirTimeBuilder] to a JSON map.
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value,
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Creates a copy of the current [FhirTimeBuilder]
  /// with optional new properties.
  @override
  FhirTimeBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    return FhirTimeBuilder(
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
      objectPath: objectPath ?? this.objectPath,
    );
  }

  /// Returns a new [FhirTimeBuilder] with extensions disallowed.
  FhirTimeBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a clone of the current [FhirTimeBuilder].
  @override
  FhirTimeBuilder clone() =>
      FhirTimeBuilder(value, element: element?.clone() as ElementBuilder?);

  /// Updates the precision of the [FhirTimeBuilder]
  /// to the specified [precision].
  ///
  /// If the current [FhirTimeBuilder] has a higher precision than requested,
  /// the excess precision is truncated. If the current [FhirTimeBuilder] has
  /// a lower precision than requested, missing parts are filled with `0`.
  ///
  /// Throws an [ArgumentError] if the requested precision is not a valid
  /// time precision.
  FhirTimeBuilder adjustToPrecision(TemporalPrecisionEnum precision) {
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
        return FhirTimeBuilder.fromUnits(hour: currentHour);
      case TemporalPrecisionEnum.minute:
        return FhirTimeBuilder.fromUnits(
          hour: currentHour,
          minute: currentMinute,
        );
      case TemporalPrecisionEnum.second:
        return FhirTimeBuilder.fromUnits(
          hour: currentHour,
          minute: currentMinute,
          second: currentSecond,
        );
      case TemporalPrecisionEnum.millisecond:
        return FhirTimeBuilder.fromUnits(
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
  FhirTimeBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirTimeBuilder] object
  @override
  FhirTimeBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirTimeBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
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
