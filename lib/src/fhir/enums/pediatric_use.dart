// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
@collection
class PediatricUse {
  /// Constructor for internal use (like enum)
  PediatricUse({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PediatricUse values
  /// InUtero
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse InUtero = PediatricUse(
    fhirCode: 'InUtero',
  );

  /// PretermNewborn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse PretermNewborn = PediatricUse(
    fhirCode: 'PretermNewborn',
  );

  /// TermNewborn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse TermNewborn = PediatricUse(
    fhirCode: 'TermNewborn',
  );

  /// Infants
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Infants = PediatricUse(
    fhirCode: 'Infants',
  );

  /// Children
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Children = PediatricUse(
    fhirCode: 'Children',
  );

  /// Adolescents
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Adolescents = PediatricUse(
    fhirCode: 'Adolescents',
  );

  /// Adults
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Adults = PediatricUse(
    fhirCode: 'Adults',
  );

  /// Elderly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Elderly = PediatricUse(
    fhirCode: 'Elderly',
  );

  /// Neonate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Neonate = PediatricUse(
    fhirCode: 'Neonate',
  );

  /// PediatricPopulation
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse PediatricPopulation = PediatricUse(
    fhirCode: 'PediatricPopulation',
  );

  /// All
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse All = PediatricUse(
    fhirCode: 'All',
  );

  /// Prepubertal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse Prepubertal = PediatricUse(
    fhirCode: 'Prepubertal',
  );

  /// AdultsAndElderly
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse AdultsAndElderly = PediatricUse(
    fhirCode: 'AdultsAndElderly',
  );

  /// PubertalAndPostpubertal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final PediatricUse PubertalAndPostpubertal = PediatricUse(
    fhirCode: 'PubertalAndPostpubertal',
  );

  /// For instances where an Element is present but not value

  static final PediatricUse elementOnly = PediatricUse();

  /// List of all enum-like values
  static final List<PediatricUse> values = [
    InUtero,
    PretermNewborn,
    TermNewborn,
    Infants,
    Children,
    Adolescents,
    Adults,
    Elderly,
    Neonate,
    PediatricPopulation,
    All,
    Prepubertal,
    AdultsAndElderly,
    PubertalAndPostpubertal,
  ];

  /// Returns the enum value with an element attached
  PediatricUse withElement(Element? newElement) {
    return PediatricUse(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [PediatricUse] from JSON.
  static PediatricUse fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PediatricUse.elementOnly.withElement(element);
    }
    return PediatricUse.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'PediatricUse.$fhirCode';
}
