// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why an administered dose has been assigned a particular status. Often, this reason describes why a dose is considered invalid. This value set is provided as a suggestive example.
@Entity()
class ImmunizationEvaluationDoseStatusReasonCodes extends FhirCode {
  /// Factory constructor to create [ImmunizationEvaluationDoseStatusReasonCodes] from JSON.
  factory ImmunizationEvaluationDoseStatusReasonCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusReasonCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ImmunizationEvaluationDoseStatusReasonCodes._(value, element);
    }
    throw ArgumentError(
      'ImmunizationEvaluationDoseStatusReasonCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// advstorage
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusReasonCodes.advstorage([this.element])
      : dbValue = 'advstorage',
        super('advstorage', element);

  /// coldchbrk
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusReasonCodes.coldchbrk([this.element])
      : dbValue = 'coldchbrk',
        super('coldchbrk', element);

  /// explot
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusReasonCodes.explot([this.element])
      : dbValue = 'explot',
        super('explot', element);

  /// outsidesched
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusReasonCodes.outsidesched([this.element])
      : dbValue = 'outsidesched',
        super('outsidesched', element);

  /// prodrecall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ImmunizationEvaluationDoseStatusReasonCodes.prodrecall([this.element])
      : dbValue = 'prodrecall',
        super('prodrecall', element);

  /// For instances where an Element is present but not value

  ImmunizationEvaluationDoseStatusReasonCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusReasonCodes._(super.input, [super.element])
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
    'advstorage',
    'coldchbrk',
    'explot',
    'outsidesched',
    'prodrecall',
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusReasonCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ImmunizationEvaluationDoseStatusReasonCodes.$value';
}
