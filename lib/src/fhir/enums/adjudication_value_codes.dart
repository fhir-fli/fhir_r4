// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes a smattering of Adjudication Value codes which includes codes to indicate the amounts eligible under the plan, the amount of benefit, copays etc.
@Entity()
class AdjudicationValueCodes extends FhirCode {
  /// Factory constructor to create [AdjudicationValueCodes] from JSON.
  factory AdjudicationValueCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdjudicationValueCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return AdjudicationValueCodes._(value, element);
    }
    throw ArgumentError(
      'AdjudicationValueCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// submitted
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.submitted([this.element])
      : dbValue = 'submitted',
        super('submitted', element);

  /// copay
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.copay([this.element])
      : dbValue = 'copay',
        super('copay', element);

  /// eligible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.eligible([this.element])
      : dbValue = 'eligible',
        super('eligible', element);

  /// deductible
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.deductible([this.element])
      : dbValue = 'deductible',
        super('deductible', element);

  /// unallocdeduct
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.unallocdeduct([this.element])
      : dbValue = 'unallocdeduct',
        super('unallocdeduct', element);

  /// eligpercent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.eligpercent([this.element])
      : dbValue = 'eligpercent',
        super('eligpercent', element);

  /// tax
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.tax([this.element])
      : dbValue = 'tax',
        super('tax', element);

  /// benefit
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  AdjudicationValueCodes.benefit([this.element])
      : dbValue = 'benefit',
        super('benefit', element);

  /// For instances where an Element is present but not value

  AdjudicationValueCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  AdjudicationValueCodes._(super.input, [super.element])
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
    'submitted',
    'copay',
    'eligible',
    'deductible',
    'unallocdeduct',
    'eligpercent',
    'tax',
    'benefit',
  ];

  /// Returns the enum value with an element attached
  AdjudicationValueCodes withElement(Element? newElement) {
    return AdjudicationValueCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'AdjudicationValueCodes.$value';
}
