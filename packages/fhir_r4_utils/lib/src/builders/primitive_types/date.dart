part of 'primitive_types.dart';

/// Extension on [DateTime] to convert to a [FhirDateBuilder].
extension FhirDateBuilderExtension on DateTime {
  /// Converts [DateTime] to [FhirDateBuilder].
  FhirDateBuilder get toFhirDateBuilder => FhirDateBuilder.fromDateTime(this);
}

/// Extension on [String] to convert to a [FhirDateBuilder].
extension FhirDateBuilderStringExtension on String {
  /// Converts [String] to [FhirDateBuilder].
  FhirDateBuilder get toFhirDateBuilder => FhirDateBuilder.fromString(this);
}

/// [FhirDateBuilder] represents FHIR-compliant dates, extending [FhirDateTimeBaseBuilder].
class FhirDateBuilder extends FhirDateTimeBaseBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        TimingXClaimSupportingInfoBuilder,
        ServicedXClaimItemBuilder,
        ServicedXClaimResponseAddItemBuilder,
        ValueXContractAnswerBuilder,
        ServicedXCoverageEligibilityRequestBuilder,
        ServicedXCoverageEligibilityResponseBuilder,
        TimingXExplanationOfBenefitSupportingInfoBuilder,
        ServicedXExplanationOfBenefitItemBuilder,
        ServicedXExplanationOfBenefitAddItemBuilder,
        BornXFamilyMemberHistoryBuilder,
        DeceasedXFamilyMemberHistoryBuilder,
        DueXGoalTargetBuilder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        MinValueXElementDefinitionBuilder,
        MaxValueXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder,
        TimingXTriggerDefinitionBuilder,
        StartXGoalBuilder {
  /// Private underscore constructor.
  /// Notice it calls `super._internal(...)` with the final fields.
  /// We do NO extra runtime logic here—just assignment.
  FhirDateBuilder._({
    required super.validatedValue,
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'Date',
  }) : super._();

  /// Public **factory** that replaces your old `fromBase` constructor logic.
  /// We parse or assign the provided fields, then call the private underscore.
  factory FhirDateBuilder.fromBase({
    required String? value,
    required int? year,
    required int? month,
    required int? day,
    required bool isUtc,
    num? timeZoneOffset,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Date',
  }) {
    return FhirDateBuilder._(
      validatedValue: value,
      year: year,
      month: month,
      day: day,
      timeZoneOffset: timeZoneOffset,
      isUtc: isUtc,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create a [FhirDateBuilder] from individual units.
  ///
  /// Requires [year], while [month], [day], and [isUtc] are optional.
  factory FhirDateBuilder.fromUnits({
    required int year,
    int? month,
    int? day,
    bool? isUtc,
    ElementBuilder? element,
  }) =>
      FhirDateTimeBaseBuilder.fromUnits<FhirDateBuilder>(
        year: year,
        month: month,
        day: day,
        isUtc: isUtc ?? false,
        element: element,
      ) as FhirDateBuilder;

  /// Factory constructor to create a [FhirDateBuilder] from a [String].
  factory FhirDateBuilder.fromString(
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
      FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirDateBuilder;

  /// Factory constructor to create a [FhirDateBuilder] from a [DateTime].
  factory FhirDateBuilder.fromDateTime(
    DateTime input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirDateBuilder;

  /// Element property
  ElementBuilder? element;

  /// ID property
  FhirStringBuilder? id;

  /// Extensions property
  List<FhirExtensionBuilder>? extension_;

  /// DisallowExtensions property
  bool? disallowExtensions;

  /// ObjectPath property
  String objectPath;

  /// Creates empty [FhirDateBuilder] object
  factory FhirDateBuilder.empty() => FhirDateBuilder.fromBase(
        value: null,
        year: null,
        month: null,
        day: null,
        isUtc: false,
        element: ElementBuilder.empty(),
      );

  /// Factory constructor to create a [FhirDateBuilder] from a JSON input.
  ///
  /// The input must be a [String], otherwise throws a [FormatException].
  factory FhirDateBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final element = json['_value'] is Map<String, dynamic>
        ? ElementBuilder.fromJson(json['_value'] as Map<String, dynamic>)
        : null;

    if (value is String) {
      return FhirDateBuilder.fromString(value, element: element);
    } else if (value is DateTime) {
      return FhirDateBuilder.fromDateTime(value, element: element);
    } else if (value == null) {
      return FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
        element: element,
      ) as FhirDateBuilder;
    } else {
      throw const FormatException(
        'Invalid input for FhirDateBuilder: Input must be a String?',
      );
    }
  }

  /// Factory constructor to create [FhirDateBuilder] from YAML
  static FhirDateBuilder fromYaml(dynamic yaml) => yaml is String
      ? FhirDateBuilder.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDateBuilder.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDateBuilder cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Tries to parse a value as [FhirDateBuilder], returns `null` if parsing fails.
  static FhirDateBuilder? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDateBuilder.fromDateTime(value);
      } else if (value is String) {
        return FhirDateBuilder.fromString(value);
      }
    } catch (e) {
      return null;
    }
    return null;
  }

  /// Returns the FHIR type as 'date'.
  @override
  String get fhirType => 'date';

  /// Overrides the [hashCode] method to generate a hash code based on the value
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => value.hashCode;

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirDateBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides the equality operator to compare two [FhirDateBuilder] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDateBuilder].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDateBuilder].
  FhirDateBuilder plus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDateBuilder].
  FhirDateBuilder subtract(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDateBuilder].
  FhirDateBuilder minus(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Adds an [ExtendedDuration] to the current [FhirDateBuilder] using the `+`
  /// operator.
  @override
  FhirDateBuilder operator +(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.plus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Subtracts an [ExtendedDuration] from the current [FhirDateBuilder] using the `-`
  /// operator.
  @override
  FhirDateBuilder operator -(ExtendedDuration other) =>
      FhirDateTimeBaseBuilder.minus<FhirDateBuilder>(this, other)
          as FhirDateBuilder;

  /// Clones the current [FhirDateBuilder] and returns a new instance.
  @override
  FhirDateBuilder clone() => FhirDateBuilder.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Copies the current [FhirDateBuilder], allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// metadata.
  @override
  FhirDateBuilder copyWith({
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
    return FhirDateTimeBaseBuilder.constructor<FhirDateBuilder>(
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
    ) as FhirDateBuilder;
  }

  /// Returns a new [FhirDateBuilder] with extensions disallowed.
  FhirDateBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object
  @override
  FhirDateBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirDateBuilder] object
  @override
  FhirDateBuilder clear({
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirDateBuilder.fromString(
      valueString,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
