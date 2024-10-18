// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// TODO (and should this be required?).
enum AdverseEventOutcome {
  /// Display: Resolved
  /// Definition:
  resolved('resolved'),

  /// Display: Recovering
  /// Definition:
  recovering('recovering'),

  /// Display: Ongoing
  /// Definition:
  ongoing('ongoing'),

  /// Display: Resolved with Sequelae
  /// Definition:
  resolvedWithSequelae('resolvedWithSequelae'),

  /// Display: Fatal
  /// Definition:
  fatal('fatal'),

  /// Display: Unknown
  /// Definition:
  unknown('unknown'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const AdverseEventOutcome(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [AdverseEventOutcome] instances.
  static AdverseEventOutcome fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AdverseEventOutcome.elementOnly.withElement(
        element,
      );
    }
    return AdverseEventOutcome.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  AdverseEventOutcome withElement(Element? newElement) {
    return AdverseEventOutcome.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
