// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Example use codes for the List resource - typical kinds of use.
@Entity()
class ExampleUseCodesForList extends FhirCode {
  /// Factory constructor to create [ExampleUseCodesForList] from JSON.
  factory ExampleUseCodesForList.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleUseCodesForList.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleUseCodesForList._(value, element);
    }
    throw ArgumentError(
      'ExampleUseCodesForList.fromJson: JSON value is not a valid value',
    );
  }

  /// alerts
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.alerts([this.element])
      : dbValue = 'alerts',
        super('alerts', element);

  /// adverserxns
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.adverserxns([this.element])
      : dbValue = 'adverserxns',
        super('adverserxns', element);

  /// allergies
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.allergies([this.element])
      : dbValue = 'allergies',
        super('allergies', element);

  /// medications
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.medications([this.element])
      : dbValue = 'medications',
        super('medications', element);

  /// problems
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.problems([this.element])
      : dbValue = 'problems',
        super('problems', element);

  /// worklist
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.worklist([this.element])
      : dbValue = 'worklist',
        super('worklist', element);

  /// waiting
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.waiting([this.element])
      : dbValue = 'waiting',
        super('waiting', element);

  /// protocols
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.protocols([this.element])
      : dbValue = 'protocols',
        super('protocols', element);

  /// plans
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleUseCodesForList.plans([this.element])
      : dbValue = 'plans',
        super('plans', element);

  /// For instances where an Element is present but not value

  ExampleUseCodesForList.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleUseCodesForList._(super.input, [super.element])
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
    'alerts',
    'adverserxns',
    'allergies',
    'medications',
    'problems',
    'worklist',
    'waiting',
    'protocols',
    'plans',
  ];

  /// Returns the enum value with an element attached
  ExampleUseCodesForList withElement(Element? newElement) {
    return ExampleUseCodesForList._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleUseCodesForList.$value';
}
