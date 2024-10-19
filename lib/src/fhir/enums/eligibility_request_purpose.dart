// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A code specifying the types of information being requested.
@collection
class EligibilityRequestPurpose {
  /// Constructor for internal use (like enum)
  EligibilityRequestPurpose({this.fhirCode, this.element})
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

  /// EligibilityRequestPurpose values
  /// auth_requirements
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityRequestPurpose auth_requirements =
      EligibilityRequestPurpose(
    fhirCode: 'auth-requirements',
  );

  /// benefits
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityRequestPurpose benefits = EligibilityRequestPurpose(
    fhirCode: 'benefits',
  );

  /// discovery
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityRequestPurpose discovery = EligibilityRequestPurpose(
    fhirCode: 'discovery',
  );

  /// validation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EligibilityRequestPurpose validation = EligibilityRequestPurpose(
    fhirCode: 'validation',
  );

  /// For instances where an Element is present but not value

  static final EligibilityRequestPurpose elementOnly =
      EligibilityRequestPurpose();

  /// List of all enum-like values
  static final List<EligibilityRequestPurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Returns the enum value with an element attached
  EligibilityRequestPurpose withElement(Element? newElement) {
    return EligibilityRequestPurpose(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EligibilityRequestPurpose] from JSON.
  static EligibilityRequestPurpose fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurpose.elementOnly.withElement(element);
    }
    return EligibilityRequestPurpose.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EligibilityRequestPurpose.$fhirCode';
}
