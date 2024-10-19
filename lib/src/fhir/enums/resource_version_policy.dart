// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// How the system supports versioning for a resource.
@collection
class ResourceVersionPolicy {
  /// Constructor for internal use (like enum)
  ResourceVersionPolicy({this.fhirCode, this.element})
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

  /// ResourceVersionPolicy values
  /// no_version
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy no_version = ResourceVersionPolicy(
    fhirCode: 'no-version',
  );

  /// versioned
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy versioned = ResourceVersionPolicy(
    fhirCode: 'versioned',
  );

  /// versioned_update
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ResourceVersionPolicy versioned_update = ResourceVersionPolicy(
    fhirCode: 'versioned-update',
  );

  /// For instances where an Element is present but not value

  static final ResourceVersionPolicy elementOnly = ResourceVersionPolicy();

  /// List of all enum-like values
  static final List<ResourceVersionPolicy> values = [
    no_version,
    versioned,
    versioned_update,
  ];

  /// Returns the enum value with an element attached
  ResourceVersionPolicy withElement(Element? newElement) {
    return ResourceVersionPolicy(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ResourceVersionPolicy] from JSON.
  static ResourceVersionPolicy fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResourceVersionPolicy.elementOnly.withElement(element);
    }
    return ResourceVersionPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ResourceVersionPolicy.$fhirCode';
}
