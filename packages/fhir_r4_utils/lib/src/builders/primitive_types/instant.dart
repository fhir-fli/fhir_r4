part of 'primitive_types.dart';

/// Extension to convert a [DateTime] to a [FhirInstantBuilder].
extension FhirInstantBuilderExtension on DateTime {
  /// Converts a [DateTime] to a [FhirInstantBuilder].
  FhirInstantBuilder get toFhirInstantBuilder =>
      FhirInstantBuilder.fromDateTime(this);
}

/// Extension to convert a [String] to a [FhirInstantBuilder].
extension FhirInstantBuilderStringExtension on String {
  /// Converts a [String] to a [FhirInstantBuilder].
  FhirInstantBuilder get toFhirInstantBuilder =>
      FhirInstantBuilder.fromString(this);
}

/// [FhirInstantBuilder] represents an instant in time as defined
/// by the FHIR spec.
class FhirInstantBuilder extends FhirDateTimeBaseBuilder
    implements
        EffectiveXObservationBuilder,
        ValueXParametersParameterBuilder,
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
  /// Creates empty [FhirInstantBuilder] object
  factory FhirInstantBuilder.empty() => FhirInstantBuilder.fromBase(
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
        element: ElementBuilder.empty(),
      );

  /// Factory constructor to create a [FhirInstantBuilder] from JSON input.
  factory FhirInstantBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? ElementBuilder.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirInstantBuilder.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirInstantBuilder.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBaseBuilder.constructor<FhirInstantBuilder>(
        element: element,
      ) as FhirInstantBuilder;
    } else {
      throw const FormatException(
        'Invalid input for FhirInstantBuilder: '
        'Input must be a String or DateTime.',
      );
    }
  }

  /// Private underscore constructor.
  /// Notice it calls `super._internal(...)` with the final fields.
  /// We do NO extra runtime logic here—just assignment.
  FhirInstantBuilder._({
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
  factory FhirInstantBuilder.fromBase({
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
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'DateTime',
  }) {
    // If you need any specialized logic, do it here.
    // Otherwise, just pass everything to the private constructor:
    return FhirInstantBuilder._(
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

  /// Factory constructor to create a [FhirInstantBuilder]
  /// from individual units.
  factory FhirInstantBuilder.fromUnits({
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
    ElementBuilder? element,
  }) =>
      FhirDateTimeBaseBuilder.fromUnits<FhirInstantBuilder>(
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
      ) as FhirInstantBuilder;

  /// Factory constructor to create a [FhirInstantBuilder] from a [String].
  factory FhirInstantBuilder.fromString(
    String input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    String? objectPath,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirInstantBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirInstantBuilder;

  /// Factory constructor to create a [FhirInstantBuilder] from a [DateTime].
  factory FhirInstantBuilder.fromDateTime(
    DateTime input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirInstantBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirInstantBuilder;

  /// Factory constructor to create [FhirInstantBuilder] from YAML input.
  static FhirInstantBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirInstantBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirInstantBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirInstantBuilder cannot be constructed from the provided '
              'input, it must be a YAML string or map.',
            );

  /// Tries to parse a value into a [FhirInstantBuilder].
  ///
  /// Supports String and DateTime inputs.
  static FhirInstantBuilder? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirInstantBuilder.fromDateTime(value);
      } else if (value is String) {
        return FhirInstantBuilder.fromString(value);
      }
    } catch (_) {
      return null;
    }
    return null;
  }

  /// Returns the FHIR type as 'instant'.
  @override
  String get fhirType => 'instant';

  /// Hash code based on the value of the [FhirInstantBuilder].
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirInstantBuilder &&
      other.value == value &&
      other.element == element;

  /// Compares two [FhirInstantBuilder] objects for equality.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks equality between [FhirInstantBuilder] and other types.
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration to a [FhirInstantBuilder].
  FhirInstantBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Subtracts a duration from a [FhirInstantBuilder].
  FhirInstantBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Subtracts a duration from a [FhirInstantBuilder].
  FhirInstantBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Adds a duration to a [FhirInstantBuilder] using the `+` operator.
  @override
  FhirInstantBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Subtracts a duration from a [FhirInstantBuilder] using the `-` operator.
  @override
  FhirInstantBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Clones the [FhirInstantBuilder] object.
  @override
  FhirInstantBuilder clone() => FhirInstantBuilder.fromJson(toJson());

  /// Converts this instance to a [FhirInstant] object
  @override
  FhirInstant build() => FhirInstant.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Creates a copy of the [FhirInstantBuilder],
  /// allowing modifications to properties.
  @override
  FhirInstantBuilder copyWith({
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
    return FhirDateTimeBaseBuilder.constructor<FhirInstantBuilder>(
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
    ) as FhirInstantBuilder;
  }

  /// Returns a new [FhirInstantBuilder] with extensions disallowed.
  FhirInstantBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirInstantBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirInstantBuilder] object
  @override
  FhirInstantBuilder clear({
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirInstantBuilder.fromString(
      valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
