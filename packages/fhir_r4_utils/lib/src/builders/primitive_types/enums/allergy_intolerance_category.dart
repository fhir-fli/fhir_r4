// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Category of an identified substance associated with allergies or
/// intolerances.
class AllergyIntoleranceCategoryBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AllergyIntoleranceCategoryBuilder._({
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
  factory AllergyIntoleranceCategoryBuilder(
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
    return AllergyIntoleranceCategoryBuilder._(
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

  /// Create empty [AllergyIntoleranceCategoryBuilder] with element only
  factory AllergyIntoleranceCategoryBuilder.empty() =>
      AllergyIntoleranceCategoryBuilder._(valueString: '');

  /// Factory constructor to create [AllergyIntoleranceCategoryBuilder]
  /// from JSON.
  factory AllergyIntoleranceCategoryBuilder.fromJson(
      Map<String, dynamic> json,) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceCategoryBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceCategoryBuilder cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceCategoryBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// food
  static AllergyIntoleranceCategoryBuilder food =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'food',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Food'.toFhirStringBuilder,
  );

  /// medication
  static AllergyIntoleranceCategoryBuilder medication =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'medication',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Medication'.toFhirStringBuilder,
  );

  /// environment
  static AllergyIntoleranceCategoryBuilder environment =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'environment',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Environment'.toFhirStringBuilder,
  );

  /// biologic
  static AllergyIntoleranceCategoryBuilder biologic =
      AllergyIntoleranceCategoryBuilder._(
    valueString: 'biologic',
    system: 'http://hl7.org/fhir/ValueSet/allergy-intolerance-category'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Biologic'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static AllergyIntoleranceCategoryBuilder elementOnly =
      AllergyIntoleranceCategoryBuilder._(valueString: '');

  /// List of all enum-like values
  static List<AllergyIntoleranceCategoryBuilder> values = [
    food,
    medication,
    environment,
    biologic,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceCategoryBuilder clone() =>
      AllergyIntoleranceCategoryBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceCategoryBuilder withElement(ElementBuilder? newElement) {
    return AllergyIntoleranceCategoryBuilder._(
        valueString: valueString, element: newElement,);
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
  AllergyIntoleranceCategoryBuilder copyWith({
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
          'Invalid input for AllergyIntoleranceCategory: $newValue',);
    }
    return AllergyIntoleranceCategoryBuilder._(
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
