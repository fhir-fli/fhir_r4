part of 'primitive_types.dart';

/// Extension methods on [bool] to easily convert to [FhirBoolean].
extension FhirBooleanExtension on bool {
  /// Returns a new [FhirBoolean] constructed from this bool.
  FhirBoolean get toFhirBoolean => FhirBoolean(this);
}

/// A FHIR primitive type representing `boolean`.
///
/// According to FHIR, boolean is represented as a native JSON `true`/`false`.
/// Internally, we store it as a string (`"true"` / `"false"`) plus optional metadata.
class FhirBoolean extends PrimitiveType
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
  // --------------------------------------------------------------------------
  // Private Internal Constructor
  // --------------------------------------------------------------------------

  /// Private underscore constructor that calls [super._].
  const FhirBoolean._({
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

  /// Creates a [FhirBoolean] by parsing [rawValue] as either `bool` or `"true"/"false"`.
  ///
  /// - If [rawValue] is `null`, [element] must be non-null.
  /// - If [rawValue] is a [bool], it is converted to `"true"` or `"false"`.
  /// - If [rawValue] is a [String], it must match `"true"` or `"false"`
  /// (case-insensitive).
  // ignore: sort_unnamed_constructors_first
  factory FhirBoolean(
    dynamic rawValue, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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

    return FhirBoolean._(
      valueString: stringValue,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Creates an empty [FhirBoolean] with an [Element.empty] for metadata.
  factory FhirBoolean.empty() => FhirBoolean(null, element: Element.empty());

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirBoolean] from a JSON [Map].
  factory FhirBoolean.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);
    final objectPath = json['objectPath'] as String? ?? 'Boolean';

    return FhirBoolean(
      rawValue,
      element: parsedElement,
      objectPath: objectPath,
    );
  }

  /// Constructs a [FhirBoolean] from a YAML input.
  ///
  /// Accepts [String] or [YamlMap].
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
        'FhirBoolean cannot be constructed from the provided input.'
        ' It is neither a YAML string nor a YAML map.',
      );
    }
  }

  /// Attempts to parse [input] as a [FhirBoolean]. Returns `null` if it fails.
  static FhirBoolean? tryParse(dynamic input) {
    try {
      return FhirBoolean(input);
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

  /// Converts this [FhirBoolean] into a JSON map.
  ///
  /// The `'value'` key is a Dart `bool` if present.
  @override
  Map<String, dynamic> toJson() => {
        if (valueString != null) 'value': valueBoolean,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a parallel list of JSON boolean [values] and [elements] into
  /// a list of [FhirBoolean].
  static List<FhirBoolean> fromJsonList(
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
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBoolean(val, element: elem);
    });
  }

  /// Converts a list of [FhirBoolean] instances into a JSON map with parallel
  /// `'value'` and `'_value'` arrays.
  static Map<String, dynamic> toJsonList(List<FhirBoolean> items) => {
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

  /// Deep equality check for [FhirBoolean].
  @override
  bool equalsDeep(FhirBase? other) {
    return other is FhirBoolean &&
        other.valueBoolean == valueBoolean &&
        other.element == element;
  }

  /// Shallow equality. Checks if [other] is `bool` or [FhirBoolean].
  @override
  bool equals(Object other) {
    if (identical(this, other)) return true;
    if (other is FhirBoolean) {
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

  /// Clones this [FhirBoolean].
  @override
  FhirBoolean clone() =>
      FhirBoolean(valueString, element: element?.clone() as Element?);

  /// Creates a new [FhirBoolean] with updated properties.
  @override
  FhirBoolean copyWith({
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
    return FhirBoolean(
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
  FhirBoolean noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a new property. No-op here; returns `this`.
  @override
  FhirBoolean createProperty(String propertyName) => this;

  /// Clears selected fields in this [FhirBoolean].
  @override
  FhirBoolean clear({
    bool value = false,
    bool extension_ = false,
    bool id = false,
  }) {
    return FhirBoolean(
      value ? null : valueString,
      element: element,
      extension_: extension_ ? <FhirExtension>[] : this.extension_,
      id: id ? null : this.id,
    );
  }
}
