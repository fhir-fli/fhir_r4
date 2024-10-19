// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Type if a sequence -- DNA, RNA, or amino acid sequence.
@collection
class SequenceType {
  /// Constructor for internal use (like enum)
  SequenceType({this.fhirCode, this.element})
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

  /// SequenceType values
  /// aa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SequenceType aa = SequenceType(
    fhirCode: 'aa',
  );

  /// dna
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SequenceType dna = SequenceType(
    fhirCode: 'dna',
  );

  /// rna
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SequenceType rna = SequenceType(
    fhirCode: 'rna',
  );

  /// For instances where an Element is present but not value

  static final SequenceType elementOnly = SequenceType();

  /// List of all enum-like values
  static final List<SequenceType> values = [
    aa,
    dna,
    rna,
  ];

  /// Returns the enum value with an element attached
  SequenceType withElement(Element? newElement) {
    return SequenceType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SequenceType] from JSON.
  static SequenceType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SequenceType.elementOnly.withElement(element);
    }
    return SequenceType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SequenceType.$fhirCode';
}
