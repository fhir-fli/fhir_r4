// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of SNOMED CT concepts that can classify a requested service
class ServiceRequestCategoryCodes {
  // Private constructor for internal use (like enum)
  ServiceRequestCategoryCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ServiceRequestCategoryCodes values
  /// value108252007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestCategoryCodes value108252007 =
      ServiceRequestCategoryCodes._(
    '108252007',
  );

  /// value363679005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestCategoryCodes value363679005 =
      ServiceRequestCategoryCodes._(
    '363679005',
  );

  /// value409063005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestCategoryCodes value409063005 =
      ServiceRequestCategoryCodes._(
    '409063005',
  );

  /// value409073007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestCategoryCodes value409073007 =
      ServiceRequestCategoryCodes._(
    '409073007',
  );

  /// value387713003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestCategoryCodes value387713003 =
      ServiceRequestCategoryCodes._(
    '387713003',
  );

  /// For instances where an Element is present but not value

  static final ServiceRequestCategoryCodes elementOnly =
      ServiceRequestCategoryCodes._('');

  /// List of all enum-like values
  static final List<ServiceRequestCategoryCodes> values = [
    value108252007,
    value363679005,
    value409063005,
    value409073007,
    value387713003,
  ];

  /// Returns the enum value with an element attached
  ServiceRequestCategoryCodes withElement(Element? newElement) {
    return ServiceRequestCategoryCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceRequestCategoryCodes] from JSON.
  static ServiceRequestCategoryCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestCategoryCodes.elementOnly.withElement(element);
    }
    return ServiceRequestCategoryCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceRequestCategoryCodes.$fhirCode';
}
