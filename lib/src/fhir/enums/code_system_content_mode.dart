// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The extent of the content of the code system (the concepts and codes it defines) are represented in a code system resource.
enum CodeSystemContentMode {
  /// Display: Not Present
  /// Definition: None of the concepts defined by the code system are included in the code system resource.
  not_present('not-present'),

  /// Display: Example
  /// Definition: A few representative concepts are included in the code system resource. There is no useful intent in the subset choice and there's no process to make it workable: it's not intended to be workable.
  example('example'),

  /// Display: Fragment
  /// Definition: A subset of the code system concepts are included in the code system resource. This is a curated subset released for a specific purpose under the governance of the code system steward, and that the intent, bounds and consequences of the fragmentation are clearly defined in the fragment or the code system documentation. Fragments are also known as partitions.
  fragment('fragment'),

  /// Display: Complete
  /// Definition: All the concepts defined by the code system are included in the code system resource.
  complete('complete'),

  /// Display: Supplement
  /// Definition: The resource doesn't define any new concepts; it just provides additional designations and properties to another code system.
  supplement('supplement'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CodeSystemContentMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CodeSystemContentMode] instances.
  static CodeSystemContentMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentMode.elementOnly.withElement(
        element,
      );
    }
    return CodeSystemContentMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CodeSystemContentMode withElement(Element? newElement) {
    return CodeSystemContentMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
