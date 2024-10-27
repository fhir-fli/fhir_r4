// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a resource reference is interpreted when testing consent restrictions.
class ConsentDataMeaning {
  // Private constructor for internal use (like enum)
  ConsentDataMeaning._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ConsentDataMeaning values
  /// instance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning instance = ConsentDataMeaning._(
    'instance',
  );

  /// related
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning related = ConsentDataMeaning._(
    'related',
  );

  /// dependents
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning dependents = ConsentDataMeaning._(
    'dependents',
  );

  /// authoredby
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ConsentDataMeaning authoredby = ConsentDataMeaning._(
    'authoredby',
  );

  /// For instances where an Element is present but not value

  static final ConsentDataMeaning elementOnly = ConsentDataMeaning._('');

  /// List of all enum-like values
  static final List<ConsentDataMeaning> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Returns the enum value with an element attached
  ConsentDataMeaning withElement(Element? newElement) {
    return ConsentDataMeaning._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ConsentDataMeaning] from JSON.
  static ConsentDataMeaning fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaning.elementOnly.withElement(element);
    }
    return ConsentDataMeaning.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
