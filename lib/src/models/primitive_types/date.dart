import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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

/// [FhirDate] represents FHIR-compliant dates, extending [FhirDateTimeBase].
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
  /// Factory constructor to create a [FhirDate] from individual units.
  ///
  /// Requires [year], while [month], [day], and [isUtc] are optional.
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

  /// Constructor from base units, used internally.
  FhirDate.fromBase({
    required super.value,
    required super.year,
    required super.month,
    required super.day,
    required super.isUtc,
    super.timeZoneOffset,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Date',
  });

  /// Factory constructor to create a [FhirDate] from a [String].
  factory FhirDate.fromString(
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
      FhirDateTimeBase.constructor<FhirDate>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
        objectPath: objectPath,
      ) as FhirDate;

  /// Factory constructor to create a [FhirDate] from a [DateTime].
  factory FhirDate.fromDateTime(
    DateTime input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) =>
      FhirDateTimeBase.constructor<FhirDate>(
        input: input,
        element: element,
        id: id,
        extension_: extension_,
        userData: userData,
        formatCommentsPre: formatCommentsPre,
        formatCommentsPost: formatCommentsPost,
        annotations: annotations,
      ) as FhirDate;

  /// Factory constructor to create a [FhirDate] from a JSON input.
  ///
  /// The input must be a [String], otherwise throws a [FormatException].
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
        'Invalid input for FhirDate: Input must be a String?',
      );
    }
  }

  /// Factory constructor to create [FhirDate] from YAML
  static FhirDate fromYaml(dynamic yaml) => yaml is String
      ? FhirDate.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirDate.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirDate cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Tries to parse a value as [FhirDate], returns `null` if parsing fails.
  static FhirDate? tryParse(dynamic value) {
    try {
      if (value is DateTime) {
        return FhirDate.fromDateTime(value);
      } else if (value is String) {
        return FhirDate.fromString(value);
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
  bool equalsDeep(FhirBase? o) =>
      o is FhirDate && o.value == value && o.element == element;

  /// Overrides the equality operator to compare two [FhirDate] objects.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Checks for equality between this object and another [FhirDate].
  @override
  bool equals(Object other) => isEqual(other) ?? false;

  /// Adds a duration ([ExtendedDuration]) to the current [FhirDate].
  FhirDate plus(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDate].
  FhirDate subtract(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// Subtracts a duration ([ExtendedDuration]) from the current [FhirDate].
  FhirDate minus(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// Adds an [ExtendedDuration] to the current [FhirDate] using the `+`
  /// operator.
  @override
  FhirDate operator +(ExtendedDuration other) =>
      FhirDateTimeBase.plus<FhirDate>(this, other) as FhirDate;

  /// Subtracts an [ExtendedDuration] from the current [FhirDate] using the `-`
  /// operator.
  @override
  FhirDate operator -(ExtendedDuration other) =>
      FhirDateTimeBase.minus<FhirDate>(this, other) as FhirDate;

  /// Clones the current [FhirDate] and returns a new instance.
  @override
  FhirDate clone() => FhirDate.fromJson(toJson());

  @override
  Map<String, dynamic> toJson() => {
        if (valueString.isNotEmpty) 'value': valueString,
        if (element != null) '_value': element?.toJson(),
      };

  /// Copies the current [FhirDate], allowing for changes to its properties.
  ///
  /// Supports changing the [value] and associated [element], as well as other
  /// metadata.
  @override
  FhirDate copyWith({
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
    return FhirDateTimeBase.constructor<FhirDate>(
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
    ) as FhirDate;
  }

  /// Returns a new [FhirDate] with extensions disallowed.
  FhirDate noExtensions() => copyWith(disallowExtensions: true);
}
