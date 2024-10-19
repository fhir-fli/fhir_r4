// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example value set for investigation type.
@Entity()
class InvestigationType extends FhirCode {
  /// Factory constructor to create [InvestigationType] from JSON.
  factory InvestigationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return InvestigationType.elementOnly(element);
    }
    if (values.contains(value)) {
      return InvestigationType._(value, element);
    }
    throw ArgumentError(
      'InvestigationType.fromJson: JSON value is not a valid value',
    );
  }

  /// value271336007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvestigationType.value271336007([this.element])
      : dbValue = '271336007',
        super('271336007', element);

  /// value160237006
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  InvestigationType.value160237006([this.element])
      : dbValue = '160237006',
        super('160237006', element);

  /// For instances where an Element is present but not value

  InvestigationType.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  InvestigationType._(super.input, [super.element])
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
    '271336007',
    '160237006',
  ];

  /// Returns the enum value with an element attached
  InvestigationType withElement(Element? newElement) {
    return InvestigationType._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'InvestigationType.$value';
}
