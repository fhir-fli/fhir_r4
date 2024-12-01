// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the endpoint.
class EndpointStatus {
  // Private constructor for internal use (like enum)
  EndpointStatus._(this.fhirCode, {this.element});

  /// Factory constructor to create [EndpointStatus] from JSON.
  factory EndpointStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EndpointStatus.elementOnly.withElement(element);
    }
    return EndpointStatus._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EndpointStatus values
  /// active
  static final EndpointStatus active = EndpointStatus._(
    'active',
  );

  /// suspended
  static final EndpointStatus suspended = EndpointStatus._(
    'suspended',
  );

  /// error
  static final EndpointStatus error = EndpointStatus._(
    'error',
  );

  /// off
  static final EndpointStatus off = EndpointStatus._(
    'off',
  );

  /// entered_in_error
  static final EndpointStatus entered_in_error = EndpointStatus._(
    'entered-in-error',
  );

  /// test
  static final EndpointStatus test = EndpointStatus._(
    'test',
  );

  /// For instances where an Element is present but not value

  static final EndpointStatus elementOnly = EndpointStatus._('');

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
    return EndpointStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
