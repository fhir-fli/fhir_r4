// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to where the patient left the hospital.
@Entity()
class DischargeDisposition extends FhirCode {
  /// Factory constructor to create [DischargeDisposition] from JSON.
  factory DischargeDisposition.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DischargeDisposition.elementOnly(element);
    }
    if (values.contains(value)) {
      return DischargeDisposition._(value, element);
    }
    throw ArgumentError(
      'DischargeDisposition.fromJson: JSON value is not a valid value',
    );
  }

  /// home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.home([this.element])
      : dbValue = 'home',
        super('home', element);

  /// alt_home
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.alt_home([this.element])
      : dbValue = 'alt-home',
        super('alt-home', element);

  /// other_hcf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.other_hcf([this.element])
      : dbValue = 'other-hcf',
        super('other-hcf', element);

  /// hosp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.hosp([this.element])
      : dbValue = 'hosp',
        super('hosp', element);

  /// long
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.long([this.element])
      : dbValue = 'long',
        super('long', element);

  /// aadvice
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.aadvice([this.element])
      : dbValue = 'aadvice',
        super('aadvice', element);

  /// exp
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.exp([this.element])
      : dbValue = 'exp',
        super('exp', element);

  /// psy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.psy([this.element])
      : dbValue = 'psy',
        super('psy', element);

  /// rehab
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.rehab([this.element])
      : dbValue = 'rehab',
        super('rehab', element);

  /// snf
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.snf([this.element])
      : dbValue = 'snf',
        super('snf', element);

  /// oth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  DischargeDisposition.oth([this.element])
      : dbValue = 'oth',
        super('oth', element);

  /// For instances where an Element is present but not value

  DischargeDisposition.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  DischargeDisposition._(super.input, [super.element])
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
    'home',
    'alt-home',
    'other-hcf',
    'hosp',
    'long',
    'aadvice',
    'exp',
    'psy',
    'rehab',
    'snf',
    'oth',
  ];

  /// Returns the enum value with an element attached
  DischargeDisposition withElement(Element? newElement) {
    return DischargeDisposition._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'DischargeDisposition.$value';
}
