// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes the four Consent scope codes.
@Entity()
class ConsentScopeCodes extends FhirCode {
  /// Factory constructor to create [ConsentScopeCodes] from JSON.
  factory ConsentScopeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentScopeCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConsentScopeCodes._(value, element);
    }
    throw ArgumentError(
      'ConsentScopeCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// adr
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentScopeCodes.adr([this.element])
      : dbValue = 'adr',
        super('adr', element);

  /// research
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentScopeCodes.research([this.element])
      : dbValue = 'research',
        super('research', element);

  /// patient_privacy
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentScopeCodes.patient_privacy([this.element])
      : dbValue = 'patient-privacy',
        super('patient-privacy', element);

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConsentScopeCodes.treatment([this.element])
      : dbValue = 'treatment',
        super('treatment', element);

  /// For instances where an Element is present but not value

  ConsentScopeCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConsentScopeCodes._(super.input, [super.element])
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
    'adr',
    'research',
    'patient-privacy',
    'treatment',
  ];

  /// Returns the enum value with an element attached
  ConsentScopeCodes withElement(Element? newElement) {
    return ConsentScopeCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConsentScopeCodes.$value';
}
