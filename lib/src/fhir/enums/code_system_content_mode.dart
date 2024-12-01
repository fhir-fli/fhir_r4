// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.
class CodeSystemContentMode {
  // Private constructor for internal use (like enum)
  CodeSystemContentMode._(this.fhirCode, {this.element});

  /// Factory constructor to create [CodeSystemContentMode] from JSON.
  factory CodeSystemContentMode.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode.elementOnly.withElement(element);
    }
    return CodeSystemContentMode._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CodeSystemContentMode values
  /// not_present
  static final CodeSystemContentMode not_present = CodeSystemContentMode._(
    'not-present',
  );

  /// example
  static final CodeSystemContentMode example = CodeSystemContentMode._(
    'example',
  );

  /// fragment
  static final CodeSystemContentMode fragment = CodeSystemContentMode._(
    'fragment',
  );

  /// complete
  static final CodeSystemContentMode complete = CodeSystemContentMode._(
    'complete',
  );

  /// supplement
  static final CodeSystemContentMode supplement = CodeSystemContentMode._(
    'supplement',
  );

  /// For instances where an Element is present but not value

  static final CodeSystemContentMode elementOnly = CodeSystemContentMode._('');

  /// List of all enum-like values
  static final List<CodeSystemContentMode> values = [
    not_present,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Returns the enum value with an element attached
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode._(fhirCode, element: newElement);
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
