// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// An example value set of SNOMED CT concepts that can classify a requested service
@Entity()
class ServiceRequestCategoryCodes extends FhirCode {
  /// Factory constructor to create [ServiceRequestCategoryCodes] from JSON.
  factory ServiceRequestCategoryCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestCategoryCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ServiceRequestCategoryCodes._(value, element);
    }
    throw ArgumentError(
      'ServiceRequestCategoryCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value108252007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestCategoryCodes.value108252007([this.element])
      : dbValue = '108252007',
        super('108252007', element);

  /// value363679005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestCategoryCodes.value363679005([this.element])
      : dbValue = '363679005',
        super('363679005', element);

  /// value409063005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestCategoryCodes.value409063005([this.element])
      : dbValue = '409063005',
        super('409063005', element);

  /// value409073007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestCategoryCodes.value409073007([this.element])
      : dbValue = '409073007',
        super('409073007', element);

  /// value387713003
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestCategoryCodes.value387713003([this.element])
      : dbValue = '387713003',
        super('387713003', element);

  /// For instances where an Element is present but not value

  ServiceRequestCategoryCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ServiceRequestCategoryCodes._(super.input, [super.element])
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
    '108252007',
    '363679005',
    '409063005',
    '409073007',
    '387713003',
  ];

  /// Returns the enum value with an element attached
  ServiceRequestCategoryCodes withElement(Element? newElement) {
    return ServiceRequestCategoryCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceRequestCategoryCodes.$value';
}
