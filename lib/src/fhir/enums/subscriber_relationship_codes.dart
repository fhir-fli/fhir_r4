// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
@Entity()
class SubscriberRelationshipCodes extends FhirCode {
  /// Factory constructor to create [SubscriberRelationshipCodes] from JSON.
  factory SubscriberRelationshipCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriberRelationshipCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubscriberRelationshipCodes._(value, element);
    }
    throw ArgumentError(
      'SubscriberRelationshipCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// child
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.child([this.element])
      : dbValue = 'child',
        super('child', element);

  /// parent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.parent([this.element])
      : dbValue = 'parent',
        super('parent', element);

  /// spouse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.spouse([this.element])
      : dbValue = 'spouse',
        super('spouse', element);

  /// common
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.common([this.element])
      : dbValue = 'common',
        super('common', element);

  /// other
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.other([this.element])
      : dbValue = 'other',
        super('other', element);

  /// self
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.self([this.element])
      : dbValue = 'self',
        super('self', element);

  /// injured
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriberRelationshipCodes.injured([this.element])
      : dbValue = 'injured',
        super('injured', element);

  /// For instances where an Element is present but not value

  SubscriberRelationshipCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubscriberRelationshipCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'child',
    'parent',
    'spouse',
    'common',
    'other',
    'self',
    'injured',
  ];

  /// Returns the enum value with an element attached
  SubscriberRelationshipCodes withElement(Element? newElement) {
    return SubscriberRelationshipCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriberRelationshipCodes.$value';
}
