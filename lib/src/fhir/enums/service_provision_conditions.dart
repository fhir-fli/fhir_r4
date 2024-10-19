// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
@Entity()
class ServiceProvisionConditions extends FhirCode {
  /// Factory constructor to create [ServiceProvisionConditions] from JSON.
  factory ServiceProvisionConditions.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly(element);
    }
    if (values.contains(value)) {
      return ServiceProvisionConditions._(value, element);
    }
    throw ArgumentError(
      'ServiceProvisionConditions.fromJson: JSON value is not a valid value',
    );
  }

  /// free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceProvisionConditions.free([this.element])
      : dbValue = 'free',
        super('free', element);

  /// disc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceProvisionConditions.disc([this.element])
      : dbValue = 'disc',
        super('disc', element);

  /// cost
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ServiceProvisionConditions.cost([this.element])
      : dbValue = 'cost',
        super('cost', element);

  /// For instances where an Element is present but not value

  ServiceProvisionConditions.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ServiceProvisionConditions._(super.input, [super.element])
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
    'free',
    'disc',
    'cost',
  ];

  /// Returns the enum value with an element attached
  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceProvisionConditions.$value';
}
