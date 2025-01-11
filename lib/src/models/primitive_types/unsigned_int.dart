import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirUnsignedInt].
extension FhirUnsignedIntExtension on num {
  /// Converts a [num] to a [FhirUnsignedInt].
  FhirUnsignedInt get toFhirUnsignedInt => this is int
      ? FhirUnsignedInt(this as int)
      : int.tryParse(toString()) != null
          ? FhirUnsignedInt(int.parse(toString()))
          : throw FormatException('Invalid input for FhirUnsignedInt: $this');
}

/// Represents the FHIR primitive type `unsignedInt`.
class FhirUnsignedInt extends FhirNumber
    implements
        AllowedXCoverageEligibilityResponseBenefit,
        UsedXCoverageEligibilityResponseBenefit,
        AllowedXExplanationOfBenefitFinancial,
        UsedXExplanationOfBenefitFinancial,
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
  FhirUnsignedInt(
    this.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'UnsignedInt',
  }) : super(input != null ? _validateUnsignedInt(input) : null) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirUnsignedInt');
    }
  }

  /// Factory constructor to create [FhirUnsignedInt] from JSON input.
  factory FhirUnsignedInt.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirUnsignedInt(
      value?.toInt(),
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create [FhirUnsignedInt] from YAML input.
  static FhirUnsignedInt fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirUnsignedInt.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirUnsignedInt.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirUnsignedInt: '
                'not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirUnsignedInt], returns `null`
  /// if unsuccessful.
  static FhirUnsignedInt? tryParse(dynamic input) {
    if (input is int && input > 0) {
      try {
        return FhirUnsignedInt(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Validates that the input is a unsigned integer.
  static int _validateUnsignedInt(num? input) {
    if (input == null || input < 0 || input is! int) {
      throw FormatException('Invalid FhirUnsignedInt value: $input. '
          'Must be an integer greater than zero.');
    }
    return input;
  }

  /// Converts a list of JSON values to a list of [FhirUnsignedInt] instances.
  static List<FhirUnsignedInt> fromJsonList(
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
      return FhirUnsignedInt(value?.toInt(), element: element);
    });
  }

  /// Converts a list of [FhirUnsignedInt] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirUnsignedInt> integers) {
    return {
      'value': integers.map((integer) => integer.value).toList(),
      '_value': integers.map((integer) => integer.element?.toJson()).toList(),
    };
  }

  /// The original input value (for serialization purposes)
  final num? input;

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'unsignedInt';

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
      o is FhirUnsignedInt && o.value == value && o.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirUnsignedInt && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirUnsignedInt clone() => FhirUnsignedInt(
        value as int?,
        element: element?.clone() as Element?,
      );

  /// Sets disallowExtensions to true.
  FhirUnsignedInt noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirUnsignedInt copyWith({
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
    return FhirUnsignedInt(
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
