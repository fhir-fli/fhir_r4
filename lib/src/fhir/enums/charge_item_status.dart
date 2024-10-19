// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Codes identifying the lifecycle stage of a ChargeItem.
@Entity()
class ChargeItemStatus extends FhirCode {
  /// Factory constructor to create [ChargeItemStatus] from JSON.
  factory ChargeItemStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ChargeItemStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return ChargeItemStatus._(value, element);
    }
    throw ArgumentError(
      'ChargeItemStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// planned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.planned([this.element])
      : dbValue = 'planned',
        super('planned', element);

  /// billable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.billable([this.element])
      : dbValue = 'billable',
        super('billable', element);

  /// not_billable
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.not_billable([this.element])
      : dbValue = 'not-billable',
        super('not-billable', element);

  /// aborted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.aborted([this.element])
      : dbValue = 'aborted',
        super('aborted', element);

  /// billed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.billed([this.element])
      : dbValue = 'billed',
        super('billed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ChargeItemStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  ChargeItemStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ChargeItemStatus._(super.input, [super.element])
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
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'planned',
    'billable',
    'not-billable',
    'aborted',
    'billed',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  ChargeItemStatus withElement(Element? newElement) {
    return ChargeItemStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ChargeItemStatus.$value';
}
