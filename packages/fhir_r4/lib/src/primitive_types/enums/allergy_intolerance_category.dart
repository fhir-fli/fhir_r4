// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Category of an identified substance associated with allergies or
/// intolerances.
class AllergyIntoleranceCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCategory._({
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
  factory AllergyIntoleranceCategory(
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
    return AllergyIntoleranceCategory._(
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

  /// Create empty [AllergyIntoleranceCategory] with element only
  factory AllergyIntoleranceCategory.empty() =>
      AllergyIntoleranceCategory._(validatedValue: '');

  /// Factory constructor to create [AllergyIntoleranceCategory] from JSON.
  factory AllergyIntoleranceCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCategory cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCategory._(
      validatedValue: value,
      element: element,
    );
  }

  /// food
  static final AllergyIntoleranceCategory food = AllergyIntoleranceCategory._(
    validatedValue: 'food',
    system:
        'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Food'.toFhirString,
  );

  /// medication
  static final AllergyIntoleranceCategory medication =
      AllergyIntoleranceCategory._(
    validatedValue: 'medication',
    system:
        'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Medication'.toFhirString,
  );

  /// environment
  static final AllergyIntoleranceCategory environment =
      AllergyIntoleranceCategory._(
    validatedValue: 'environment',
    system:
        'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Environment'.toFhirString,
  );

  /// biologic
  static final AllergyIntoleranceCategory biologic =
      AllergyIntoleranceCategory._(
    validatedValue: 'biologic',
    system:
        'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Biologic'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AllergyIntoleranceCategory elementOnly =
      AllergyIntoleranceCategory._(validatedValue: '');

  /// List of all enum-like values
  static final List<AllergyIntoleranceCategory> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCategory clone() => AllergyIntoleranceCategory._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategory withElement(Element? newElement) {
    return AllergyIntoleranceCategory._(
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
  AllergyIntoleranceCategory copyWith({
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
    return AllergyIntoleranceCategory._(
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
