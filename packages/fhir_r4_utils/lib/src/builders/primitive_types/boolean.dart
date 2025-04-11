part of 'primitive_types.dart';

/// Extension methods on [bool] to easily convert to [FhirBooleanBuilder].
extension FhirBooleanBuilderExtension on bool {
  /// Returns a new [FhirBooleanBuilder] constructed from this bool.
  FhirBooleanBuilder get toFhirBooleanBuilder => FhirBooleanBuilder(this);
}

/// A FHIR primitive type representing `boolean`.
///
/// According to FHIR, boolean is represented as a native JSON `true`/`false`.
/// Internally, we store it as a string (`"true"` / `"false"`) plus optional metadata.
class FhirBooleanBuilder extends PrimitiveTypeBuilder
    implements
        ValueXAdministrableProductDefinitionPropertyBuilder,
        ValueXClaimSupportingInfoBuilder,
        ValueXCodeSystemPropertyBuilder,
        ValueXContractAnswerBuilder,
        ValueXDeviceRequestParameterBuilder,
        ValueXEvidenceReportCharacteristicBuilder,
        ValueXExplanationOfBenefitSupportingInfoBuilder,
        DeceasedXFamilyMemberHistoryBuilder,
        DetailXGoalTargetBuilder,
        ValueXGroupCharacteristicBuilder,
        ExampleXImplementationGuideResourceBuilder,
        ExampleXImplementationGuideResource1Builder,
        ValueXManufacturedItemDefinitionPropertyBuilder,
        ReportedXMedicationRequestBuilder,
        AllowedXMedicationRequestSubstitutionBuilder,
        ValueXMedicinalProductDefinitionCharacteristicBuilder,
        ValueXNutritionProductProductCharacteristicBuilder,
        ValueXObservationBuilder,
        ValueXObservationComponentBuilder,
        ValueXPackagedProductDefinitionPropertyBuilder,
        ValueXParametersParameterBuilder,
        DeceasedXPatientBuilder,
        MultipleBirthXPatientBuilder,
        AnswerXQuestionnaireEnableWhenBuilder,
        ValueXQuestionnaireInitialBuilder,
        ValueXQuestionnaireResponseAnswerBuilder,
        AsNeededXServiceRequestBuilder,
        DefaultValueXStructureMapSourceBuilder,
        ValueXStructureMapParameterBuilder,
        ValueXSubstanceDefinitionPropertyBuilder,
        ValueXSupplyRequestParameterBuilder,
        ValueXTaskInputBuilder,
        ValueXTaskOutputBuilder,
        ValueXValueSetParameterBuilder,
        AsNeededXDosageBuilder,
        DefaultValueXElementDefinitionBuilder,
        FixedXElementDefinitionBuilder,
        PatternXElementDefinitionBuilder,
        ValueXElementDefinitionExampleBuilder,
        ValueXExtensionBuilder {
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that calls [super._].
  FhirBooleanBuilder._({
    required super.valueString,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Boolean',
  }) : super._();

  // --------------------------------------------------------------------------
  // Public Factories
  // --------------------------------------------------------------------------

  /// Creates a [FhirBooleanBuilder] by parsing [rawValue] as either `bool` or
  /// `"true"/"false"`.
  ///
  /// - If [rawValue] is `null`, [element] must be non-null.
  /// - If [rawValue] is a [bool], it is converted to `"true"` or `"false"`.
  /// - If [rawValue] is a [String], it must match `"true"` or `"false"`
  /// (case-insensitive).
  // ignore: sort_unnamed_constructors_first
  factory FhirBooleanBuilder(
    dynamic rawValue, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Boolean',
  }) {
    String? stringValue;
    if (rawValue == null && element == null) {
      throw ArgumentError('FhirBoolean requires a bool value or an element.');
    } else if (rawValue is bool) {
      stringValue = rawValue.toString(); // "true" or "false"
    } else if (rawValue is String) {
      final lowered = rawValue.trim().toLowerCase();
      if (lowered != 'true' && lowered != 'false') {
        throw ArgumentError(
          'FhirBoolean only supports bool or string "true"/"false".',
        );
      }
      stringValue = lowered; // "true" or "false"
    } else if (rawValue != null) {
      throw ArgumentError(
        'FhirBoolean only supports bool or string "true"/"false". Got: $rawValue',
      );
    }

    return FhirBooleanBuilder._(
      valueString: stringValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirBooleanBuilder] with an [ElementBuilder.empty]
  /// for metadata.
  factory FhirBooleanBuilder.empty() =>
      FhirBooleanBuilder(null, element: ElementBuilder.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirBooleanBuilder] from a JSON [Map].
  factory FhirBooleanBuilder.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : ElementBuilder.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Boolean';

    return FhirBooleanBuilder(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirBooleanBuilder] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
  static FhirBooleanBuilder fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirBooleanBuilder.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirBooleanBuilder.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirBoolean cannot be constructed from the provided input.'
        ' It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirBooleanBuilder]. Returns `null` if
  /// it fails.
  static FhirBooleanBuilder? tryParse(dynamic input) {
    try {
      return FhirBooleanBuilder(input);
    } catch (_) {
      return null;
    }
  }

  // --------------------------------------------------------------------------
  // Getters / Properties
  // --------------------------------------------------------------------------

  /// Returns the boolean value if present, otherwise `null`.
  bool? get valueBoolean =>
      valueString == null ? null : valueString!.trim().toLowerCase() == 'true';

  // --------------------------------------------------------------------------
  // Booleans
  // --------------------------------------------------------------------------

  /// Returns `true` if there is a [valueString] but no [element].
  bool get valueOnly => valueString != null && element == null;

  /// Returns `true` if there is an [element] but no [valueString].
  bool get hasElementOnly => valueString == null && element != null;

  /// Returns `true` if both [valueString] and [element] are non-null.
  bool get valueAndElement => valueString != null && element != null;

  // --------------------------------------------------------------------------
  // JSON Serialization
  // --------------------------------------------------------------------------

  /// Converts this [FhirBooleanBuilder] into a JSON map.
  ///
  /// The `'value'` key is a Dart `bool` if present.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueBoolean,
        if (element != null) '_value': element!.toJson(),
      };

  /// Method to convert the builder object to the original Element object
  @override
  FhirBoolean build() => FhirBoolean.fromJson(toJson());

  /// Converts a parallel list of JSON boolean [values] and [elements] into
  /// a list of [FhirBooleanBuilder].
  static List<FhirBooleanBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i];
      final elem = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBooleanBuilder(val, element: elem);
    });
  }

  /// Converts a list of [FhirBooleanBuilder] instances into a JSON map with
  /// parallel `'value'` and `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirBooleanBuilder> items) => {
        'value': items.map((val) => val.valueBoolean).toList(),
        '_value': items.map((val) => val.element?.toJson()).toList(),
      };

  // --------------------------------------------------------------------------
  // Overrides
  // --------------------------------------------------------------------------

  /// Returns the FHIR type, here `"boolean"`.
  @override
  String get fhirType => 'boolean';

  /// Returns the internal string (e.g., `"true"`, `"false"`, or `"null"`).
  @override
  String toString() => valueString ?? 'null';

  /// The primitive value as a string.
  @override
  String? get primitiveValue => valueString;

  /// Deep equality check for [FhirBooleanBuilder].
  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    return other is FhirBooleanBuilder &&
        other.valueBoolean == valueBoolean &&
        other.element == element;
  }

  /// Shallow equality. Checks if [other] is `bool` or [FhirBooleanBuilder].
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is FhirBooleanBuilder) {
      return valueBoolean == other.valueBoolean && element == other.element;
    }
    if (other is bool) {
      return valueBoolean == other;
    }
    return false;
  }

  /// Operator `==` override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code override.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(valueString, element);

  // --------------------------------------------------------------------------
  // Clone / Copy
  // --------------------------------------------------------------------------

  /// Clones this [FhirBooleanBuilder].
  @override
  FhirBooleanBuilder clone() => FhirBooleanBuilder(
        valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Creates a new [FhirBooleanBuilder] with updated properties.
  @override
  FhirBooleanBuilder copyWith({
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
    return FhirBooleanBuilder(
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

  /// Returns a copy that disallows further extensions.
  FhirBooleanBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a new property. No-op here; returns `this`.
  @override
  FhirBooleanBuilder createProperty(String propertyName) => this;

}
