// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes Status codes.
@collection
class FinancialResourceStatusCodes {
  /// Constructor for internal use (like enum)
  FinancialResourceStatusCodes({this.fhirCode, this.element})
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

  /// FinancialResourceStatusCodes values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FinancialResourceStatusCodes active =
      FinancialResourceStatusCodes(
    fhirCode: 'active',
  );

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FinancialResourceStatusCodes cancelled =
      FinancialResourceStatusCodes(
    fhirCode: 'cancelled',
  );

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FinancialResourceStatusCodes draft =
      FinancialResourceStatusCodes(
    fhirCode: 'draft',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FinancialResourceStatusCodes entered_in_error =
      FinancialResourceStatusCodes(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FinancialResourceStatusCodes elementOnly =
      FinancialResourceStatusCodes();

  /// List of all enum-like values
  static final List<FinancialResourceStatusCodes> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  FinancialResourceStatusCodes withElement(Element? newElement) {
    return FinancialResourceStatusCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FinancialResourceStatusCodes] from JSON.
  static FinancialResourceStatusCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FinancialResourceStatusCodes.elementOnly.withElement(element);
    }
    return FinancialResourceStatusCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FinancialResourceStatusCodes.$fhirCode';
}
