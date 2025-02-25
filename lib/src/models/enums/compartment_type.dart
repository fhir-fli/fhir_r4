// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Which type a compartment definition describes.
class CompartmentType extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  CompartmentType._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [CompartmentType] with element only
  factory CompartmentType.empty() => CompartmentType._('');

  /// Factory constructor to create [CompartmentType] from JSON.
  factory CompartmentType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CompartmentType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CompartmentType cannot be constructed from JSON.',
      );
    }
    return CompartmentType._(
      value,
      element: element,
    );
  }

  /// Patient
  static final CompartmentType Patient = CompartmentType._(
    'Patient',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Patient'.toFhirString,
  );

  /// Encounter
  static final CompartmentType Encounter = CompartmentType._(
    'Encounter',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Encounter'.toFhirString,
  );

  /// RelatedPerson
  static final CompartmentType RelatedPerson = CompartmentType._(
    'RelatedPerson',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'RelatedPerson'.toFhirString,
  );

  /// Practitioner
  static final CompartmentType Practitioner = CompartmentType._(
    'Practitioner',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Practitioner'.toFhirString,
  );

  /// Device
  static final CompartmentType Device = CompartmentType._(
    'Device',
    system: 'http://hl7.org/fhir/ValueSet/compartment-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Device'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final CompartmentType elementOnly = CompartmentType._('');

  /// List of all enum-like values
  static final List<CompartmentType> values = [
    Patient,
    Encounter,
    RelatedPerson,
    Practitioner,
    Device,
  ];

  /// Clones the current instance
  @override
  CompartmentType clone() => CompartmentType._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  CompartmentType withElement(Element? newElement) {
    return CompartmentType._(
      value,
      element: newElement,
    );
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
  CompartmentType copyWith({
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
    return CompartmentType._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
