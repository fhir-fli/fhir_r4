// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Extra measures defined for a Medicinal Product, such as heightened reporting requirements.
class PediatricUse {
  // Private constructor for internal use (like enum)
  PediatricUse._(this.fhirCode, {this.element});

  /// Factory constructor to create [PediatricUse] from JSON.
  factory PediatricUse.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PediatricUse.elementOnly.withElement(element);
    }
    return PediatricUse._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// PediatricUse values
  /// InUtero
  static final PediatricUse InUtero = PediatricUse._(
    'InUtero',
  );

  /// PretermNewborn
  static final PediatricUse PretermNewborn = PediatricUse._(
    'PretermNewborn',
  );

  /// TermNewborn
  static final PediatricUse TermNewborn = PediatricUse._(
    'TermNewborn',
  );

  /// Infants
  static final PediatricUse Infants = PediatricUse._(
    'Infants',
  );

  /// Children
  static final PediatricUse Children = PediatricUse._(
    'Children',
  );

  /// Adolescents
  static final PediatricUse Adolescents = PediatricUse._(
    'Adolescents',
  );

  /// Adults
  static final PediatricUse Adults = PediatricUse._(
    'Adults',
  );

  /// Elderly
  static final PediatricUse Elderly = PediatricUse._(
    'Elderly',
  );

  /// Neonate
  static final PediatricUse Neonate = PediatricUse._(
    'Neonate',
  );

  /// PediatricPopulation
  static final PediatricUse PediatricPopulation = PediatricUse._(
    'PediatricPopulation',
  );

  /// All
  static final PediatricUse All = PediatricUse._(
    'All',
  );

  /// Prepubertal
  static final PediatricUse Prepubertal = PediatricUse._(
    'Prepubertal',
  );

  /// AdultsAndElderly
  static final PediatricUse AdultsAndElderly = PediatricUse._(
    'AdultsAndElderly',
  );

  /// PubertalAndPostpubertal
  static final PediatricUse PubertalAndPostpubertal = PediatricUse._(
    'PubertalAndPostpubertal',
  );

  /// For instances where an Element is present but not value

  static final PediatricUse elementOnly = PediatricUse._('');

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
    return PediatricUse._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
