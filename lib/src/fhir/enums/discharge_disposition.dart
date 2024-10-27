// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
class DischargeDisposition {
  // Private constructor for internal use (like enum)
  DischargeDisposition._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// DischargeDisposition values
  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition home = DischargeDisposition._(
    'home',
  );

  /// alt_home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition alt_home = DischargeDisposition._(
    'alt-home',
  );

  /// other_hcf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition other_hcf = DischargeDisposition._(
    'other-hcf',
  );

  /// hosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition hosp = DischargeDisposition._(
    'hosp',
  );

  /// long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition long = DischargeDisposition._(
    'long',
  );

  /// aadvice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition aadvice = DischargeDisposition._(
    'aadvice',
  );

  /// exp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition exp = DischargeDisposition._(
    'exp',
  );

  /// psy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition psy = DischargeDisposition._(
    'psy',
  );

  /// rehab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition rehab = DischargeDisposition._(
    'rehab',
  );

  /// snf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition snf = DischargeDisposition._(
    'snf',
  );

  /// oth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final DischargeDisposition oth = DischargeDisposition._(
    'oth',
  );

  /// For instances where an Element is present but not value

  static final DischargeDisposition elementOnly = DischargeDisposition._('');

  /// List of all enum-like values
  static final List<DischargeDisposition> values = [
    home,
    alt_home,
    other_hcf,
    hosp,
    long,
    aadvice,
    exp,
    psy,
    rehab,
    snf,
    oth,
  ];

  /// Returns the enum value with an element attached
  DischargeDisposition withElement(Element? newElement) {
    return DischargeDisposition._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [DischargeDisposition] from JSON.
  static DischargeDisposition fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DischargeDisposition.elementOnly.withElement(element);
    }
    return DischargeDisposition.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation
  @override
  String toString() => fhirCode;
}
