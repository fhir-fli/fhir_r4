import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirPositiveInt].
extension FhirPositiveIntExtension on num {
  /// Converts a [num] to a [FhirPositiveInt].
  FhirPositiveInt get toFhirPositiveInt => this is int
      ? FhirPositiveInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirPositiveInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirPositiveInt: $this');
}

/// Represents the FHIR primitive type `positiveInt`.
class FhirPositiveInt extends FhirNumber
    implements
        DoseNumberXImmunizationProtocolApplied,
        SeriesDosesXImmunizationProtocolApplied,
        DoseNumberXImmunizationEvaluation,
        SeriesDosesXImmunizationEvaluation,
        DoseNumberXImmunizationRecommendationRecommendation,
        SeriesDosesXImmunizationRecommendationRecommendation,
        ValueXParametersParameter,
        DefaultValueXStructureMapSource,
        ValueXTaskInput,
        ValueXTaskOutput,
        DefaultValueXElementDefinition,
        FixedXElementDefinition,
        PatternXElementDefinition,
        MinValueXElementDefinition,
        MaxValueXElementDefinition,
        ValueXElementDefinitionExample,
        ValueXExtension {
  /// Constructor that ensures valid input.
  FhirPositiveInt(
    this.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'PositiveInt',
  }) : super(input != null ? _validatePositiveInt(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirPositiveInt');
    }
  }

  /// Creates empty [FhirPositiveInt] object
  factory FhirPositiveInt.empty() =>
      FhirPositiveInt(null, element: Element.empty());

  /// Factory constructor to create [FhirPositiveInt] from JSON input.
  factory FhirPositiveInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirPositiveInt(
      value?.toInt(),
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create [FhirPositiveInt] from YAML input.
  static FhirPositiveInt fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirPositiveInt.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirPositiveInt.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirPositiveInt: '
                'not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirPositiveInt], returns `null`
  /// if unsuccessful.
  static FhirPositiveInt? tryParse(dynamic input) {
    if (input is int && input > 0) {
      try {
        return FhirPositiveInt(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Validates that the input is a positive integer.
  static int _validatePositiveInt(num? input) {
    if (input == null || input <= 0 || input is! int) {
      throw FormatException('Invalid FhirPositiveInt value: $input. '
          'Must be an integer greater than zero.');
    }
    return input;
  }

  /// Converts a list of JSON values to a list of [FhirPositiveInt] instances.
  static List<FhirPositiveInt> fromJsonList(
    List<dynamic> values,
    List<dynamic>? elements,
  ) {
    if (elements != null && elements.length != values.length) {
      throw const FormatException(
        'Values and elements must have the same length',
      );
    }

    return List.generate(values.length, (i) {
      final value = values[i] as num?;
      final element = elements?[i] != null
          ? Element.fromJson(elements![i] as Map<String, dynamic>)
          : null;
      return FhirPositiveInt(value?.toInt(), element: element);
    });
  }

  /// Converts a list of [FhirPositiveInt] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirPositiveInt> integers) {
    return {
      'value': integers.map((integer) => integer.value).toList(),
      '_value': integers.map((integer) => integer.element?.toJson()).toList(),
    };
  }

  /// The original input value (for serialization purposes)
  final num? input;

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'positiveInt';

  /// Serializes the instance to JSON with standardized keys.
  @override
  Map<String, dynamic> toJson() => {
        if (value != null) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// Provides a string representation of the instance.
  @override
  String toString() => value.toString();

  /// Retrieves the primitive value of the object.
  @override
  String? get primitiveValue => value?.toString();

  @override
  bool equalsDeep(FhirBase? o) =>
      o is FhirPositiveInt && o.value == value && o.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirPositiveInt && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirPositiveInt clone() => FhirPositiveInt(
        value as int?,
        element: element?.clone() as Element?,
      );

  /// Sets disallowExtensions to true.
  FhirPositiveInt noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirPositiveInt copyWith({
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
    return FhirPositiveInt(
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
}
