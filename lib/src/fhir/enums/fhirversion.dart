import 'package:fhir_r4/fhir_r4.dart';

/// All published FHIR Versions.
enum FHIRVersion {
  /// Display: 0.01
  /// Definition: Oldest archived version of FHIR.
  value0_01('0.01'),

  /// Display: 0.05
  /// Definition: 1st Draft for Comment (Sept 2012 Ballot).
  value0_05('0.05'),

  /// Display: 0.06
  /// Definition: 2nd Draft for Comment (January 2013 Ballot).
  value0_06('0.06'),

  /// Display: 0.11
  /// Definition: DSTU 1 Ballot version.
  value0_11('0.11'),

  /// Display: 0.0.80
  /// Definition: DSTU 1 Official version.
  value0_0_80('0.0.80'),

  /// Display: 0.0.81
  /// Definition: DSTU 1 Official version Technical Errata #1.
  value0_0_81('0.0.81'),

  /// Display: 0.0.82
  /// Definition: DSTU 1 Official version Technical Errata #2.
  value0_0_82('0.0.82'),

  /// Display: 0.4.0
  /// Definition: Draft For Comment (January 2015 Ballot).
  value0_4_0('0.4.0'),

  /// Display: 0.5.0
  /// Definition: DSTU 2 Ballot version (May 2015 Ballot).
  value0_5_0('0.5.0'),

  /// Display: 1.0.0
  /// Definition: DSTU 2 QA Preview + CQIF Ballot (Sep 2015).
  value1_0_0('1.0.0'),

  /// Display: 1.0.1
  /// Definition: DSTU 2 (Official version).
  value1_0_1('1.0.1'),

  /// Display: 1.0.2
  /// Definition: DSTU 2 (Official version) with 1 technical errata.
  value1_0_2('1.0.2'),

  /// Display: 1.1.0
  /// Definition: GAO Ballot + draft changes to main FHIR standard.
  value1_1_0('1.1.0'),

  /// Display: 1.4.0
  /// Definition: CQF on FHIR Ballot + Connectathon 12 (Montreal).
  value1_4_0('1.4.0'),

  /// Display: 1.6.0
  /// Definition: FHIR STU3 Ballot + Connectathon 13 (Baltimore).
  value1_6_0('1.6.0'),

  /// Display: 1.8.0
  /// Definition: FHIR STU3 Candidate + Connectathon 14 (San Antonio).
  value1_8_0('1.8.0'),

  /// Display: 3.0.0
  /// Definition: FHIR Release 3 (STU).
  value3_0_0('3.0.0'),

  /// Display: 3.0.1
  /// Definition: FHIR Release 3 (STU) with 1 technical errata.
  value3_0_1('3.0.1'),

  /// Display: 3.0.2
  /// Definition: FHIR Release 3 (STU) with 2 technical errata.
  value3_0_2('3.0.2'),

  /// Display: 3.3.0
  /// Definition: R4 Ballot #1.
  value3_3_0('3.3.0'),

  /// Display: 3.5.0
  /// Definition: R4 Ballot #2.
  value3_5_0('3.5.0'),

  /// Display: 4.0.0
  /// Definition: FHIR Release 4 (Normative + STU).
  value4_0_0('4.0.0'),

  /// Display: 4.0.1
  /// Definition: FHIR Release 4 Technical Correction.
  value4_0_1('4.0.1'),

  /// Display: 4.1.0
  /// Definition: FHIR Release 4B Ballot #1.
  value4_1_0('4.1.0'),

  /// Display: 4.3.0-cibuild
  /// Definition: FHIR Release 4B CI-Build.
  value4_3_0_cibuild('4.3.0-cibuild'),

  /// Display: 4.3.0-snapshot1
  /// Definition: FHIR Release 4B Snapshot #1.
  value4_3_0_snapshot1('4.3.0-snapshot1'),

  /// Display: 4.3.0
  /// Definition: FHIR Release 4B.
  value4_3_0('4.3.0'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const FHIRVersion(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static FHIRVersion fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRVersion.elementOnly.withElement(element);
    }
    return FHIRVersion.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  FHIRVersion withElement(Element? newElement) {
    return FHIRVersion.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
