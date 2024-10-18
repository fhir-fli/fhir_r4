// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Used to distinguish different roles a resource can play within a set of linked resources.
enum LinkageType {
  /// Display: Source of Truth
  /// Definition: The resource represents the "source of truth" (from the perspective of this Linkage resource) for the underlying event/condition/etc.
  source('source'),

  /// Display: Alternate Record
  /// Definition: The resource represents an alternative view of the underlying event/condition/etc. The resource may still be actively maintained, even though it is not considered to be the source of truth.
  alternate('alternate'),

  /// Display: Historical/Obsolete Record
  /// Definition: The resource represents an obsolete record of the underlying event/condition/etc. It is not expected to be actively maintained.
  historical('historical'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const LinkageType(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [LinkageType] instances.
  static LinkageType fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(
        element,
      );
    }
    return LinkageType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  LinkageType withElement(Element? newElement) {
    return LinkageType.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
