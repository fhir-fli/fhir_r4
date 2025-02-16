import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// Extension to convert a [num] to a [FhirInteger].
extension FhirIntegerExtension on num {
  /// Converts a [num] to a [FhirInteger].
  FhirInteger get toFhirInteger => this is int
      ? FhirInteger(this as int)
      : int.tryParse(toString()) != null
          ? FhirInteger(int.parse(toString()))
          : throw FormatException('Invalid input for FhirInteger: $this');
}

/// Represents the FHIR primitive type `integer`.
class FhirInteger extends FhirNumber
    implements
        ValueXCodeSystemProperty,
        ValueXContractAnswer,
        DetailXGoalTarget,
        ValueXObservation,
        ValueXObservationComponent,
        ValueXParametersParameter,
        MultipleBirthXPatient,
        AnswerXQuestionnaireEnableWhen,
        ValueXQuestionnaireAnswerOption,
        ValueXQuestionnaireInitial,
        ValueXQuestionnaireResponseAnswer,
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
  /// Constructor that ensures valid input.
  FhirInteger(
    super.input, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Integer',
  }) {
    if (value == null && element == null) {
      throw ArgumentError('A value or element is required for FhirInteger');
    }
  }

    /// Creates empty [FhirInteger] object
  factory FhirInteger.empty() =>
      FhirInteger(null, element: Element.empty());

  /// Factory constructor to create [FhirInteger] from JSON input.
  factory FhirInteger.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as num?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    final objectPath = json['objectPath'] as String?;
    return FhirInteger(
      value?.toInt(),
      element: element,
      objectPath: objectPath,
    );
  }

  /// Factory constructor to create [FhirInteger] from YAML input.
  static FhirInteger fromYaml(dynamic yaml) {
    return yaml is String
        ? FhirInteger.fromJson(
            jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>,
          )
        : yaml is YamlMap
            ? FhirInteger.fromJson(
                jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>,
              )
            : throw const FormatException(
                'Invalid input for FhirInteger: '
                'not a valid YAML string or map.',
              );
  }

  /// Static method to try parsing input as [FhirInteger], returns `null`
  /// if unsuccessful.
  static FhirInteger? tryParse(dynamic input) {
    if (input is int) {
      try {
        return FhirInteger(input);
      } catch (_) {
        return null;
      }
    }
    return null;
  }

  /// Converts a list of JSON values to a list of [FhirInteger] instances.
  static List<FhirInteger> fromJsonList(
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
      return FhirInteger(value?.toInt(), element: element);
    });
  }

  /// Converts a list of [FhirInteger] instances to a JSON-compatible map.
  static Map<String, dynamic> toJsonList(List<FhirInteger> integers) {
    return {
      'value': integers.map((integer) => integer.value).toList(),
      '_value': integers.map((integer) => integer.element?.toJson()).toList(),
    };
  }

  /// Returns the FHIR type as a string.
  @override
  String get fhirType => 'integer';

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
      o is FhirInteger && o.value == value && o.element == element;

  /// Overrides equality operator to compare instances.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FhirInteger && other.value == value) ||
      (other is int && other == value);

  /// Overrides hashCode for use in hash-based collections.
  @override
  // ignore: avoid_equals_and_hash_code_on_mutable_classes
  int get hashCode => Object.hash(value, element);

  /// Clones the current instance.
  @override
  FhirInteger clone() => FhirInteger(
        value as int?,
        element: element?.clone() as Element?,
      );

  /// Sets disallowExtensions to true
  FhirInteger noExtensions() => copyWith(disallowExtensions: true);

  /// Creates a modified copy with updated properties.
  @override
  FhirInteger copyWith({
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return FhirInteger(
      (newValue ?? value) as int?,
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
