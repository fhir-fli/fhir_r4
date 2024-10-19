// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
class ServiceProvisionConditions {
  // Private constructor for internal use (like enum)
  ServiceProvisionConditions._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ServiceProvisionConditions values
  /// free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions free = ServiceProvisionConditions._(
    'free',
  );

  /// disc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions disc = ServiceProvisionConditions._(
    'disc',
  );

  /// cost
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions cost = ServiceProvisionConditions._(
    'cost',
  );

  /// For instances where an Element is present but not value

  static final ServiceProvisionConditions elementOnly =
      ServiceProvisionConditions._('');

  /// List of all enum-like values
  static final List<ServiceProvisionConditions> values = [
    free,
    disc,
    cost,
  ];

  /// Returns the enum value with an element attached
  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceProvisionConditions] from JSON.
  static ServiceProvisionConditions fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly.withElement(element);
    }
    return ServiceProvisionConditions.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceProvisionConditions.$fhirCode';
}
