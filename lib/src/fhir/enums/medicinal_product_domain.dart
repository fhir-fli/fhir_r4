// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Applicable domain for this product (e.g. human, veterinary)
@Entity()
class MedicinalProductDomain extends FhirCode {
  /// Factory constructor to create [MedicinalProductDomain] from JSON.
  factory MedicinalProductDomain.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductDomain.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicinalProductDomain._(value, element);
    }
    throw ArgumentError(
      'MedicinalProductDomain.fromJson: JSON value is not a valid value',
    );
  }

  /// Human
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductDomain.Human([this.element])
      : dbValue = 'Human',
        super('Human', element);

  /// Veterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductDomain.Veterinary([this.element])
      : dbValue = 'Veterinary',
        super('Veterinary', element);

  /// HumanAndVeterinary
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductDomain.HumanAndVeterinary([this.element])
      : dbValue = 'HumanAndVeterinary',
        super('HumanAndVeterinary', element);

  /// For instances where an Element is present but not value

  MedicinalProductDomain.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicinalProductDomain._(super.input, [super.element])
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
    'Human',
    'Veterinary',
    'HumanAndVeterinary',
  ];

  /// Returns the enum value with an element attached
  MedicinalProductDomain withElement(Element? newElement) {
    return MedicinalProductDomain._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicinalProductDomain.$value';
}
