part of 'primitive_types.dart';

/// Extension to convert a [String] to [FhirStringBuilder].
extension FhirStringBuilderExtension on String {
  /// Returns a [FhirStringBuilder] object from a [String].
  FhirStringBuilder get toFhirStringBuilder => FhirStringBuilder(this);
}

/// [FhirStringBuilder] represents a string used in FHIR resources.
class FhirStringBuilder extends PrimitiveTypeBuilder<String>
    implements
        OnsetXAllergyIntoleranceBuilder,
        ValueXAuditEventDetailBuilder,
        ScheduledXCarePlanDetailBuilder,
        ValueXClaimSupportingInfoBuilder,
        DurationXClinicalUseDefinitionIndicationBuilder,
        ValueXCodeSystemPropertyBuilder,
        ContentXCommunicationPayloadBuilder,
        ContentXCommunicationRequestPayloadBuilder,
        OnsetXConditionBuilder,
        AbatementXConditionBuilder,
        ValueXContractAnswerBuilder,
        AllowedXCoverageEligibilityResponseBenefitBuilder,
        UsedXCoverageEligibilityResponseBenefitBuilder,
        ManufacturerXDeviceDefinitionBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        AllowedXExplanationOfBenefitFinancialBuilder,
        BornXFamilyMemberHistoryBuilder,
        AgeXFamilyMemberHistoryBuilder,
        DeceasedXFamilyMemberHistoryBuilder,
        OnsetXFamilyMemberHistoryConditionBuilder,
        DetailXGoalTargetBuilder,
        OccurrenceXImmunizationBuilder,
        DoseNumberXImmunizationProtocolAppliedBuilder,
        SeriesDosesXImmunizationProtocolAppliedBuilder,
        DoseNumberXImmunizationEvaluationBuilder,
        SeriesDosesXImmunizationEvaluationBuilder,
        DoseNumberXImmunizationRecommendationRecommendationBuilder,
        SeriesDosesXImmunizationRecommendationRecommendationBuilder,
        ValueXMedicationKnowledgeDrugCharacteristicBuilder,
        ValueXNutritionProductProductCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        PeriodXPackagedProductDefinitionShelfLifeStorageBuilder,
        ValueXParametersParameterBuilder,
        PerformedXProcedureBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireAnswerOptionBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        MinimumVolumeXSpecimenDefinitionContainerBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXStructureMapParameterBuilder,
        AmountXSubstanceDefinitionMoietyBuilder,
        AmountXSubstanceDefinitionRelationshipBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        AuthorXAnnotationBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  /// Private underscore constructor that ensures if both [validatedValue] and
  /// [element] are null, we throw an error.
  FhirStringBuilder._({
    required String? validatedValue,
    this.element,
    this.id,
    this.extension_,
    this.disallowExtensions,
    this.objectPath = 'String',
  }) : super._(value: validatedValue) {
    if (value == null && element == null) {
      throw ArgumentError(
          'A value or element is required for FhirStringBuilder');
    }
  }

  /// Constructs a [FhirStringBuilder] with validation.
  // ignore: sort_unnamed_constructors_first
  factory FhirStringBuilder(
    String? input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'String',
  }) {
    // No extra validation beyond "value or element" check
    return FhirStringBuilder._(
      validatedValue: input,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirStringBuilder] object
  factory FhirStringBuilder.empty() =>
      FhirStringBuilder(null, element: ElementBuilder.empty());

  /// Factory constructor to create [FhirStringBuilder] from JSON.
  factory FhirStringBuilder.fromJson(Map<String, dynamic> json) {
    final val = json['value'] as String?;
    final elemJson = json['_value'] as Map<String, dynamic>?;
    final element = elemJson != null ? ElementBuilder.fromJson(elemJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'String';
    return FhirStringBuilder(val, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create [FhirStringBuilder] from YAML.
  factory FhirStringBuilder.fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirStringBuilder.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirStringBuilder.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid YAML format for FhirStringBuilder');
  }

  /// Attempts to parse the input and return a [FhirStringBuilder].
  static FhirStringBuilder? tryParse(dynamic input) {
    if (input is String) {
      try {
        return FhirStringBuilder(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

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

  /// Returns the FHIR type as 'string'.
  @override
  String get fhirType => 'string';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Provides a string representation of the value.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBaseBuilder? other) =>
      other is FhirStringBuilder &&
      other.value == value &&
      other.element == element;

  /// Overrides equality operator.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirStringBuilder && other.value == value) ||
      (other is String && other == value);

  /// Overrides the `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current [FhirStringBuilder] instance.
  @override
  FhirStringBuilder clone() => FhirStringBuilder(
        value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Sets disallowExtensions to true
  FhirStringBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirStringBuilder copyWith({
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
    return FhirStringBuilder(
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

  // ----------------- Overriding String Methods -----------------
  // (All your existing doc comments & logic retained)

  /// The length of the string.
  int get length => value?.length ?? 0;

  /// Checks if the string is not empty.
  bool get isNotEmpty => value?.isNotEmpty ?? false;

  /// Returns the character at the specified index.
  String operator [](int index) => value![index];

  /// Returns the character at the specified index.
  int codeUnitAt(int index) => value!.codeUnitAt(index);

  /// Returns the character (Unicode code point) at the specified index.
  Runes get runes => value!.runes;

  /// Returns the Unicode code units of the string.
  List<int> get codeUnits => value!.codeUnits;

  /// Returns the first character of the string.
  String substring(int start, [int? end]) => value!.substring(start, end);

  /// Returns the first character of the string.
  String trim() => value!.trim();

  /// Returns the first character of the string.
  String trimLeft() => value!.trimLeft();

  /// Returns the first character of the string.
  String trimRight() => value!.trimRight();

  /// Returns the first character of the string.
  bool contains(Pattern other, [int startIndex = 0]) =>
      value!.contains(other, startIndex);

  /// Returns the first character of the string.
  String padLeft(int width, [String padding = ' ']) =>
      value!.padLeft(width, padding);

  /// Returns the first character of the string.
  String padRight(int width, [String padding = ' ']) =>
      value!.padRight(width, padding);

  /// Returns the first character of the string.
  String toUpperCase() => value!.toUpperCase();

  /// Returns the first character of the string.
  String toLowerCase() => value!.toLowerCase();

  /// Returns the first character of the string.
  bool startsWith(Pattern pattern, [int index = 0]) =>
      value!.startsWith(pattern, index);

  /// Returns the first character of the string.
  bool endsWith(String other) => value!.endsWith(other);

  /// Returns the first character of the string.
  int indexOf(Pattern pattern, [int start = 0]) =>
      value!.indexOf(pattern, start);

  /// Returns the first character of the string.
  int lastIndexOf(Pattern pattern, [int? start]) =>
      value!.lastIndexOf(pattern, start);

  /// Returns the first character of the string.
  String operator +(String other) => (value ?? '') + other;

  /// Returns the first character of the string.
  List<String> split(Pattern pattern) => value!.split(pattern);

  /// Returns the first character of the string.
  String replaceFirst(Pattern from, String to, [int startIndex = 0]) =>
      value!.replaceFirst(from, to, startIndex);

  /// Returns the first character of the string.
  String replaceAll(Pattern from, String replace) =>
      value!.replaceAll(from, replace);

  /// Returns the first character of the string.
  String replaceFirstMapped(
    Pattern from,
    String Function(Match) replace, [
    int startIndex = 0,
  ]) =>
      value!.replaceFirstMapped(from, replace, startIndex);

  /// Returns the first character of the string.
  String replaceAllMapped(Pattern from, String Function(Match) replace) =>
      value!.replaceAllMapped(from, replace);

  /// Returns the first character of the string.
  String replaceRange(int start, int? end, String replacement) =>
      value!.replaceRange(start, end, replacement);

  /// Returns the first character of the string.
  String splitMapJoin(
    Pattern pattern, {
    String Function(Match)? onMatch,
    String Function(String)? onNonMatch,
  }) =>
      value!.splitMapJoin(pattern, onMatch: onMatch, onNonMatch: onNonMatch);

  /// Checks if the string is empty.
  bool get isEmptyString => value?.isEmpty ?? true;

  /// Converts a list of JSON values to a list of [FhirStringBuilder] instances.
  static List<FhirStringBuilder> fromJsonList(
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
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirStringBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirStringBuilder] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirStringBuilder> strings) {
    return {
      'value': strings.map((string) => string.value).toList(),
      '_value': strings.map((string) => string.element?.toJson()).toList(),
    };
  }

  /// Creates an empty property in the object
  @override
  FhirStringBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirStringBuilder] object
  @override
  FhirStringBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirStringBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
