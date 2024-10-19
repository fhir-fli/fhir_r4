// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Overall type of this authorization.
@collection
class RegulatedAuthorizationType {
  /// Constructor for internal use (like enum)
  RegulatedAuthorizationType({this.fhirCode, this.element})
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

  /// RegulatedAuthorizationType values
  /// MarketingAuth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationType MarketingAuth =
      RegulatedAuthorizationType(
    fhirCode: 'MarketingAuth',
  );

  /// Orphan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationType Orphan = RegulatedAuthorizationType(
    fhirCode: 'Orphan',
  );

  /// Pediatric
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationType Pediatric =
      RegulatedAuthorizationType(
    fhirCode: 'Pediatric',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationType elementOnly =
      RegulatedAuthorizationType();

  /// List of all enum-like values
  static final List<RegulatedAuthorizationType> values = [
    MarketingAuth,
    Orphan,
    Pediatric,
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationType withElement(Element? newElement) {
    return RegulatedAuthorizationType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RegulatedAuthorizationType] from JSON.
  static RegulatedAuthorizationType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationType.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationType.$fhirCode';
}
