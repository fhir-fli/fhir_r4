// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes identifying the lifecycle stage of a request.
class RequestStatus {
  // Private constructor for internal use (like enum)
  RequestStatus._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RequestStatus values
  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus draft = RequestStatus._(
    'draft',
  );

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus active = RequestStatus._(
    'active',
  );

  /// on_hold
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus on_hold = RequestStatus._(
    'on-hold',
  );

  /// revoked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus revoked = RequestStatus._(
    'revoked',
  );

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus completed = RequestStatus._(
    'completed',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus entered_in_error = RequestStatus._(
    'entered-in-error',
  );

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RequestStatus unknown = RequestStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final RequestStatus elementOnly = RequestStatus._('');

  /// List of all enum-like values
  static final List<RequestStatus> values = [
    draft,
    active,
    on_hold,
    revoked,
    completed,
    entered_in_error,
    unknown,
  ];

  /// Returns the enum value with an element attached
  RequestStatus withElement(Element? newElement) {
    return RequestStatus._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RequestStatus] from JSON.
  static RequestStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestStatus.elementOnly.withElement(element);
    }
    return RequestStatus._(value!, element: element);
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
