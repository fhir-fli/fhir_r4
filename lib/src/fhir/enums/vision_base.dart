// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A coded concept listing the base codes.
enum VisionBase {
  /// Display: Up
  /// Definition: top.
  up('up'),

  /// Display: Down
  /// Definition: bottom.
  down('down'),

  /// Display: In
  /// Definition: inner edge.
  in_('in'),

  /// Display: Out
  /// Definition: outer edge.
  out('out'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const VisionBase(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [VisionBase] instances.
  static VisionBase fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    }
    return VisionBase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  VisionBase withElement(Element? newElement) {
    return VisionBase.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
