// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Example list of general categories for flagged issues. (Not complete or necessarily appropriate.)
class FlagCategory {
  // Private constructor for internal use (like enum)
  FlagCategory._(this.fhirCode, {this.element});

  /// Factory constructor to create [FlagCategory] from JSON.
  factory FlagCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FlagCategory.elementOnly.withElement(element);
    }
    return FlagCategory._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// FlagCategory values
  /// diet
  static final FlagCategory diet = FlagCategory._(
    'diet',
  );

  /// drug
  static final FlagCategory drug = FlagCategory._(
    'drug',
  );

  /// lab
  static final FlagCategory lab = FlagCategory._(
    'lab',
  );

  /// admin
  static final FlagCategory admin = FlagCategory._(
    'admin',
  );

  /// contact
  static final FlagCategory contact = FlagCategory._(
    'contact',
  );

  /// clinical
  static final FlagCategory clinical = FlagCategory._(
    'clinical',
  );

  /// behavioral
  static final FlagCategory behavioral = FlagCategory._(
    'behavioral',
  );

  /// research
  static final FlagCategory research = FlagCategory._(
    'research',
  );

  /// advance_directive
  static final FlagCategory advance_directive = FlagCategory._(
    'advance-directive',
  );

  /// safety
  static final FlagCategory safety = FlagCategory._(
    'safety',
  );

  /// For instances where an Element is present but not value

  static final FlagCategory elementOnly = FlagCategory._('');

  /// List of all enum-like values
  static final List<FlagCategory> values = [
    diet,
    drug,
    lab,
    admin,
    contact,
    clinical,
    behavioral,
    research,
    advance_directive,
    safety,
  ];

  /// Returns the enum value with an element attached
  FlagCategory withElement(Element? newElement) {
    return FlagCategory._(fhirCode, element: newElement);
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
