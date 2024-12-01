// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes the financial processing priority codes.
class ProcessPriorityCodes {
  // Private constructor for internal use (like enum)
  ProcessPriorityCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ProcessPriorityCodes] from JSON.
  factory ProcessPriorityCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProcessPriorityCodes.elementOnly.withElement(element);
    }
    return ProcessPriorityCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ProcessPriorityCodes values
  /// stat
  static final ProcessPriorityCodes stat = ProcessPriorityCodes._(
    'stat',
  );

  /// normal
  static final ProcessPriorityCodes normal = ProcessPriorityCodes._(
    'normal',
  );

  /// deferred_
  static final ProcessPriorityCodes deferred_ = ProcessPriorityCodes._(
    'deferred',
  );

  /// For instances where an Element is present but not value

  static final ProcessPriorityCodes elementOnly = ProcessPriorityCodes._('');

  /// List of all enum-like values
  static final List<ProcessPriorityCodes> values = [
    stat,
    normal,
    deferred_,
  ];

  /// Returns the enum value with an element attached
  ProcessPriorityCodes withElement(Element? newElement) {
    return ProcessPriorityCodes._(fhirCode, element: newElement);
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
