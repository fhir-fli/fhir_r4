// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes indicating the degree of authority/intentionality associated with a request.
class RequestIntent {
  // Private constructor for internal use (like enum)
  RequestIntent._(this.fhirCode, {this.element});

  /// Factory constructor to create [RequestIntent] from JSON.
  factory RequestIntent.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RequestIntent.elementOnly.withElement(element);
    }
    return RequestIntent._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RequestIntent values
  /// proposal
  static final RequestIntent proposal = RequestIntent._(
    'proposal',
  );

  /// plan
  static final RequestIntent plan = RequestIntent._(
    'plan',
  );

  /// directive
  static final RequestIntent directive = RequestIntent._(
    'directive',
  );

  /// order
  static final RequestIntent order = RequestIntent._(
    'order',
  );

  /// original_order
  static final RequestIntent original_order = RequestIntent._(
    'original-order',
  );

  /// reflex_order
  static final RequestIntent reflex_order = RequestIntent._(
    'reflex-order',
  );

  /// filler_order
  static final RequestIntent filler_order = RequestIntent._(
    'filler-order',
  );

  /// instance_order
  static final RequestIntent instance_order = RequestIntent._(
    'instance-order',
  );

  /// option
  static final RequestIntent option = RequestIntent._(
    'option',
  );

  /// For instances where an Element is present but not value

  static final RequestIntent elementOnly = RequestIntent._('');

  /// List of all enum-like values
  static final List<RequestIntent> values = [
    proposal,
    plan,
    directive,
    order,
    original_order,
    reflex_order,
    filler_order,
    instance_order,
    option,
  ];

  /// Returns the enum value with an element attached
  RequestIntent withElement(Element? newElement) {
    return RequestIntent._(fhirCode, element: newElement);
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
