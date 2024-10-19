// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set defines a set of codes that can be used to indicate special courtesies provided to the patient.
@Entity()
class SpecialCourtesy extends FhirCode {
  /// Factory constructor to create [SpecialCourtesy] from JSON.
  factory SpecialCourtesy.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SpecialCourtesy.elementOnly(element);
    }
    if (values.contains(value)) {
      return SpecialCourtesy._(value, element);
    }
    throw ArgumentError(
      'SpecialCourtesy.fromJson: JSON value is not a valid value',
    );
  }

  /// EXT
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.EXT([this.element])
      : dbValue = 'EXT',
        super('EXT', element);

  /// NRM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.NRM([this.element])
      : dbValue = 'NRM',
        super('NRM', element);

  /// PRF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.PRF([this.element])
      : dbValue = 'PRF',
        super('PRF', element);

  /// STF
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.STF([this.element])
      : dbValue = 'STF',
        super('STF', element);

  /// VIP
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.VIP([this.element])
      : dbValue = 'VIP',
        super('VIP', element);

  /// UNK
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  SpecialCourtesy.UNK([this.element])
      : dbValue = 'UNK',
        super('UNK', element);

  /// For instances where an Element is present but not value

  SpecialCourtesy.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  SpecialCourtesy._(super.input, [super.element])
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
    'EXT',
    'NRM',
    'PRF',
    'STF',
    'VIP',
    'UNK',
  ];

  /// Returns the enum value with an element attached
  SpecialCourtesy withElement(Element? newElement) {
    return SpecialCourtesy._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'SpecialCourtesy.$value';
}
