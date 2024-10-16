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
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CoverageClassCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CoverageClassCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly.withElement(element);
    }
    return CoverageClassCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CoverageClassCodes withElement(Element? newElement) {
    return CoverageClassCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
