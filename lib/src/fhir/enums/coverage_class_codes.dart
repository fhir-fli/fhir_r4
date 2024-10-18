// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Coverage Class codes.
enum CoverageClassCodes {
  /// Display: Group
  /// Definition: An employee group
  group('group'),

  /// Display: SubGroup
  /// Definition: A sub-group of an employee group
  subgroup('subgroup'),

  /// Display: Plan
  /// Definition: A specific suite of benefits.
  plan('plan'),

  /// Display: SubPlan
  /// Definition: A subset of a specific suite of benefits.
  subplan('subplan'),

  /// Display: Class
  /// Definition: A class of benefits.
  class_('class'),

  /// Display: SubClass
  /// Definition: A subset of a class of benefits.
  subclass('subclass'),

  /// Display: Sequence
  /// Definition: A sequence number associated with a short-term continuance of the coverage.
  sequence('sequence'),

  /// Display: RX BIN
  /// Definition: Pharmacy benefit manager's Business Identification Number.
  rxbin('rxbin'),

  /// Display: RX PCN
  /// Definition: A Pharmacy Benefit Manager specified Processor Control Number.
  rxpcn('rxpcn'),

  /// Display: RX Id
  /// Definition: A Pharmacy Benefit Manager specified Member ID.
  rxid('rxid'),

  /// Display: RX Group
  /// Definition: A Pharmacy Benefit Manager specified Group number.
  rxgroup('rxgroup'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const CoverageClassCodes(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [CoverageClassCodes] instances.
  static CoverageClassCodes fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly.withElement(element);
    }
    return CoverageClassCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  CoverageClassCodes withElement(Element? newElement) {
    return CoverageClassCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
