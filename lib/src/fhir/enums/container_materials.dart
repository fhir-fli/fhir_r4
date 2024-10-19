// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes SNOMED CT codes for materials that specimen containers are made of
@Entity()
class ContainerMaterials extends FhirCode {
  /// Factory constructor to create [ContainerMaterials] from JSON.
  factory ContainerMaterials.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerMaterials.elementOnly(element);
    }
    if (values.contains(value)) {
      return ContainerMaterials._(value, element);
    }
    throw ArgumentError(
      'ContainerMaterials.fromJson: JSON value is not a valid value',
    );
  }

  /// value32039001
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerMaterials.value32039001([this.element])
      : dbValue = '32039001',
        super('32039001', element);

  /// value61088005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerMaterials.value61088005([this.element])
      : dbValue = '61088005',
        super('61088005', element);

  /// value425620007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ContainerMaterials.value425620007([this.element])
      : dbValue = '425620007',
        super('425620007', element);

  /// For instances where an Element is present but not value

  ContainerMaterials.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ContainerMaterials._(super.input, [super.element])
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
    '32039001',
    '61088005',
    '425620007',
  ];

  /// Returns the enum value with an element attached
  ContainerMaterials withElement(Element? newElement) {
    return ContainerMaterials._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContainerMaterials.$value';
}
