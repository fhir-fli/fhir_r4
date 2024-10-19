// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Overall defining type of this Medicinal Product.
@Entity()
class MedicinalProductType extends FhirCode {
  /// Factory constructor to create [MedicinalProductType] from JSON.
  factory MedicinalProductType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicinalProductType.elementOnly(element);
    }
    if (values.contains(value)) {
      return MedicinalProductType._(value, element);
    }
    throw ArgumentError(
      'MedicinalProductType.fromJson: JSON value is not a valid value',
    );
  }

  /// MedicinalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductType.MedicinalProduct([this.element])
      : dbValue = 'MedicinalProduct',
        super('MedicinalProduct', element);

  /// InvestigationalProduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  MedicinalProductType.InvestigationalProduct([this.element])
      : dbValue = 'InvestigationalProduct',
        super('InvestigationalProduct', element);

  /// For instances where an Element is present but not value

  MedicinalProductType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  MedicinalProductType._(super.input, [super.element])
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
    'MedicinalProduct',
    'InvestigationalProduct',
  ];

  /// Returns the enum value with an element attached
  MedicinalProductType withElement(Element? newElement) {
    return MedicinalProductType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'MedicinalProductType.$value';
}
