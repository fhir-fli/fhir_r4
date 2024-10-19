// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// FHIR search modifiers allowed for use in Subscriptions and SubscriptionTopics.
@Entity()
class SubscriptionSearchModifier extends FhirCode {
  /// Factory constructor to create [SubscriptionSearchModifier] from JSON.
  factory SubscriptionSearchModifier.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionSearchModifier.elementOnly(element);
    }
    if (values.contains(value)) {
      return SubscriptionSearchModifier._(value, element);
    }
    throw ArgumentError(
      'SubscriptionSearchModifier.fromJson: JSON value is not a valid value',
    );
  }

  /// eq
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.eq([this.element])
      : dbValue = '=',
        super('=', element);

  /// ne
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.ne([this.element])
      : dbValue = 'ne',
        super('ne', element);

  /// gt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.gt([this.element])
      : dbValue = 'gt',
        super('gt', element);

  /// lt
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.lt([this.element])
      : dbValue = 'lt',
        super('lt', element);

  /// ge
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.ge([this.element])
      : dbValue = 'ge',
        super('ge', element);

  /// le
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.le([this.element])
      : dbValue = 'le',
        super('le', element);

  /// sa
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.sa([this.element])
      : dbValue = 'sa',
        super('sa', element);

  /// eb
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.eb([this.element])
      : dbValue = 'eb',
        super('eb', element);

  /// ap
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.ap([this.element])
      : dbValue = 'ap',
        super('ap', element);

  /// above
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.above([this.element])
      : dbValue = 'above',
        super('above', element);

  /// below
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.below([this.element])
      : dbValue = 'below',
        super('below', element);

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.in_([this.element])
      : dbValue = 'in',
        super('in', element);

  /// not_in
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.not_in([this.element])
      : dbValue = 'not-in',
        super('not-in', element);

  /// of_type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SubscriptionSearchModifier.of_type([this.element])
      : dbValue = 'of-type',
        super('of-type', element);

  /// For instances where an Element is present but not value

  SubscriptionSearchModifier.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SubscriptionSearchModifier._(super.input, [super.element])
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
    '=',
    'ne',
    'gt',
    'lt',
    'ge',
    'le',
    'sa',
    'eb',
    'ap',
    'above',
    'below',
    'in',
    'not-in',
    'of-type',
  ];

  /// Returns the enum value with an element attached
  SubscriptionSearchModifier withElement(Element? newElement) {
    return SubscriptionSearchModifier._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SubscriptionSearchModifier.$value';
}
