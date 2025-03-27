part of 'primitive_types.dart';

/// Extension to convert a [bool] to [FhirBoolean]
extension FhirBooleanExtension on bool {
  /// Converts a [bool] to [FhirBoolean]
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

/// [FhirBoolean] class representing the FHIR primitive type `boolean`
class FhirBoolean extends PrimitiveType<bool>
    implements
        ValueXAdministrableProductDefinitionProperty,
        ValueXClaimSupportingInfo,
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        ValueXDeviceRequestParameter,
        ValueXEvidenceReportCharacteristic,
        ValueXExplanationOfBenefitSupportingInfo,
        DeceasedXFamilyMemberHistory,
        DetailXGoalTarget,
        ValueXGroupCharacteristic,
        ExampleXImplementationGuideResource,
        ExampleXImplementationGuideResource1,
        ValueXManufacturedItemDefinitionProperty,
        ReportedXMedicationRequest,
        AllowedXMedicationRequestSubstitution,
        ValueXMedicinalProductDefinitionCharacteristic,
        ValueXNutritionProductProductCharacteristic,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXPackagedProductDefinitionProperty,
        ValueXParametersParameter,
        DeceasedXPatient,
        MultipleBirthXPatient,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        AsNeededXServiceRequest,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        ValueXSubstanceDefinitionProperty,
        ValueXSupplyRequestParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        AsNeededXDosage,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Private const constructor that does no validation or logic,
  /// simply calls `super` with [validatedValue] and other fields.
  /// Private child constructor, uses the parent's `_internal` constructor.
  FhirBoolean._({
    required bool? validatedValue,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Boolean',
  }) : super._(value: validatedValue);

  /// Single public factory for creating a [FhirBoolean].
  // ignore: sort_unnamed_constructors_first
  factory FhirBoolean(
    dynamic input, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Boolean',
  }) {
    // 1) Parse/validate
    bool? finalValue;
    if (input == null && element == null) {
      throw ArgumentError('FhirBoolean requires a bool value or an element.');
    } else if (input is bool) {
      finalValue = input;
    } else if (input is String) {
      final lower = input.trim().toLowerCase();
      if (lower == 'true') {
        finalValue = true;
      } else if (lower == 'false') {
        finalValue = false;
      } else {
        throw ArgumentError('Invalid string for FhirBoolean: "$input".');
      }
    } else if (input != null) {
      throw ArgumentError(
        'FhirBoolean only supports bool or string "true"/"false".',
      );
    }

    // 2) Return the private constructor
    return FhirBoolean._(
      validatedValue: finalValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates empty [FhirBoolean] object
  factory FhirBoolean.empty() => FhirBoolean(null, element: Element.empty());

  /// Named constructor to create a [FhirBoolean] from JSON
  factory FhirBoolean.fromJson(Map<String, dynamic> json) {
    final value = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String? ?? 'Boolean';

    // Delegate to the main factory
    return FhirBoolean(
      value,
      element: element,
      objectPath: objectPath,
    );
  }

  /// Named constructor to create a [FhirBoolean] from YAML
  static FhirBoolean fromYaml(dynamic yaml) {
    if (yaml is String) {
      return FhirBoolean.fromJson(
        jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
      );
    } else if (yaml is YamlMap) {
      return FhirBoolean.fromJson(
        jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
      );
    } else {
      throw ArgumentError(
        'FhirBoolean cannot be constructed from provided input. '
        'It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse a dynamic [input] as [FhirBoolean].
  /// Returns `null` if it fails.
  static FhirBoolean? tryParse(dynamic input) {
    try {
      return FhirBoolean(input);
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

  /// Serializes the instance to JSON with standardized keys

  // ──────────────────────────────────────────────────────────────────────────
  // JSON / Serialization
  // ──────────────────────────────────────────────────────────────────────────

  /// Converts this instance to JSON
  @override
  Map<String, dynamic> toJson() {
    return {
      if (value != null) 'value': value, // or super.value
      if (element != null) '_value': element!.toJson(),
    };
  }

  /// Converts a list of JSON values to a list of [FhirBoolean] instances.
  static List<FhirBoolean> fromJsonList(
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
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBoolean(val, element: element);
    });
  }

  /// Converts a list of [FhirBoolean] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBoolean> booleans) => {
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
  bool equalsDeep(FhirBase? other) {
    return other is FhirBoolean &&
        other.value == value &&
        other.element == element;
  }

  /// Shallow equality
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is FhirBoolean) {
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
  FhirBoolean clone() =>
      FhirBoolean(value, element: element?.clone() as Element?);

  /// Creates a modified copy with updated properties
  @override
  FhirBoolean copyWith({
    bool? newValue,
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
    return FhirBoolean(
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
      objectPath: objectPath ?? this.objectPath!,
    );
  }

  /// Sets disallowExtensions to true
  FhirBoolean noExtensions() => copyWith(disallowExtensions: true);

  /// Creates an empty property in the object (per your existing API)
  @override
  FhirBoolean createProperty(String propertyName) => this;

  /// Clears the specified fields in a [FhirBoolean] object
  @override
  FhirBoolean clear({
    bool input = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirBoolean(
      input ? null : value,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
