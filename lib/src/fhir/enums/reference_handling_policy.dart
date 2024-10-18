// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A set of flags that defines how references are supported.
enum ReferenceHandlingPolicy {
  /// Display: Literal References
  /// Definition: The server supports and populates Literal references (i.e. using Reference.reference) where they are known (this code does not guarantee that all references are literal; see 'enforced').
  literal('literal'),

  /// Display: Logical References
  /// Definition: The server allows logical references (i.e. using Reference.identifier).
  logical('logical'),

  /// Display: Resolves References
  /// Definition: The server will attempt to resolve logical references to literal references - i.e. converting Reference.identifier to Reference.reference (if resolution fails, the server may still accept resources; see logical).
  resolves('resolves'),

  /// Display: Reference Integrity Enforced
  /// Definition: The server enforces that references have integrity - e.g. it ensures that references can always be resolved. This is typically the case for clinical record systems, but often not the case for middleware/proxy systems.
  enforced('enforced'),

  /// Display: Local References Only
  /// Definition: The server does not support references that point to other servers.
  local('local'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ReferenceHandlingPolicy(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ReferenceHandlingPolicy] instances.
  static ReferenceHandlingPolicy fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceHandlingPolicy.elementOnly.withElement(
        element,
      );
    }
    return ReferenceHandlingPolicy.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ReferenceHandlingPolicy withElement(Element? newElement) {
    return ReferenceHandlingPolicy.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
