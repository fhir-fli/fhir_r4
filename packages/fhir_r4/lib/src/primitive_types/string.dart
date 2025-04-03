part of 'primitive_types.dart';

/// Extension methods on [String] to easily convert to [FhirString].
extension FhirStringExtension on String {
  /// Returns a [FhirString] constructed from this [String].
  FhirString get toFhirString => FhirString(this);
}

/// A FHIR primitive type representing `string`.
///
/// FHIR strings can carry extensions ([element]) even though they might be
/// just raw text. Here, we provide a variety of string-manipulation helpers
/// on top of the base primitive structure.
class FhirString extends PrimitiveType
    implements
        OnsetXAllergyIntolerance,
        ValueXAuditEventDetail,
        ScheduledXCarePlanDetail,
        ValueXClaimSupportingInfo,
        DurationXClinicalUseDefinitionIndication,
        ValueXCodeSystemProperty,
        ContentXCommunicationPayload,
        ContentXCommunicationRequestPayload,
        OnsetXCondition,
        AbatementXCondition,
        ValueXContractAnswer,
        AllowedXCoverageEligibilityResponseBenefit,
        UsedXCoverageEligibilityResponseBenefit,
        ManufacturerXDeviceDefinition,
        ValueXExplanationOfBenefitSupportingInfo,
        AllowedXExplanationOfBenefitFinancial,
        BornXFamilyMemberHistory,
        AgeXFamilyMemberHistory,
        DeceasedXFamilyMemberHistory,
        OnsetXFamilyMemberHistoryCondition,
        DetailXGoalTarget,
        OccurrenceXImmunization,
        DoseNumberXImmunizationProtocolApplied,
        SeriesDosesXImmunizationProtocolApplied,
        DoseNumberXImmunizationEvaluation,
        SeriesDosesXImmunizationEvaluation,
        DoseNumberXImmunizationRecommendationRecommendation,
        SeriesDosesXImmunizationRecommendationRecommendation,
        ValueXMedicationKnowledgeDrugCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        PeriodXPackagedProductDefinitionShelfLifeStorage,
        ValueXParametersParameter,
        PerformedXProcedure,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        MinimumVolumeXSpecimenDefinitionContainer,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        AmountXSubstanceDefinitionMoiety,
        AmountXSubstanceDefinitionRelationship,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        AuthorXAnnotation,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor. Checks if both [valueString] and [element]
  /// are null (in the parent [PrimitiveType] constructor).
  FhirString._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'String',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirString]. If [rawValue] is non-null, `toString()` is
  /// applied.
  // ignore: sort_unnamed_constructors_first
  factory FhirString(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'String',
  }) {
    // We allow `null` if [element] is provided (element-only usage).
    // Otherwise, convert [rawValue] to string.
    final stringVal = rawValue?.toString();
    return FhirString._(
      valueString: stringVal,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirString] object with [Element.empty] metadata.
  factory FhirString.empty() => FhirString(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirString] from a JSON [Map].
  factory FhirString.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'String';
    return FhirString(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirString] from a YAML input ([String] or [YamlMap]).
  factory FhirString.fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirString.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirString.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw const FormatException('Invalid YAML format for FhirString');
    }
  }

  /// Attempts to parse [input] into a [FhirString]. Returns `null` if it fails.
  static FhirString? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirString(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  // --------------------------------------------------------------------------
  // FHIR Overrides
  // --------------------------------------------------------------------------

  /// Returns `"string"` as the FHIR type.
  @override
  String get fhirType => 'string';

  /// Returns the string or `'null'` if no value.
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a [String].
  @override
  String? get primitiveValue => valueString;

  /// JSON serialization with `'value'` and `'_value'` for the [Element].
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// Deep equality check.
  @override
  bool equalsDeep(FhirBase? other) =>
      other is FhirString &&
      other.valueString == valueString &&
      other.element == element;

  /// Equality operator override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirString && other.valueString == valueString) ||
      (other is String && other == valueString);

  /// Hash code override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  /// Returns `true` if the Type is considered string-based, otherwise `false`
  @override
  bool get stringBased => true;

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Creates a deep clone of this [FhirString].
  @override
  FhirString clone() => FhirString(
        valueString,
        element: element?.clone() as Element?,
      );

  /// Returns a copy with [disallowExtensions] set to `true`.
  FhirString noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirString copyWith({
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
    return FhirString(
      newValue ?? valueString,
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

  // --------------------------------------------------------------------------
  // Additional String-Like Methods
  // --------------------------------------------------------------------------

  /// Checks if the string is empty.
  bool get isEmptyString => valueString?.isEmpty ?? true;

  /// Checks if the string is not empty.
  bool get isNotEmpty => !isEmptyString;

  /// The length of the string (or `0` if `null`).
  int get length => valueString?.length ?? 0;

  /// Returns the character at the specified [index].
  String operator [](int index) => valueString?[index] ?? '';

  /// Returns the code unit at the specified [index].
  int? codeUnitAt(int index) => valueString?.codeUnitAt(index);

  /// Returns the runes (Unicode code points).
  Runes? get runes => valueString?.runes;

  /// Returns the code units as a list of ints.
  List<int> get codeUnits => valueString?.codeUnits ?? [];

  /// Substring of [valueString] from [start] to optional [end].
  String substring(int start, [int? end]) =>
      valueString?.substring(start, end) ?? '';

  /// Returns the [valueString] trimmed of whitespace.
  String trim() => valueString?.trim() ?? '';

  /// Trims left side whitespace.
  String trimLeft() => valueString?.trimLeft() ?? '';

  /// Trims right side whitespace.
  String trimRight() => valueString?.trimRight() ?? '';

  /// Checks if [pattern] occurs in the string.
  bool contains(Pattern pattern, [int startIndex = 0]) =>
      valueString?.contains(pattern, startIndex) ?? false;

  /// Pads left side to [width] with [padding].
  String padLeft(int width, [String padding = ' ']) =>
      valueString?.padLeft(width, padding) ?? padding;

  /// Pads right side to [width] with [padding].
  String padRight(int width, [String padding = ' ']) =>
      valueString?.padRight(width, padding) ?? padding;

  /// Converts the string to upper case.
  String toUpperCase() => valueString?.toUpperCase() ?? '';

  /// Converts the string to lower case.
  String toLowerCase() => valueString?.toLowerCase() ?? '';

  /// Checks if the string starts with [pattern].
  bool startsWith(Pattern pattern, [int index = 0]) =>
      valueString?.startsWith(pattern, index) ?? false;

  /// Checks if the string ends with [other].
  bool endsWith(String other) => valueString?.endsWith(other) ?? false;

  /// Finds the first occurrence of [pattern].
  int indexOf(Pattern pattern, [int start = 0]) =>
      valueString?.indexOf(pattern, start) ?? -1;

  /// Finds the last occurrence of [pattern].
  int lastIndexOf(Pattern pattern, [int? start]) =>
      valueString?.lastIndexOf(pattern, start) ?? -1;

  /// Concatenates this with [other].
  String operator +(String other) => (valueString ?? '') + other;

  /// Splits this string on [pattern].
  List<String> split(Pattern pattern) => valueString?.split(pattern) ?? [];

  /// Replaces the first occurrence of [from] with [to].
  String replaceFirst(Pattern from, String to, [int startIndex = 0]) =>
      valueString?.replaceFirst(from, to, startIndex) ?? '';

  /// Replaces all occurrences of [from] with [replace].
  String replaceAll(Pattern from, String replace) =>
      valueString?.replaceAll(from, replace) ?? '';

  /// Replaces the first occurrence with a mapped function.
  String replaceFirstMapped(
    Pattern from,
    String Function(Match) replace, [
    int startIndex = 0,
  ]) =>
      valueString?.replaceFirstMapped(from, replace, startIndex) ?? '';

  /// Replaces all occurrences with a mapped function.
  String replaceAllMapped(Pattern from, String Function(Match) replace) =>
      valueString?.replaceAllMapped(from, replace) ?? '';

  /// Replaces a range [start..end] with [replacement].
  String replaceRange(int start, int? end, String replacement) =>
      valueString?.replaceRange(start, end, replacement) ?? '';

  /// Splits the string on [pattern], calling [onMatch] / [onNonMatch].
  String splitMapJoin(
    Pattern pattern, {
    String Function(Match)? onMatch,
    String Function(String)? onNonMatch,
  }) =>
      valueString?.splitMapJoin(
        pattern,
        onMatch: onMatch,
        onNonMatch: onNonMatch,
      ) ??
      '';

  // --------------------------------------------------------------------------
  // Static JSON Helpers
  // --------------------------------------------------------------------------

  /// Converts parallel lists of [values] and [elements] into [FhirString]s.
  static List<FhirString> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i] as String?;
      final elem = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirString(val, element: elem);
    });
  }

  /// Converts a list of [FhirString]s to a JSON map with parallel arrays.
  static Map<String, dynamic> toJsonList(List<FhirString> items) => {
        'value': items.map((val) => val.valueString).toList(),
        '_value': items.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Subclass Contract
  // --------------------------------------------------------------------------

  /// Creates an empty property in the object (no-op).
  @override
  FhirString createProperty(String propertyName) => this;

  /// Clears specified fields from this [FhirString].
  @override
  FhirString clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirString(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
