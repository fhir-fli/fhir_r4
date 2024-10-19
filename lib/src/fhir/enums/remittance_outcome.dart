// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The outcome of the processing.
@Entity()
class RemittanceOutcome extends FhirCode {
  /// Factory constructor to create [RemittanceOutcome] from JSON.
  factory RemittanceOutcome.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RemittanceOutcome.elementOnly(element);
    }
    if (values.contains(value)) {
      return RemittanceOutcome._(value, element);
    }
    throw ArgumentError(
      'RemittanceOutcome.fromJson: JSON value is not a valid value',
    );
  }

  /// queued
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RemittanceOutcome.queued([this.element])
      : dbValue = 'queued',
        super('queued', element);

  /// complete
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RemittanceOutcome.complete([this.element])
      : dbValue = 'complete',
        super('complete', element);

  /// error
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RemittanceOutcome.error([this.element])
      : dbValue = 'error',
        super('error', element);

  /// partial
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RemittanceOutcome.partial([this.element])
      : dbValue = 'partial',
        super('partial', element);

  /// For instances where an Element is present but not value

  RemittanceOutcome.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RemittanceOutcome._(super.input, [super.element])
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
    'queued',
    'complete',
    'error',
    'partial',
  ];

  /// Returns the enum value with an element attached
  RemittanceOutcome withElement(Element? newElement) {
    return RemittanceOutcome._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RemittanceOutcome.$value';
}
