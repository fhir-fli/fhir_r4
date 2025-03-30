part of 'primitive_types.dart';

/// Extension to convert a [bool] to [FhirBooleanBuilder]
extension FhirBooleanBuilderExtension on bool {
  /// converts a [[bool]]
  /// to [FhirBooleanBuilder]
  FhirBooleanBuilder get toFhirBooleanBuilder => FhirBooleanBuilder(this);
}

/// [FhirBooleanBuilder] class representing the FHIR primitive type `boolean`
class FhirBooleanBuilder extends PrimitiveTypeBuilder<bool>
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
  /// Private constructor that does no validation or logic,
  /// simply calls `super` with [validatedValue] and other fields.
  /// Private child constructor, uses the parent's `_internal` constructor.
  FhirBooleanBuilder._({
    required bool? validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Boolean',
  }) : super._(value: validatedValue);

  /// Single public factory for creating a [FhirBooleanBuilder].
  // ignore: sort_unnamed_constructors_first
  factory FhirBooleanBuilder(
    dynamic input, {
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String? objectPath = 'Boolean',
  }) {
    // 1) Parse/validate
    bool? finalValue;
    if (input == null && element == null) {
      throw ArgumentError(
        'FhirBooleanBuilder requires a bool value or an element.',
      );
    } else if (input is bool) {
      finalValue = input;
    } else if (input is String) {
      final lower = input.trim().toLowerCase();
      if (lower == 'true') {
        finalValue = true;
      } else if (lower == 'false') {
        finalValue = false;
      } else {
        throw ArgumentError('Invalid string for FhirBooleanBuilder: "$input".');
      }
    } else if (input != null) {
      throw ArgumentError(
        'FhirBooleanBuilder only supports bool or string "true"/"false".',
      );
    }

    // 2) Return the private constructor
    return FhirBooleanBuilder._(
      validatedValue: finalValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirBooleanBuilder] object
  factory FhirBooleanBuilder.empty() =>
      FhirBooleanBuilder(null, element: ElementBuilder.empty());

  /// Named constructor to create a [FhirBooleanBuilder] from JSON
  factory FhirBooleanBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Boolean';

    // Delegate to the main factory
    return FhirBooleanBuilder(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Named constructor to create a [FhirBooleanBuilder] from YAML
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
        'FhirBooleanBuilder cannot be constructed from provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse a dynamic [input] as [FhirBooleanBuilder].
  /// Returns `null` if it fails.
  static FhirBooleanBuilder? tryParse(dynamic input) {
    try {
      return FhirBooleanBuilder(input);
    } catch (_) {
      return null;
    }
  }

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get hasElementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  // ──────────────────────────────────────────────────────────────────────────
  // JSON / Serialization
  // ──────────────────────────────────────────────────────────────────────────

  /// Converts this instance to a [FhirBoolean] object
  @override
  FhirBoolean build() => FhirBoolean.fromJson(toJson());

  /// Converts this instance to JSON
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value, // or super.value
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Converts a list of JSON values to a list of [
  /// FhirBooleanBuilder] instances.
  static List<FhirBooleanBuilder> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }
    return List.generate(values.length, (i) {
      final val = values[i];
      final element = elements?[i] != null
          ? ElementBuilder.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBooleanBuilder(val, element: element);
    });
  }

  /// Converts a list of [FhirBooleanBuilder] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBooleanBuilder> booleans) => {
        'value': booleans.map((b) => b.value).toList(),
        '_value': booleans.map((b) => b.element?.toJson()).toList(),
      };

  // ──────────────────────────────────────────────────────────────────────────
  // Misc. overrides
  // ──────────────────────────────────────────────────────────────────────────

  /// Returns the FHIR type as a [String]
  @override
  String get fhirType => 'boolean';

  /// Returns the string form of this FHIR boolean
  @override
  String toString() => value?.toString() ?? 'null';

  /// The "primitive" value as a string (for DataType overrides)
  @override
  String? get primitiveValue => value?.toString();

  /// Deep equality check
  @override
  bool equalsDeep(FhirBaseBuilder? other) {
    return other is FhirBooleanBuilder &&
        other.value == value &&
        other.element == element;
  }

  /// Shallow equality
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is FhirBooleanBuilder) {
      return value == other.value && element == other.element;
    }
    if (other is bool) return value == other;
    return false;
  }

  /// Override the `==` operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) => equals(other);

  /// Hash code
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  // ──────────────────────────────────────────────────────────────────────────
  // Clone / Copy methods
  // ──────────────────────────────────────────────────────────────────────────

  /// Creates a copy of the instance with identical properties
  @override
  FhirBooleanBuilder clone() =>
      FhirBooleanBuilder(value, element: element?.clone() as ElementBuilder?);

  /// Creates a modified copy with updated properties
  @override
  FhirBooleanBuilder copyWith({
    bool? newValue,
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

  /// Sets disallowExtensions to true
  FhirBooleanBuilder noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object (per your existing API)
  @override
  FhirBooleanBuilder createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirBooleanBuilder] object
  @override
  FhirBooleanBuilder clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirBooleanBuilder(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtensionBuilder>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
