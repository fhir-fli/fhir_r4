// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate the kinds of special arrangements in place for a patients visit.
class SpecialArrangements {
  // Private constructor for internal use (like enum)
  SpecialArrangements._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SpecialArrangements values
  /// wheel
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialArrangements wheel = SpecialArrangements._(
    'wheel',
  );

  /// add_bed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialArrangements add_bed = SpecialArrangements._(
    'add-bed',
  );

  /// int_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialArrangements int_ = SpecialArrangements._(
    'int',
  );

  /// att
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialArrangements att = SpecialArrangements._(
    'att',
  );

  /// dog
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SpecialArrangements dog = SpecialArrangements._(
    'dog',
  );

  /// For instances where an Element is present but not value

  static final SpecialArrangements elementOnly = SpecialArrangements._('');

  /// List of all enum-like values
  static final List<SpecialArrangements> values = [
    wheel,
    add_bed,
    int_,
    att,
    dog,
  ];

  /// Returns the enum value with an element attached
  SpecialArrangements withElement(Element? newElement) {
    return SpecialArrangements._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SpecialArrangements] from JSON.
  static SpecialArrangements fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialArrangements.elementOnly.withElement(element);
    }
    return SpecialArrangements.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialArrangements.$fhirCode';
}
