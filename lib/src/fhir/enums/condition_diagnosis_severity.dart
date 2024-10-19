// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Preferred value set for Condition/Diagnosis severity grading.
@Entity()
class ConditionDiagnosisSeverity extends FhirCode {
  /// Factory constructor to create [ConditionDiagnosisSeverity] from JSON.
  factory ConditionDiagnosisSeverity.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionDiagnosisSeverity.elementOnly(element);
    }
    if (values.contains(value)) {
      return ConditionDiagnosisSeverity._(value, element);
    }
    throw ArgumentError(
      'ConditionDiagnosisSeverity.fromJson: JSON value is not a valid value',
    );
  }

  /// value24484000
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionDiagnosisSeverity.value24484000([this.element])
      : dbValue = '24484000',
        super('24484000', element);

  /// value6736007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionDiagnosisSeverity.value6736007([this.element])
      : dbValue = '6736007',
        super('6736007', element);

  /// value255604002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ConditionDiagnosisSeverity.value255604002([this.element])
      : dbValue = '255604002',
        super('255604002', element);

  /// For instances where an Element is present but not value

  ConditionDiagnosisSeverity.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ConditionDiagnosisSeverity._(super.input, [super.element])
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
    '24484000',
    '6736007',
    '255604002',
  ];

  /// Returns the enum value with an element attached
  ConditionDiagnosisSeverity withElement(Element? newElement) {
    return ConditionDiagnosisSeverity._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ConditionDiagnosisSeverity.$value';
}
