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
    );
  }

  // --------------------------------------------------------------------------
  // JSON / YAML Constructors
  // --------------------------------------------------------------------------

  /// Constructs a [FhirBoolean] from a JSON [Map].
  factory FhirBoolean.fromJson(Map<String, dynamic> json) {
    final rawValue = json['value'];
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final parsedElement =
        elementJson == null ? null : Element.fromJson(elementJson);

    return FhirBoolean(
      rawValue,
      element: parsedElement,
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
        if (valueString != null && valueString!.isNotEmpty)
          'value': valueBoolean,
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
  FhirBoolean clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  $FhirBooleanCopyWithImpl<FhirBoolean> get copyWith =>
      $FhirBooleanCopyWithImpl<FhirBoolean>(this, (value) => value);

  /// Returns a copy that disallows further extensions.
  FhirBoolean noExtensions() => copyWith(disallowExtensions: true);
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class $FhirBooleanCopyWithImpl<T> implements $PrimitiveTypeCopyWith<T> {
  /// Constructor for the copyWith implementation.
  $FhirBooleanCopyWithImpl(this._value, this._then);

  final FhirBoolean _value;
  final T Function(FhirBoolean) _then;

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    return _then(
      FhirBoolean(
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
      ),
    );
  }
}
