// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The status of the endpoint.
@collection
class EndpointStatus {
  /// Constructor for internal use (like enum)
  EndpointStatus({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EndpointStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus active = EndpointStatus(
    fhirCode: 'active',
  );

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus suspended = EndpointStatus(
    fhirCode: 'suspended',
  );

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus error = EndpointStatus(
    fhirCode: 'error',
  );

  /// off
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus off = EndpointStatus(
    fhirCode: 'off',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus entered_in_error = EndpointStatus(
    fhirCode: 'entered-in-error',
  );

  /// test
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EndpointStatus test = EndpointStatus(
    fhirCode: 'test',
  );

  /// For instances where an Element is present but not value

  static final EndpointStatus elementOnly = EndpointStatus();

  /// List of all enum-like values
  static final List<EndpointStatus> values = [
    active,
    suspended,
    error,
    off,
    entered_in_error,
    test,
  ];

  /// Returns the enum value with an element attached
  EndpointStatus withElement(Element? newElement) {
    return EndpointStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EndpointStatus] from JSON.
  static EndpointStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly.withElement(element);
    }
    return EndpointStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EndpointStatus.$fhirCode';
}
