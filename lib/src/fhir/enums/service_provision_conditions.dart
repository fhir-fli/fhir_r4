// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
@collection
class ServiceProvisionConditions {
  /// Constructor for internal use (like enum)
  ServiceProvisionConditions({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ServiceProvisionConditions values
  /// free
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions free = ServiceProvisionConditions(
    fhirCode: 'free',
  );

  /// disc
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions disc = ServiceProvisionConditions(
    fhirCode: 'disc',
  );

  /// cost
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ServiceProvisionConditions cost = ServiceProvisionConditions(
    fhirCode: 'cost',
  );

  /// For instances where an Element is present but not value

  static final ServiceProvisionConditions elementOnly =
      ServiceProvisionConditions();

  /// List of all enum-like values
  static final List<ServiceProvisionConditions> values = [
    free,
    disc,
    cost,
  ];

  /// Returns the enum value with an element attached
  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ServiceProvisionConditions] from JSON.
  static ServiceProvisionConditions fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly.withElement(element);
    }
    return ServiceProvisionConditions.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ServiceProvisionConditions.$fhirCode';
}
