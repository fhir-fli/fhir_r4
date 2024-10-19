// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Status of the supply request.
@Entity()
class SupplyRequestStatus extends FhirCode {
  /// Factory constructor to create [SupplyRequestStatus] from JSON.
  factory SupplyRequestStatus.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestStatus.elementOnly(element);
    }
    if (values.contains(value)) {
      return SupplyRequestStatus._(value, element);
    }
    throw ArgumentError(
      'SupplyRequestStatus.fromJson: JSON value is not a valid value',
    );
  }

  /// draft
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.draft([this.element])
      : dbValue = 'draft',
        super('draft', element);

  /// active
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.active([this.element])
      : dbValue = 'active',
        super('active', element);

  /// suspended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.suspended([this.element])
      : dbValue = 'suspended',
        super('suspended', element);

  /// cancelled
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.cancelled([this.element])
      : dbValue = 'cancelled',
        super('cancelled', element);

  /// completed
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.completed([this.element])
      : dbValue = 'completed',
        super('completed', element);

  /// entered_in_error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.entered_in_error([this.element])
      : dbValue = 'entered-in-error',
        super('entered-in-error', element);

  /// unknown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestStatus.unknown([this.element])
      : dbValue = 'unknown',
        super('unknown', element);

  /// For instances where an Element is present but not value

  SupplyRequestStatus.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SupplyRequestStatus._(super.input, [super.element])
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
    'draft',
    'active',
    'suspended',
    'cancelled',
    'completed',
    'entered-in-error',
    'unknown',
  ];

  /// Returns the enum value with an element attached
  SupplyRequestStatus withElement(Element? newElement) {
    return SupplyRequestStatus._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyRequestStatus.$value';
}
