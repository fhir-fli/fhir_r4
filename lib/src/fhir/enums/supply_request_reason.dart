// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The reason why the supply item was requested.
@Entity()
class SupplyRequestReason extends FhirCode {
  /// Factory constructor to create [SupplyRequestReason] from JSON.
  factory SupplyRequestReason.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SupplyRequestReason.elementOnly(element);
    }
    if (values.contains(value)) {
      return SupplyRequestReason._(value, element);
    }
    throw ArgumentError(
      'SupplyRequestReason.fromJson: JSON value is not a valid value',
    );
  }

  /// patient_care
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestReason.patient_care([this.element])
      : dbValue = 'patient-care',
        super('patient-care', element);

  /// ward_stock
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SupplyRequestReason.ward_stock([this.element])
      : dbValue = 'ward-stock',
        super('ward-stock', element);

  /// For instances where an Element is present but not value

  SupplyRequestReason.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SupplyRequestReason._(super.input, [super.element])
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
    'patient-care',
    'ward-stock',
  ];

  /// Returns the enum value with an element attached
  SupplyRequestReason withElement(Element? newElement) {
    return SupplyRequestReason._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SupplyRequestReason.$value';
}
