// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of Codified order entry details concepts. These concepts only make sense in the context of what is being ordered. This example is for a patient ventilation order
class ServiceRequestOrderDetailsCodes {
  // Private constructor for internal use (like enum)
  ServiceRequestOrderDetailsCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ServiceRequestOrderDetailsCodes values
  /// value47545007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestOrderDetailsCodes value47545007 =
      ServiceRequestOrderDetailsCodes._(
    '47545007',
  );

  /// value286812008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestOrderDetailsCodes value286812008 =
      ServiceRequestOrderDetailsCodes._(
    '286812008',
  );

  /// value243144002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestOrderDetailsCodes value243144002 =
      ServiceRequestOrderDetailsCodes._(
    '243144002',
  );

  /// value243150007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestOrderDetailsCodes value243150007 =
      ServiceRequestOrderDetailsCodes._(
    '243150007',
  );

  /// value59427005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceRequestOrderDetailsCodes value59427005 =
      ServiceRequestOrderDetailsCodes._(
    '59427005',
  );

  /// For instances where an Element is present but not value

  static final ServiceRequestOrderDetailsCodes elementOnly =
      ServiceRequestOrderDetailsCodes._('');

  /// List of all enum-like values
  static final List<ServiceRequestOrderDetailsCodes> values = [
    value47545007,
    value286812008,
    value243144002,
    value243150007,
    value59427005,
  ];

  /// Returns the enum value with an element attached
  ServiceRequestOrderDetailsCodes withElement(Element? newElement) {
    return ServiceRequestOrderDetailsCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceRequestOrderDetailsCodes] from JSON.
  static ServiceRequestOrderDetailsCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestOrderDetailsCodes.elementOnly.withElement(element);
    }
    return ServiceRequestOrderDetailsCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceRequestOrderDetailsCodes.$fhirCode';
}
