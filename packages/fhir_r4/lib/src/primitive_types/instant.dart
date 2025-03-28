part of 'primitive_types.dart';

/// Extension to convert a [DateTime] to a [FhirInstant].
extension FhirInstantExtension on DateTime {
  /// Converts a [DateTime] to a [FhirInstant].
  FhirInstant get toFhirInstant => FhirInstant.fromDateTime(this);
}

/// Extension to convert a [String] to a [FhirInstant].
extension FhirInstantStringExtension on String {
  /// Converts a [String] to a [FhirInstant].
  FhirInstant get toFhirInstant => FhirInstant.fromString(this);
}

/// [FhirInstant] represents an instant in time as defined by the FHIR spec.
class FhirInstant extends FhirDateTimeBase
    implements
        EffectiveXObservation,
        ValueXParametersParameter,
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
  /// Private underscore constructor.
  /// Notice it calls `super._internal(...)` with the final fields.
  /// We do NO extra runtime logic here—just assignment.
  FhirInstant._({
    required super.validatedValue,
    required super.year,
    required super.month,
    required super.day,
    required super.hour,
    required super.minute,
    required super.second,
    required super.millisecond,
    required super.microsecond,
    required super.timeZoneOffset,
    required super.isUtc,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Instant',
  }) : super._();

  /// Public **factory** that replaces your old `fromBase` constructor logic.
  /// We parse or assign the provided fields, then call the private underscore.
  factory FhirInstant.fromBase({
    required String? value,
    required int? year,
    required int? month,
    required int? day,
    required int? hour,
    required int? minute,
    required int? second,
    required int? millisecond,
    required String? microsecond,
    required num? timeZoneOffset,
    required bool isUtc,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'DateTime',
  }) {
    // If you need any specialized logic, do it here.
    // Otherwise, just pass everything to the private constructor:
    return FhirInstant._(
      validatedValue: value,
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
      microsecond: microsecond,
      timeZoneOffset: timeZoneOffset,
      isUtc: isUtc,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirInstant] from individual units.
  factory FhirInstant.fromUnits({
    required int year,
    required int month,
    required int day,
    required int hour,
    required int minute,
    required int second,
    required num timeZoneOffset,
    int? millisecond,
    int? microsecond,
    bool? isUtc,
    Element? element,
  }) =>
      FhirDateTimeBase.fromUnits<FhirInstant>(
        year: year,
        month: month,
        day: day,
        hour: hour,
        minute: minute,
        second: second,
        millisecond: millisecond,
        microsecond: microsecond,
        timeZoneOffset: timeZoneOffset,
        isUtc: isUtc ?? false,
        element: element,
      ) as FhirInstant;

  /// Factory constructor to create a [FhirInstant] from a [String].
  factory FhirInstant.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) =>
      FhirDateTimeBase.constructor<FhirInstant>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirInstant;

  /// Factory constructor to create a [FhirInstant] from a [DateTime].
  factory FhirInstant.fromDateTime(
    DateTime input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBase.constructor<FhirInstant>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirInstant;

  /// Creates empty [FhirInstant] object
  factory FhirInstant.empty() => FhirInstant.fromBase(
        value: null,
        year: null,
        month: null,
        day: null,
        hour: null,
        minute: null,
        second: null,
        millisecond: null,
        microsecond: null,
        timeZoneOffset: null,
        isUtc: false,
        element: Element.empty(),
      );

  /// Factory constructor to create a [FhirInstant] from JSON input.
  factory FhirInstant.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirInstant.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirInstant.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBase.constructor<FhirInstant>(
        element: element,
      ) as FhirInstant;
    } else {
      throw const FormatException(
        'Invalid input for FhirInstant: Input must be a String or DateTime.',
      );
    }
  }

  /// Factory constructor to create [FhirInstant] from YAML input.
  static FhirInstant fromYaml(dynamic yaml) => yaml is String
      ? FhirInstant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirInstant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirInstant cannot be constructed from the provided input,'
              ' it must be a YAML string or map.',
            );

  /// Tries to parse a value into a [FhirInstant].
  ///
  /// Supports String and DateTime inputs.
  static FhirInstant? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirInstant.fromDateTime(value);
      } else if (value is String) {
        return FhirInstant.fromString(value);
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  /// Returns the FHIR type as 'instant'.
  @override
  String get fhirType => 'instant';

  /// Hash code based on the value of the [FhirInstant].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirInstant && other.value == value && other.element == element;

  /// Compares two [FhirInstant] objects for equality.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirInstant] and other types.
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration to a [FhirInstant].
  FhirInstant plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// Subtracts a duration from a [FhirInstant].
  FhirInstant subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// Subtracts a duration from a [FhirInstant].
  FhirInstant minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// Adds a duration to a [FhirInstant] using the `+` operator.
  @override
  FhirInstant operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// Subtracts a duration from a [FhirInstant] using the `-` operator.
  @override
  FhirInstant operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// Clones the [FhirInstant] object.
  @override
  FhirInstant clone() => FhirInstant.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Creates a copy of the [FhirInstant], allowing modifications to properties.
  @override
  FhirInstant copyWith({
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
    return FhirDateTimeBase.constructor<FhirInstant>(
      input: value ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    ) as FhirInstant;
  }

  /// Returns a new [FhirInstant] with extensions disallowed.
  FhirInstant noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirInstant createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirInstant] object
  @override
  FhirInstant clear({
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirInstant.fromString(
      valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
