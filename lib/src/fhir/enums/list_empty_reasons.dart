// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// General reasons for a list to be empty. Reasons are either related to a summary list (i.e. problem or medication list) or to a workflow related list (i.e. consultation list).
class ListEmptyReasons {
  // Private constructor for internal use (like enum)
  ListEmptyReasons._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ListEmptyReasons values
  /// nilknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons nilknown = ListEmptyReasons._(
    'nilknown',
  );

  /// notasked
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons notasked = ListEmptyReasons._(
    'notasked',
  );

  /// withheld
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons withheld = ListEmptyReasons._(
    'withheld',
  );

  /// unavailable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons unavailable = ListEmptyReasons._(
    'unavailable',
  );

  /// notstarted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons notstarted = ListEmptyReasons._(
    'notstarted',
  );

  /// closed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ListEmptyReasons closed = ListEmptyReasons._(
    'closed',
  );

  /// For instances where an Element is present but not value

  static final ListEmptyReasons elementOnly = ListEmptyReasons._('');

  /// List of all enum-like values
  static final List<ListEmptyReasons> values = [
    nilknown,
    notasked,
    withheld,
    unavailable,
    notstarted,
    closed,
  ];

  /// Returns the enum value with an element attached
  ListEmptyReasons withElement(Element? newElement) {
    return ListEmptyReasons._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ListEmptyReasons] from JSON.
  static ListEmptyReasons fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListEmptyReasons.elementOnly.withElement(element);
    }
    return ListEmptyReasons.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ListEmptyReasons.$fhirCode';
}
