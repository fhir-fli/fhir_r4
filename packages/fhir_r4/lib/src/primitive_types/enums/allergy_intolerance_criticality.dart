// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Estimate of the potential clinical harm, or seriousness, of a reaction
/// to an identified substance.
class AllergyIntoleranceCriticality extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCriticality._({
    required super.validatedValue,
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
  factory AllergyIntoleranceCriticality(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return AllergyIntoleranceCriticality._(
      validatedValue: validated,
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

  /// Create empty [AllergyIntoleranceCriticality] with element only
  factory AllergyIntoleranceCriticality.empty() =>
      AllergyIntoleranceCriticality._(validatedValue: '');

  /// Factory constructor to create [AllergyIntoleranceCriticality] from JSON.
  factory AllergyIntoleranceCriticality.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCriticality.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'AllergyIntoleranceCriticality cannot be constructed from JSON.',);
    }
    return AllergyIntoleranceCriticality._(
        validatedValue: value, element: element,);
  }

  /// low
  static final AllergyIntoleranceCriticality low =
      AllergyIntoleranceCriticality._(
    validatedValue: 'low',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Low Risk'.toFhirString,
  );

  /// high
  static final AllergyIntoleranceCriticality high =
      AllergyIntoleranceCriticality._(
    validatedValue: 'high',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'High Risk'.toFhirString,
  );

  /// unable_to_assess
  static final AllergyIntoleranceCriticality unable_to_assess =
      AllergyIntoleranceCriticality._(
    validatedValue: 'unable-to-assess',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-criticality'
        .toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Unable to Assess Risk'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AllergyIntoleranceCriticality elementOnly =
      AllergyIntoleranceCriticality._(validatedValue: '');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCriticality> values = [
    low,
    high,
    unable_to_assess,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCriticality clone() => AllergyIntoleranceCriticality._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCriticality withElement(Element? newElement) {
    return AllergyIntoleranceCriticality._(
        validatedValue: value, element: newElement,);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  AllergyIntoleranceCriticality copyWith({
    String? newValue,
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
    return AllergyIntoleranceCriticality._(
      validatedValue: newValue ?? value,
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
