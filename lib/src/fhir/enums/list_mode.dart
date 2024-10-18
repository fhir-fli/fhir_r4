// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The processing mode that applies to this list.
enum ListMode {
  /// Display: Working List
  /// Definition: This list is the master list, maintained in an ongoing fashion with regular updates as the real world list it is tracking changes.
  working('working'),

  /// Display: Snapshot List
  /// Definition: This list was prepared as a snapshot. It should not be assumed to be current.
  snapshot('snapshot'),

  /// Display: Change List
  /// Definition: A point-in-time list that shows what changes have been made or recommended. E.g. a discharge medication list showing what was added and removed during an encounter.
  changes('changes'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ListMode(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ListMode] instances.
  static ListMode fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListMode.elementOnly.withElement(
        element,
      );
    }
    return ListMode.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ListMode withElement(Element? newElement) {
    return ListMode.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
