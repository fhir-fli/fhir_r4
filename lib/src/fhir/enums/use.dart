// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The purpose of the Claim: predetermination, preauthorization, claim.
@Entity()
class Use extends FhirCode {
  /// Factory constructor to create [Use] from JSON.
  factory Use.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return Use.elementOnly(element);
    }
    if (values.contains(value)) {
      return Use._(value, element);
    }
    throw ArgumentError(
      'Use.fromJson: JSON value is not a valid value',
    );
  }

  /// claim
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Use.claim([this.element])
      : dbValue = 'claim',
        super('claim', element);

  /// preauthorization
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Use.preauthorization([this.element])
      : dbValue = 'preauthorization',
        super('preauthorization', element);

  /// predetermination
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  Use.predetermination([this.element])
      : dbValue = 'predetermination',
        super('predetermination', element);

  /// For instances where an Element is present but not value

  Use.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  Use._(super.input, [super.element])
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
    'claim',
    'preauthorization',
    'predetermination',
  ];

  /// Returns the enum value with an element attached
  Use withElement(Element? newElement) {
    return Use._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'Use.$value';
}
