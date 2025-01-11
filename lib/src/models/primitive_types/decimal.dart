import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a Dart number to a [FhirDecimal].
extension FhirDecimalExtension on num {
  /// Converts a Dart number to a [FhirDecimal].
  FhirDecimal get toFhirDecimal => FhirDecimal(this);
}

/// Represents the FHIR primitive type `decimal`.
class FhirDecimal extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        ValueXParametersParameter,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
        ProbabilityXRiskAssessmentPrediction,
        DefaultValueXStructureMapSource,
        ValueXStructureMapParameter,
        ValueXTaskInput,
        ValueXTaskOutput,
        ValueXValueSetParameter,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Constructor with validation and storage of the original input.
  FhirDecimal(
    this.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Decimal',
  })  : isInt = input is int,
        super(input?.toDouble()) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirDecimal');
    }
  }

  /// Factory constructor to create a [FhirDecimal] from a [FhirInteger].
  factory FhirDecimal.fromFhirInteger(
    FhirInteger integer, {
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
  }) {
    return FhirDecimal(
      integer.value,
      element: element,
      id: id,
      extension_: extension_,
    );
  }

  /// Factory constructor to create a [FhirDecimal] from JSON input.
  factory FhirDecimal.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirDecimal(value, element: element, objectPath: objectPath);
  }

  /// Factory constructor to create a [FhirDecimal] from YAML input.
  static FhirDecimal fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirDecimal.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirDecimal.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw ArgumentError(
                'FhirDecimal cannot be constructed from the provided input. '
                'It must be a YAML string or map.');
  }

  /// Attempts to parse a [dynamic] input as [FhirDecimal], returns `null` if
  /// parsing fails.
  static FhirDecimal? tryParse(dynamic input) {
    if (input is num) {
      try {
        return FhirDecimal(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Converts a list of JSON values to a list of [FhirDecimal] instances.
  static List<FhirDecimal> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length.',
      );
    }
    return List.generate(values.length, (i) {
      final value = values[i] as num?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirDecimal(value, element: element);
    });
  }

  /// Converts a list of [FhirDecimal] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirDecimal> decimals) => {
        'value': decimals
            .map(
              (decimal) =>
                  decimal.isInt ? decimal.input?.toInt() : decimal.input,
            )
            .toList(),
        '_value': decimals.map((decimal) => decimal.element?.toJson()).toList(),
      };

  /// The original input value (stored for serialization purposes).
  final num? input;

  /// Boolean flag to track if the input was originally an integer.
  final bool isInt;

  /// Returns the FHIR type as 'decimal'.
  @override
  String get fhirType => 'decimal';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (input != null) 'value': isInt ? input!.toInt() : input,
        if (element != null) '_value': element?.toJson(),
      };

  /// Provides a string representation of the instance.
  @override
  String toString() =>
      isInt ? value?.toInt().toString() ?? '' : value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? o) =>
      o is FhirDecimal && o.value == value && o.element == element;

  /// Overrides equality operator for comparing two [FhirDecimal] instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirDecimal && other.value == value) ||
      (other is num && other == value);

  /// Overrides `hashCode` for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance of [FhirDecimal].
  @override
  FhirDecimal clone() =>
      FhirDecimal(input, element: element?.clone() as Element?);

  /// Sets disallowExtensions to true
  FhirDecimal noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirDecimal copyWith({
    num? newValue,
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
    return FhirDecimal(
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
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
