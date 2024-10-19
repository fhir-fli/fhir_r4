// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
@Entity()
class PediatricUse extends FhirCode {
  /// Factory constructor to create [PediatricUse] from JSON.
  factory PediatricUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PediatricUse.elementOnly(element);
    }
    if (values.contains(value)) {
      return PediatricUse._(value, element);
    }
    throw ArgumentError(
      'PediatricUse.fromJson: JSON value is not a valid value',
    );
  }

  /// InUtero
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.InUtero([this.element])
      : dbValue = 'InUtero',
        super('InUtero', element);

  /// PretermNewborn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.PretermNewborn([this.element])
      : dbValue = 'PretermNewborn',
        super('PretermNewborn', element);

  /// TermNewborn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.TermNewborn([this.element])
      : dbValue = 'TermNewborn',
        super('TermNewborn', element);

  /// Infants
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Infants([this.element])
      : dbValue = 'Infants',
        super('Infants', element);

  /// Children
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Children([this.element])
      : dbValue = 'Children',
        super('Children', element);

  /// Adolescents
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Adolescents([this.element])
      : dbValue = 'Adolescents',
        super('Adolescents', element);

  /// Adults
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Adults([this.element])
      : dbValue = 'Adults',
        super('Adults', element);

  /// Elderly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Elderly([this.element])
      : dbValue = 'Elderly',
        super('Elderly', element);

  /// Neonate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Neonate([this.element])
      : dbValue = 'Neonate',
        super('Neonate', element);

  /// PediatricPopulation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.PediatricPopulation([this.element])
      : dbValue = 'PediatricPopulation',
        super('PediatricPopulation', element);

  /// All
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.All([this.element])
      : dbValue = 'All',
        super('All', element);

  /// Prepubertal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.Prepubertal([this.element])
      : dbValue = 'Prepubertal',
        super('Prepubertal', element);

  /// AdultsAndElderly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.AdultsAndElderly([this.element])
      : dbValue = 'AdultsAndElderly',
        super('AdultsAndElderly', element);

  /// PubertalAndPostpubertal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  PediatricUse.PubertalAndPostpubertal([this.element])
      : dbValue = 'PubertalAndPostpubertal',
        super('PubertalAndPostpubertal', element);

  /// For instances where an Element is present but not value

  PediatricUse.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  PediatricUse._(super.input, [super.element])
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
    'InUtero',
    'PretermNewborn',
    'TermNewborn',
    'Infants',
    'Children',
    'Adolescents',
    'Adults',
    'Elderly',
    'Neonate',
    'PediatricPopulation',
    'All',
    'Prepubertal',
    'AdultsAndElderly',
    'PubertalAndPostpubertal',
  ];

  /// Returns the enum value with an element attached
  PediatricUse withElement(Element? newElement) {
    return PediatricUse._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PediatricUse.$value';
}
