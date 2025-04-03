// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Clinical assessment of the severity of a reaction event as a whole,
/// potentially considering multiple different manifestations.
class AllergyIntoleranceSeverity extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  AllergyIntoleranceSeverity._({
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
  factory AllergyIntoleranceSeverity(
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
    return AllergyIntoleranceSeverity._(
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

  /// Create empty [AllergyIntoleranceSeverity] with element only
  factory AllergyIntoleranceSeverity.empty() =>
      AllergyIntoleranceSeverity._(valueString: '');

  /// Factory constructor to create [AllergyIntoleranceSeverity] from JSON.
  factory AllergyIntoleranceSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AllergyIntoleranceSeverity.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AllergyIntoleranceSeverity cannot be constructed from JSON.',
      );
    }
    return AllergyIntoleranceSeverity._(
      valueString: value,
      element: element,
    );
  }

  /// mild
  static final AllergyIntoleranceSeverity mild = AllergyIntoleranceSeverity._(
    valueString: 'mild',
    system: 'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mild'.toFhirString,
  );

  /// moderate
  static final AllergyIntoleranceSeverity moderate =
      AllergyIntoleranceSeverity._(
    valueString: 'moderate',
    system: 'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Moderate'.toFhirString,
  );

  /// severe
  static final AllergyIntoleranceSeverity severe = AllergyIntoleranceSeverity._(
    valueString: 'severe',
    system: 'http://hl7.org/fhir/ValueSet/reaction-event-severity'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Severe'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final AllergyIntoleranceSeverity elementOnly =
      AllergyIntoleranceSeverity._(valueString: '');

  /// List of all enum-like values
  static final List<AllergyIntoleranceSeverity> values = [
    mild,
    moderate,
    severe,
  ];

  /// Clones the current instance
  @override
  AllergyIntoleranceSeverity clone() => AllergyIntoleranceSeverity._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  AllergyIntoleranceSeverity withElement(Element? newElement) {
    return AllergyIntoleranceSeverity._(
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
  AllergyIntoleranceSeverity copyWith({
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
          'Invalid input for AllergyIntoleranceSeverity: $newValue');
    }
    return AllergyIntoleranceSeverity._(
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
