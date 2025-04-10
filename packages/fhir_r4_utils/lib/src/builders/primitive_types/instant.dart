part of 'primitive_types.dart';

/// Extension to convert a [DateTime] to a [FhirInstantBuilder].
extension FhirInstantBuilderExtension on DateTime {
  /// Converts a [DateTime] to a [FhirInstantBuilder].
  FhirInstantBuilder get toFhirInstantBuilder =>
      FhirInstantBuilder.fromDateTime(this);
}

/// Extension to convert a [String] to a [FhirInstantBuilder].
extension FhirInstantStringBuilderExtension on String {
  /// Converts a [String] to a [FhirInstantBuilder].
  FhirInstantBuilder get toFhirInstantBuilder =>
      FhirInstantBuilder.fromString(this);
}

/// [FhirInstantBuilder] represents an instant in time (full date/time with second precision and timezone).
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBaseBuilder].
  FhirInstantBuilder._({
    required super.valueString,
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

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirInstantBuilder] from the base fields.
  factory FhirInstantBuilder.fromBase({
    required String? valueString,
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
    String objectPath = 'DateTime',
  }) {
    return FhirInstantBuilder._(
      valueString: valueString,
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

  /// Constructs a [FhirInstantBuilder] from individual date/time components.
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

  /// Constructs a [FhirInstantBuilder] from a raw string.
  factory FhirInstantBuilder.fromString(
    String valueString, {
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
        input: valueString,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirInstantBuilder;

  /// Constructs a [FhirInstantBuilder] from a Dart [DateTime].
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

  /// Creates an empty [FhirInstantBuilder].
  factory FhirInstantBuilder.empty() => FhirInstantBuilder.fromBase(
        valueString: null,
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

  /// Creates a [FhirInstantBuilder] from JSON.
  factory FhirInstantBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? ElementBuilder.fromJson(json['_value'] as Map<String, dynamic>)
        : null;
    final objectPath = json['objectPath'] as String?;
    if (value is String) {
      return FhirInstantBuilder.fromString(
        value,
        element: element,
        objectPath: objectPath,
      );
    } else if (value is DateTime) {
      return FhirInstantBuilder.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBaseBuilder.constructor<FhirInstantBuilder>(
        element: element,
      ) as FhirInstantBuilder;
    } else {
      throw const FormatException(
        'Invalid FhirInstant JSON: must be a String or DateTime.',
      );
    }
  }

  /// Creates a [FhirInstantBuilder] from YAML.
  static FhirInstantBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirInstantBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirInstantBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirInstant cannot be constructed from provided YAML input.',
            );

  /// Tries to parse [value] into a [FhirInstantBuilder].
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

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  @override
  String get fhirType => 'instant';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirInstantBuilder &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirInstantBuilder].
  ///
  /// The `plus` method returns a new [FhirInstantBuilder] with the
  /// duration added.
  FhirInstantBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// The `minus` method returns a new [FhirInstantBuilder] with the
  /// duration subtracted.
  FhirInstantBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// The `operator +` method returns a new [FhirInstantBuilder] with the
  /// duration added.
  @override
  FhirInstantBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// The `operator -` method returns a new [FhirInstantBuilder] with the
  /// duration subtracted.
  @override
  FhirInstantBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// The `subtract` method is an alias for the `minus` method.
  FhirInstantBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirInstantBuilder>(this, other)
          as FhirInstantBuilder;

  /// Clone
  @override
  FhirInstantBuilder clone() => FhirInstantBuilder.fromJson(toJson());

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirInstant build() => FhirInstant.fromJson(toJson());

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new [FhirInstantBuilder] instance with updated properties.
  @override
  FhirInstantBuilder copyWith({
    dynamic newValue,
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
      input: newValue ?? valueString,
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

  /// Shorthand to set `disallowExtensions = true`.
  FhirInstantBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object.
  @override
  FhirInstantBuilder createProperty(String propertyName) => this;

}
