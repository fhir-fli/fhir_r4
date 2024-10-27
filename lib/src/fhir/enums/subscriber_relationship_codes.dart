// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
class SubscriberRelationshipCodes {
  // Private constructor for internal use (like enum)
  SubscriberRelationshipCodes._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// SubscriberRelationshipCodes values
  /// child
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes child =
      SubscriberRelationshipCodes._(
    'child',
  );

  /// parent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes parent =
      SubscriberRelationshipCodes._(
    'parent',
  );

  /// spouse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes spouse =
      SubscriberRelationshipCodes._(
    'spouse',
  );

  /// common
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes common =
      SubscriberRelationshipCodes._(
    'common',
  );

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes other =
      SubscriberRelationshipCodes._(
    'other',
  );

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes self = SubscriberRelationshipCodes._(
    'self',
  );

  /// injured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final SubscriberRelationshipCodes injured =
      SubscriberRelationshipCodes._(
    'injured',
  );

  /// For instances where an Element is present but not value

  static final SubscriberRelationshipCodes elementOnly =
      SubscriberRelationshipCodes._('');

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
    return SubscriberRelationshipCodes._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
