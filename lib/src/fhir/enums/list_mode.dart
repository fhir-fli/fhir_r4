// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The processing mode that applies to this list.
class ListMode {
  // Private constructor for internal use (like enum)
  ListMode._(this.fhirCode, {this.element});

  /// Factory constructor to create [ListMode] from JSON.
  factory ListMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode.elementOnly.withElement(element);
    }
    return ListMode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ListMode values
  /// working
  static final ListMode working = ListMode._(
    'working',
  );

  /// snapshot
  static final ListMode snapshot = ListMode._(
    'snapshot',
  );

  /// changes
  static final ListMode changes = ListMode._(
    'changes',
  );

  /// For instances where an Element is present but not value

  static final ListMode elementOnly = ListMode._('');

  /// List of all enum-like values
  static final List<ListMode> values = [
    working,
    snapshot,
    changes,
  ];

  /// Returns the enum value with an element attached
  ListMode withElement(Element? newElement) {
    return ListMode._(fhirCode, element: newElement);
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
