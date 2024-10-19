// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How the Quantity should be understood and represented.
@collection
class QuantityComparator {
  /// Constructor for internal use (like enum)
  QuantityComparator({this.fhirCode, this.element})
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

  /// QuantityComparator values
  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuantityComparator lt = QuantityComparator(
    fhirCode: '<',
  );

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuantityComparator le = QuantityComparator(
    fhirCode: '<=',
  );

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuantityComparator ge = QuantityComparator(
    fhirCode: '>=',
  );

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final QuantityComparator gt = QuantityComparator(
    fhirCode: '>',
  );

  /// For instances where an Element is present but not value

  static final QuantityComparator elementOnly = QuantityComparator();

  /// List of all enum-like values
  static final List<QuantityComparator> values = [
    lt,
    le,
    ge,
    gt,
  ];

  /// Returns the enum value with an element attached
  QuantityComparator withElement(Element? newElement) {
    return QuantityComparator(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [QuantityComparator] from JSON.
  static QuantityComparator fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return QuantityComparator.elementOnly.withElement(element);
    }
    return QuantityComparator.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'QuantityComparator.$fhirCode';
}
