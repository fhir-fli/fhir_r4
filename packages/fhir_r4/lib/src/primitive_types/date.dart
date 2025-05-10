part of 'primitive_types.dart';

/// Extension on [DateTime] to convert to a [FhirDate].
extension FhirDateExtension on DateTime {
  /// Converts [DateTime] to [FhirDate].
  FhirDate get toFhirDate => FhirDate.fromDateTime(this);
}

/// Extension on [String] to convert to a [FhirDate].
extension FhirDateStringExtension on String {
  /// Converts [String] to [FhirDate].
  FhirDate get toFhirDate => FhirDate.fromString(this);
}

/// [FhirDate] represents a date-only type in FHIR
/// (potentially partial, e.g. YYYY, YYYY-MM, or YYYY-MM-DD).
class FhirDate extends FhirDateTimeBase
    implements
        ValueXAdministrableProductDefinitionProperty,
        TimingXClaimSupportingInfo,
        ServicedXClaimItem,
        ServicedXClaimResponseAddItem,
        ValueXContractAnswer,
        ServicedXCoverageEligibilityRequest,
        ServicedXCoverageEligibilityResponse,
        TimingXExplanationOfBenefitSupportingInfo,
        ServicedXExplanationOfBenefitItem,
        ServicedXExplanationOfBenefitAddItem,
        BornXFamilyMemberHistory,
        DeceasedXFamilyMemberHistory,
        DueXGoalTarget,
        ValueXManufacturedItemDefinitionProperty,
        ValueXMedicinalProductDefinitionCharacteristic,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        DefaultValueXStructureMapSource,
        ValueXSubstanceDefinitionProperty,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension,
        TimingXTriggerDefinition,
        StartXGoal {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor delegating to [FhirDateTimeBase].
  const FhirDate._({
    required super.valueString,
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirDate] from the base fields.
  factory FhirDate.fromBase({
    required String? valueString,
    required int? year,
    required int? month,
    required int? day,
    required bool isUtc,
    num? timeZoneOffset,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    return FhirDate._(
      valueString: valueString,
      year: year,
      month: month,
      day: day,
      isUtc: isUtc,
      timeZoneOffset: timeZoneOffset,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Creates a [FhirDate] from individual date components
  /// (year, [month], [day]).
  factory FhirDate.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
    Element? element,
  }) =>
      FhirDateTimeBase.fromUnits<FhirDate>(
        year: year,
        month: month,
        day: day,
        isUtc: isUtc ?? false,
        element: element,
      ) as FhirDate;

  /// Creates a [FhirDate] from a raw string.
  factory FhirDate.fromString(
    String input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTimeBase.constructor<FhirDate>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
      ) as FhirDate;

  /// Creates a [FhirDate] from a [DateTime].
  factory FhirDate.fromDateTime(
    DateTime input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) =>
      FhirDateTimeBase.constructor<FhirDate>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
      ) as FhirDate;

  /// Creates a [FhirDate] from JSON.
  factory FhirDate.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? Element.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirDate.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirDate.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBase.constructor<FhirDate>(
        element: element,
      ) as FhirDate;
    } else {
      throw const FormatException(
        'Invalid input for FhirDate: must be a String or DateTime',
      );
    }
  }

  /// Creates a [FhirDate] from YAML input.
  static FhirDate fromYaml(dynamic yaml) => yaml is String
      ? FhirDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDate cannot be constructed from provided YAML input.',
            );

  /// Tries to parse [value] into a [FhirDate].
  static FhirDate? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDate.fromDateTime(value);
      } else if (value is String) {
        return FhirDate.fromString(value);
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
  String get fhirType => 'date';

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => valueString.hashCode;

  @override
  bool equalsDeep(FhirBase? other) {
    return other is FhirDate &&
        other.valueString == valueString &&
        ((element == null && other.element == null) ||
            (element != null && element!.equalsDeep(other.element)));
  }

  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Arithmetic
  ///
  /// Adds or subtracts an [ExtendedDuration] to/from this [FhirDate].
  ///
  /// [ExtendedDuration] is a custom class that represents a duration of time.
  /// The `plus` and `minus` methods are used to add or subtract the duration
  /// from the [FhirDate].
  ///
  /// The `operator +` and `operator -` methods are overridden to provide
  /// shorthand syntax for adding or subtracting the duration.
  ///

  /// The `plus` method returns a new [FhirDate] with the duration added.
  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// The `minus` method returns a new [FhirDate] with the duration subtracted.
  FhirDate minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// The `operator +` method returns a new [FhirDate] with the duration added.
  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// The `operator -` method returns a new [FhirDate] with the
  /// duration subtracted.
  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// The `subtract` method is an alias for the `minus` method.
  FhirDate subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// Clone
  @override
  FhirDate clone() => copyWith();

  /// JSON
  @override
  Map<String, dynamic> toJson() => {
        if (valueString?.isNotEmpty ?? false) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  // --------------------------------------------------------------------------
  // copyWith
  // --------------------------------------------------------------------------

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirDateCopyWithImpl<FhirDate> get copyWith =>
      $FhirDateCopyWithImpl<FhirDate>(this, (value) => value);

  /// Shorthand to set `disallowExtensions = true`.
  FhirDate noExtensions() => copyWith(disallowExtensions: true);
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirDateCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirDateCopyWithImpl(this._value, this._then);

  final FhirDate _value;
  final T Function(FhirDate) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirDateTimeBase.constructor<FhirDate>(
        input:
            identical(newValue, fhirSentinel) ? _value.valueString : newValue,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ) as FhirDate,
    );
  }
}
