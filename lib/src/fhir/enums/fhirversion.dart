import 'package:json_annotation/json_annotation.dart';

/// All published FHIR Versions.
enum FHIRVersion {
  /// Display: 0.01
  /// Definition: Oldest archived version of FHIR.
  @JsonValue('0.01')
  value0_01,
  /// Display: 0.05
  /// Definition: 1st Draft for Comment (Sept 2012 Ballot).
  @JsonValue('0.05')
  value0_05,
  /// Display: 0.06
  /// Definition: 2nd Draft for Comment (January 2013 Ballot).
  @JsonValue('0.06')
  value0_06,
  /// Display: 0.11
  /// Definition: DSTU 1 Ballot version.
  @JsonValue('0.11')
  value0_11,
  /// Display: 0.0.80
  /// Definition: DSTU 1 Official version.
  @JsonValue('0.0.80')
  value0_0_80,
  /// Display: 0.0.81
  /// Definition: DSTU 1 Official version Technical Errata #1.
  @JsonValue('0.0.81')
  value0_0_81,
  /// Display: 0.0.82
  /// Definition: DSTU 1 Official version Technical Errata #2.
  @JsonValue('0.0.82')
  value0_0_82,
  /// Display: 0.4.0
  /// Definition: Draft For Comment (January 2015 Ballot).
  @JsonValue('0.4.0')
  value0_4_0,
  /// Display: 0.5.0
  /// Definition: DSTU 2 Ballot version (May 2015 Ballot).
  @JsonValue('0.5.0')
  value0_5_0,
  /// Display: 1.0.0
  /// Definition: DSTU 2 QA Preview + CQIF Ballot (Sep 2015).
  @JsonValue('1.0.0')
  value1_0_0,
  /// Display: 1.0.1
  /// Definition: DSTU 2 (Official version).
  @JsonValue('1.0.1')
  value1_0_1,
  /// Display: 1.0.2
  /// Definition: DSTU 2 (Official version) with 1 technical errata.
  @JsonValue('1.0.2')
  value1_0_2,
  /// Display: 1.1.0
  /// Definition: GAO Ballot + draft changes to main FHIR standard.
  @JsonValue('1.1.0')
  value1_1_0,
  /// Display: 1.4.0
  /// Definition: CQF on FHIR Ballot + Connectathon 12 (Montreal).
  @JsonValue('1.4.0')
  value1_4_0,
  /// Display: 1.6.0
  /// Definition: FHIR STU3 Ballot + Connectathon 13 (Baltimore).
  @JsonValue('1.6.0')
  value1_6_0,
  /// Display: 1.8.0
  /// Definition: FHIR STU3 Candidate + Connectathon 14 (San Antonio).
  @JsonValue('1.8.0')
  value1_8_0,
  /// Display: 3.0.0
  /// Definition: FHIR Release 3 (STU).
  @JsonValue('3.0.0')
  value3_0_0,
  /// Display: 3.0.1
  /// Definition: FHIR Release 3 (STU) with 1 technical errata.
  @JsonValue('3.0.1')
  value3_0_1,
  /// Display: 3.0.2
  /// Definition: FHIR Release 3 (STU) with 2 technical errata.
  @JsonValue('3.0.2')
  value3_0_2,
  /// Display: 3.3.0
  /// Definition: R4 Ballot #1.
  @JsonValue('3.3.0')
  value3_3_0,
  /// Display: 3.5.0
  /// Definition: R4 Ballot #2.
  @JsonValue('3.5.0')
  value3_5_0,
  /// Display: 4.0.0
  /// Definition: FHIR Release 4 (Normative + STU).
  @JsonValue('4.0.0')
  value4_0_0,
  /// Display: 4.0.1
  /// Definition: FHIR Release 4 Technical Correction.
  @JsonValue('4.0.1')
  value4_0_1,
  /// Display: 4.1.0
  /// Definition: FHIR Release 4B Ballot #1.
  @JsonValue('4.1.0')
  value4_1_0,
  /// Display: 4.3.0-cibuild
  /// Definition: FHIR Release 4B CI-Build.
  @JsonValue('4.3.0-cibuild')
  value4_3_0_cibuild,
  /// Display: 4.3.0-snapshot1
  /// Definition: FHIR Release 4B Snapshot #1.
  @JsonValue('4.3.0-snapshot1')
  value4_3_0_snapshot1,
  /// Display: 4.3.0
  /// Definition: FHIR Release 4B.
  @JsonValue('4.3.0')
  value4_3_0,
;

@override
  String toString() {
      switch(this) {
        case value0_01: return '0.01';
        case value0_05: return '0.05';
        case value0_06: return '0.06';
        case value0_11: return '0.11';
        case value0_0_80: return '0.0.80';
        case value0_0_81: return '0.0.81';
        case value0_0_82: return '0.0.82';
        case value0_4_0: return '0.4.0';
        case value0_5_0: return '0.5.0';
        case value1_0_0: return '1.0.0';
        case value1_0_1: return '1.0.1';
        case value1_0_2: return '1.0.2';
        case value1_1_0: return '1.1.0';
        case value1_4_0: return '1.4.0';
        case value1_6_0: return '1.6.0';
        case value1_8_0: return '1.8.0';
        case value3_0_0: return '3.0.0';
        case value3_0_1: return '3.0.1';
        case value3_0_2: return '3.0.2';
        case value3_3_0: return '3.3.0';
        case value3_5_0: return '3.5.0';
        case value4_0_0: return '4.0.0';
        case value4_0_1: return '4.0.1';
        case value4_1_0: return '4.1.0';
        case value4_3_0_cibuild: return '4.3.0-cibuild';
        case value4_3_0_snapshot1: return '4.3.0-snapshot1';
        case value4_3_0: return '4.3.0';
      }
      }
String toJson() => toString();
  FHIRVersion fromString(String str) {
    switch(str) {
      case '0.01': return FHIRVersion.value0_01;
      case '0.05': return FHIRVersion.value0_05;
      case '0.06': return FHIRVersion.value0_06;
      case '0.11': return FHIRVersion.value0_11;
      case '0.0.80': return FHIRVersion.value0_0_80;
      case '0.0.81': return FHIRVersion.value0_0_81;
      case '0.0.82': return FHIRVersion.value0_0_82;
      case '0.4.0': return FHIRVersion.value0_4_0;
      case '0.5.0': return FHIRVersion.value0_5_0;
      case '1.0.0': return FHIRVersion.value1_0_0;
      case '1.0.1': return FHIRVersion.value1_0_1;
      case '1.0.2': return FHIRVersion.value1_0_2;
      case '1.1.0': return FHIRVersion.value1_1_0;
      case '1.4.0': return FHIRVersion.value1_4_0;
      case '1.6.0': return FHIRVersion.value1_6_0;
      case '1.8.0': return FHIRVersion.value1_8_0;
      case '3.0.0': return FHIRVersion.value3_0_0;
      case '3.0.1': return FHIRVersion.value3_0_1;
      case '3.0.2': return FHIRVersion.value3_0_2;
      case '3.3.0': return FHIRVersion.value3_3_0;
      case '3.5.0': return FHIRVersion.value3_5_0;
      case '4.0.0': return FHIRVersion.value4_0_0;
      case '4.0.1': return FHIRVersion.value4_0_1;
      case '4.1.0': return FHIRVersion.value4_1_0;
      case '4.3.0-cibuild': return FHIRVersion.value4_3_0_cibuild;
      case '4.3.0-snapshot1': return FHIRVersion.value4_3_0_snapshot1;
      case '4.3.0': return FHIRVersion.value4_3_0;
    default: throw ArgumentError('Unknown enum value: $str');
    }
      }
 FHIRVersion fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
 throw ArgumentError('Unknown enum value: $jsonValue');
}
}
}
