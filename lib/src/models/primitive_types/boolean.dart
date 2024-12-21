import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

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
  /// Constructor with original input
  FhirBoolean(
    // ignore: avoid_positional_boolean_parameters
    this.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super(input) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required');
    }
  }

  /// Factory constructor to create a [FhirBoolean] from JSON
  factory FhirBoolean.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as bool?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    return FhirBoolean(value, element: element);
  }

  /// Factory constructor to create a [FhirBoolean] from YAML
  static FhirBoolean fromYaml(dynamic yaml) => yaml is String
      ? FhirBoolean.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
        )
      : yaml is YamlMap
          ? FhirBoolean.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
            )
          : throw ArgumentError(
              'FhirBoolean cannot be constructed from the provided input,'
              ' it is neither a YAML string nor a YAML map.');

  /// Static method to try parsing a dynamic input into [FhirBoolean]
  static FhirBoolean? tryParse(dynamic input) {
    if (input is bool) {
      return FhirBoolean(input);
    } else if (input is String) {
      final lowerValue = input.toLowerCase();
      if (lowerValue == 'true' || lowerValue == 'false') {
        return FhirBoolean(lowerValue == 'true');
      }
    }
    return null;
  }

  /// The original input value (for serialization purposes)
  final bool? input;

  /// Boolean getter to determine if only a value is present
  bool get valueOnly => value != null && element == null;

  /// Boolean getter to determine if only an element is present
  bool get elementOnly => value == null && element != null;

  /// Boolean getter to determine if both value and element are present
  bool get valueAndElement => value != null && element != null;

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': input,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [FhirBoolean] instances
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
      final value = values[i] as bool?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirBoolean(value, element: element);
    });
  }

  /// Converts a list of [FhirBoolean] instances to a JSON-compatible map
  static Map<String, dynamic> toJsonList(List<FhirBoolean> booleans) => {
        'value': booleans.map((boolean) => boolean.input).toList(),
        '_value': booleans.map((boolean) => boolean.element?.toJson()).toList(),
      };

  /// Provides a string representation of the instance
  @override
  String toString() => value.toString();

  /// Overrides equality operator
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirBoolean && other.input == input) ||
      (other is bool && other == input);

  /// Overrides `hashCode` for use in hash-based collections
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(input, element);

  /// Creates a deep copy of the instance
  @override
  FhirBoolean clone() =>
      FhirBoolean(input, element: element?.clone() as Element?);

  /// Sets disallowExtensions to true
  FhirBoolean noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties
  @override
  FhirBoolean copyWith({
    bool? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
  }) {
    return FhirBoolean(
      newValue ?? input,
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
    );
  }
}
