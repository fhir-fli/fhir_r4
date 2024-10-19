// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The relationship between two substance types.
@collection
class SubstanceAmountType {
  /// Constructor for internal use (like enum)
  SubstanceAmountType({this.fhirCode, this.element})
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

  /// SubstanceAmountType values
  /// Average
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceAmountType Average = SubstanceAmountType(
    fhirCode: 'Average',
  );

  /// Approximately
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceAmountType Approximately = SubstanceAmountType(
    fhirCode: 'Approximately',
  );

  /// LessThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceAmountType LessThan = SubstanceAmountType(
    fhirCode: 'LessThan',
  );

  /// MoreThan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubstanceAmountType MoreThan = SubstanceAmountType(
    fhirCode: 'MoreThan',
  );

  /// For instances where an Element is present but not value

  static final SubstanceAmountType elementOnly = SubstanceAmountType();

  /// List of all enum-like values
  static final List<SubstanceAmountType> values = [
    Average,
    Approximately,
    LessThan,
    MoreThan,
  ];

  /// Returns the enum value with an element attached
  SubstanceAmountType withElement(Element? newElement) {
    return SubstanceAmountType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubstanceAmountType] from JSON.
  static SubstanceAmountType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubstanceAmountType.elementOnly.withElement(element);
    }
    return SubstanceAmountType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubstanceAmountType.$fhirCode';
}
