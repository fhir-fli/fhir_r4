// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How slices are interpreted when evaluating an instance.
@collection
class SlicingRules {
  /// Constructor for internal use (like enum)
  SlicingRules({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SlicingRules values
  /// closed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlicingRules closed = SlicingRules(
    fhirCode: 'closed',
  );

  /// open
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlicingRules open = SlicingRules(
    fhirCode: 'open',
  );

  /// openAtEnd
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SlicingRules openAtEnd = SlicingRules(
    fhirCode: 'openAtEnd',
  );

  /// For instances where an Element is present but not value

  static final SlicingRules elementOnly = SlicingRules();

  /// List of all enum-like values
  static final List<SlicingRules> values = [
    closed,
    open,
    openAtEnd,
  ];

  /// Returns the enum value with an element attached
  SlicingRules withElement(Element? newElement) {
    return SlicingRules(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SlicingRules] from JSON.
  static SlicingRules fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRules.elementOnly.withElement(element);
    }
    return SlicingRules.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SlicingRules.$fhirCode';
}
