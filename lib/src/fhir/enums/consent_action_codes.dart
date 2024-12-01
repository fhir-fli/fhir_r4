// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Consent Action codes.
class ConsentActionCodes {
  // Private constructor for internal use (like enum)
  ConsentActionCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [ConsentActionCodes] from JSON.
  factory ConsentActionCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentActionCodes.elementOnly.withElement(element);
    }
    return ConsentActionCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentActionCodes values
  /// collect
  static final ConsentActionCodes collect = ConsentActionCodes._(
    'collect',
  );

  /// access
  static final ConsentActionCodes access = ConsentActionCodes._(
    'access',
  );

  /// use
  static final ConsentActionCodes use = ConsentActionCodes._(
    'use',
  );

  /// disclose
  static final ConsentActionCodes disclose = ConsentActionCodes._(
    'disclose',
  );

  /// correct
  static final ConsentActionCodes correct = ConsentActionCodes._(
    'correct',
  );

  /// For instances where an Element is present but not value

  static final ConsentActionCodes elementOnly = ConsentActionCodes._('');

  /// List of all enum-like values
  static final List<ConsentActionCodes> values = [
    collect,
    access,
    use,
    disclose,
    correct,
  ];

  /// Returns the enum value with an element attached
  ConsentActionCodes withElement(Element? newElement) {
    return ConsentActionCodes._(fhirCode, element: newElement);
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
