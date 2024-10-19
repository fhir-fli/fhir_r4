// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// An example value set of Codified order entry details concepts. These concepts only make sense in the context of what is being ordered. This example is for a patient ventilation order
@Entity()
class ServiceRequestOrderDetailsCodes extends FhirCode {
  /// Factory constructor to create [ServiceRequestOrderDetailsCodes] from JSON.
  factory ServiceRequestOrderDetailsCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestOrderDetailsCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ServiceRequestOrderDetailsCodes._(value, element);
    }
    throw ArgumentError(
      'ServiceRequestOrderDetailsCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// value47545007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestOrderDetailsCodes.value47545007([this.element])
      : dbValue = '47545007',
        super('47545007', element);

  /// value286812008
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestOrderDetailsCodes.value286812008([this.element])
      : dbValue = '286812008',
        super('286812008', element);

  /// value243144002
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestOrderDetailsCodes.value243144002([this.element])
      : dbValue = '243144002',
        super('243144002', element);

  /// value243150007
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestOrderDetailsCodes.value243150007([this.element])
      : dbValue = '243150007',
        super('243150007', element);

  /// value59427005
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceRequestOrderDetailsCodes.value59427005([this.element])
      : dbValue = '59427005',
        super('59427005', element);

  /// For instances where an Element is present but not value

  ServiceRequestOrderDetailsCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ServiceRequestOrderDetailsCodes._(super.input, [super.element])
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
    '47545007',
    '286812008',
    '243144002',
    '243150007',
    '59427005',
  ];

  /// Returns the enum value with an element attached
  ServiceRequestOrderDetailsCodes withElement(Element? newElement) {
    return ServiceRequestOrderDetailsCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceRequestOrderDetailsCodes.$value';
}
