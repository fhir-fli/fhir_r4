// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identification of the underlying physiological mechanism for a Reaction
/// Risk.
class AllergyIntoleranceType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AllergyIntoleranceType._({
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
  factory AllergyIntoleranceType(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return AllergyIntoleranceType._(
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

  /// Create empty [AllergyIntoleranceType] with element only
  factory AllergyIntoleranceType.empty() =>
      AllergyIntoleranceType._(valueString: '');

  /// Factory constructor to create [AllergyIntoleranceType] from JSON.
  factory AllergyIntoleranceType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceType cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceType._(
      valueString: value,
      element: element,
    );
  }

  /// allergy
  static final AllergyIntoleranceType allergy = AllergyIntoleranceType._(
    valueString: 'allergy',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Allergy'.toFhirString,
  );

  /// intolerance
  static final AllergyIntoleranceType intolerance = AllergyIntoleranceType._(
    valueString: 'intolerance',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Intolerance'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AllergyIntoleranceType elementOnly =
      AllergyIntoleranceType._(valueString: '');

  /// List of all enum-like values
  static final List<AllergyIntoleranceType> values = [
    allergy,
    intolerance,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceType clone() => AllergyIntoleranceType._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceType withElement(Element? newElement) {
    return AllergyIntoleranceType._(
      valueString: valueString,
      element: newElement,
    );
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
  AllergyIntoleranceType copyWith({
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
    if (newValue is! String?) {
      throw ArgumentError(
          'Invalid input for AllergyIntoleranceType: $newValue');
    }
    return AllergyIntoleranceType._(
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
