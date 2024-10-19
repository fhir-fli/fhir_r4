// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
@collection
class SubscriberRelationshipCodes {
  /// Constructor for internal use (like enum)
  SubscriberRelationshipCodes({this.fhirCode, this.element})
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

  /// SubscriberRelationshipCodes values
  /// child
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes child = SubscriberRelationshipCodes(
    fhirCode: 'child',
  );

  /// parent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes parent = SubscriberRelationshipCodes(
    fhirCode: 'parent',
  );

  /// spouse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes spouse = SubscriberRelationshipCodes(
    fhirCode: 'spouse',
  );

  /// common
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes common = SubscriberRelationshipCodes(
    fhirCode: 'common',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes other = SubscriberRelationshipCodes(
    fhirCode: 'other',
  );

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes self = SubscriberRelationshipCodes(
    fhirCode: 'self',
  );

  /// injured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes injured =
      SubscriberRelationshipCodes(
    fhirCode: 'injured',
  );

  /// For instances where an Element is present but not value

  static final SubscriberRelationshipCodes elementOnly =
      SubscriberRelationshipCodes();

  /// List of all enum-like values
  static final List<SubscriberRelationshipCodes> values = [
    child,
    parent,
    spouse,
    common,
    other,
    self,
    injured,
  ];

  /// Returns the enum value with an element attached
  SubscriberRelationshipCodes withElement(Element? newElement) {
    return SubscriberRelationshipCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [SubscriberRelationshipCodes] from JSON.
  static SubscriberRelationshipCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriberRelationshipCodes.elementOnly.withElement(element);
    }
    return SubscriberRelationshipCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriberRelationshipCodes.$fhirCode';
}
