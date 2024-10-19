// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code to indicate if the substance is actively used.
@collection
class FHIRSubstanceStatus {
  /// Constructor for internal use (like enum)
  FHIRSubstanceStatus({this.fhirCode, this.element})
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

  /// FHIRSubstanceStatus values
  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSubstanceStatus active = FHIRSubstanceStatus(
    fhirCode: 'active',
  );

  /// inactive
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSubstanceStatus inactive = FHIRSubstanceStatus(
    fhirCode: 'inactive',
  );

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final FHIRSubstanceStatus entered_in_error = FHIRSubstanceStatus(
    fhirCode: 'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final FHIRSubstanceStatus elementOnly = FHIRSubstanceStatus();

  /// List of all enum-like values
  static final List<FHIRSubstanceStatus> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Returns the enum value with an element attached
  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [FHIRSubstanceStatus] from JSON.
  static FHIRSubstanceStatus fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus.elementOnly.withElement(element);
    }
    return FHIRSubstanceStatus.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRSubstanceStatus.$fhirCode';
}
