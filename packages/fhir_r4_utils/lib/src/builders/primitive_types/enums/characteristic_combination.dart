// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Logical grouping of characteristics.
class CharacteristicCombinationBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CharacteristicCombinationBuilder._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory CharacteristicCombinationBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return CharacteristicCombinationBuilder._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [CharacteristicCombinationBuilder] with element only
  factory CharacteristicCombinationBuilder.empty() =>
      CharacteristicCombinationBuilder._(valueString: '');

  /// Factory constructor to create [CharacteristicCombinationBuilder]
  /// from JSON.
  factory CharacteristicCombinationBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CharacteristicCombinationBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CharacteristicCombinationBuilder cannot be constructed from JSON.',
      );
    }
    return CharacteristicCombinationBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// intersection
  static CharacteristicCombinationBuilder intersection =
      CharacteristicCombinationBuilder._(
    valueString: 'intersection',
    system: 'http://hl7.org/fhir/ValueSet/characteristic-combination'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'intersection'.toFhirStringBuilder,
  );

  /// union
  static CharacteristicCombinationBuilder union =
      CharacteristicCombinationBuilder._(
    valueString: 'union',
    system: 'http://hl7.org/fhir/ValueSet/characteristic-combination'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'union'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static CharacteristicCombinationBuilder elementOnly =
      CharacteristicCombinationBuilder._(valueString: '');

  /// List of all enum-like values
  static List<CharacteristicCombinationBuilder> values = [
    intersection,
    union,
  ];

  /// Clones the current instance
  @override
  CharacteristicCombinationBuilder clone() =>
      CharacteristicCombinationBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  CharacteristicCombinationBuilder withElement(ElementBuilder? newElement) {
    return CharacteristicCombinationBuilder._(
        valueString: valueString, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  CharacteristicCombinationBuilder copyWith({
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for CharacteristicCombination: $newValue');
    }
    return CharacteristicCombinationBuilder._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
