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

/// [FhirInstant] represents an instant in time (full date/time with second precision and timezone).
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBase].
  FhirInstant._({
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

  /// Creates a [FhirInstant] from the base fields.
  factory FhirInstant.fromBase({
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
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'DateTime',
  }) {
    return FhirInstant._(
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

  /// Constructs a [FhirInstant] from individual date/time components (with mandatory precision).
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

  /// Constructs a [FhirInstant] from a raw string.
  factory FhirInstant.fromString(
    String valueString, {
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
        input: valueString,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirInstant;

  /// Constructs a [FhirInstant] from a Dart [DateTime].
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

  /// Creates an empty [FhirInstant].
  factory FhirInstant.empty() => FhirInstant.fromBase(
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
        element: Element.empty(),
      );

  /// Creates a [FhirInstant] from JSON.
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
        'Invalid FhirInstant JSON: must be a String or DateTime.',
      );
    }
  }

  /// Creates a [FhirInstant] from YAML.
  static FhirInstant fromYaml(dynamic yaml) => yaml is String
      ? FhirInstant.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirInstant.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirInstant cannot be constructed from provided YAML input.',
            );

  /// Tries to parse [value] into a [FhirInstant].
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

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  @override
  String get fhirType => 'instant';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirInstant &&
      other.valueString == valueString &&
      other.element == element;

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirInstant].
  ///
  /// [ExtendedDuration] is a custom class that represents a duration of time.
  /// The `plus` and `minus` methods are used to add or subtract the duration
  /// from the [FhirInstant].
  ///
  /// The `operator +` and `operator -` methods are overridden to provide
  /// shorthand syntax for adding or subtracting the duration.
  ///

  /// The `plus` method returns a new [FhirInstant] with the duration added.
  FhirInstant plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// The `minus` method returns a new [FhirInstant] with the
  /// duration subtracted.
  FhirInstant minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// The `operator +` method returns a new [FhirInstant] with the
  /// duration added.
  @override
  FhirInstant operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirInstant>(this, other) as FhirInstant;

  /// The `operator -` method returns a new [FhirInstant] with the
  /// duration subtracted.
  @override
  FhirInstant operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// The `subtract` method is an alias for the `minus` method.
  FhirInstant subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirInstant>(this, other) as FhirInstant;

  /// Clone
  @override
  FhirInstant clone() => FhirInstant.fromJson(toJson());

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new [FhirInstant] instance with updated properties.
  @override
  FhirInstant copyWith({
    dynamic newValue,
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
    ) as FhirInstant;
  }

  /// Shorthand to set `disallowExtensions = true`.
  FhirInstant noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirInstant createProperty(String propertyName) => this;

  /// Clears specified fields in a [FhirInstant].
  @override
  FhirInstant clear({
    bool value = false,
    bool element = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirInstant.fromBase(
      valueString: value ? null : valueString,
      year: value ? null : year,
      month: value ? null : month,
      day: value ? null : day,
      hour: value ? null : hour,
      minute: value ? null : minute,
      second: value ? null : second,
      millisecond: value ? null : millisecond,
      microsecond: value ? null : microsecond,
      timeZoneOffset: value ? null : timeZoneOffset,
      isUtc: value ? value : isUtc,
      element: element ? null : this.element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath!,
    );
  }
}
