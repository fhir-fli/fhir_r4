// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This example value set defines a set of codes that can be used to indicate the method by which a specimen was collected.
@Entity()
class FHIRSpecimenCollectionMethod extends FhirCode {
  /// Factory constructor to create [FHIRSpecimenCollectionMethod] from JSON.
  factory FHIRSpecimenCollectionMethod.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSpecimenCollectionMethod.elementOnly(element);
    }
    if (values.contains(value)) {
      return FHIRSpecimenCollectionMethod._(value, element);
    }
    throw ArgumentError(
      'FHIRSpecimenCollectionMethod.fromJson: JSON value is not a valid value',
    );
  }

  /// value129316008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value129316008([this.element])
      : dbValue = '129316008',
        super('129316008', element);

  /// value129314006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value129314006([this.element])
      : dbValue = '129314006',
        super('129314006', element);

  /// value129300006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value129300006([this.element])
      : dbValue = '129300006',
        super('129300006', element);

  /// value129304002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value129304002([this.element])
      : dbValue = '129304002',
        super('129304002', element);

  /// value129323009
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value129323009([this.element])
      : dbValue = '129323009',
        super('129323009', element);

  /// value73416001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value73416001([this.element])
      : dbValue = '73416001',
        super('73416001', element);

  /// value225113003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value225113003([this.element])
      : dbValue = '225113003',
        super('225113003', element);

  /// value70777001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value70777001([this.element])
      : dbValue = '70777001',
        super('70777001', element);

  /// value386089008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value386089008([this.element])
      : dbValue = '386089008',
        super('386089008', element);

  /// value278450005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  FHIRSpecimenCollectionMethod.value278450005([this.element])
      : dbValue = '278450005',
        super('278450005', element);

  /// For instances where an Element is present but not value

  FHIRSpecimenCollectionMethod.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  FHIRSpecimenCollectionMethod._(super.input, [super.element])
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
    '129316008',
    '129314006',
    '129300006',
    '129304002',
    '129323009',
    '73416001',
    '225113003',
    '70777001',
    '386089008',
    '278450005',
  ];

  /// Returns the enum value with an element attached
  FHIRSpecimenCollectionMethod withElement(Element? newElement) {
    return FHIRSpecimenCollectionMethod._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'FHIRSpecimenCollectionMethod.$value';
}
