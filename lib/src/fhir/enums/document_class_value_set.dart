import 'package:json_annotation/json_annotation.dart';

/// This is the code specifying the high-level kind of document (e.g. Prescription, Discharge Summary, Report, etc.). Note: Class code for documents comes from LOINC, and is based upon one of the following:The type of service described by the document. It is described at a very high level in Section 7.3 of the LOINC Manual. The type study performed. It was determined by identifying modalities for study reports. The section of the chart where the document is placed. It was determined from the SETs created for Claims Attachment requests.
enum DocumentClassValueSet {
  /// Display: History of Immunization
  @JsonValue('11369-6')
  value11369_6,

  /// Display: Anesthesia records
  @JsonValue('11485-0')
  value11485_0,

  /// Display: Chemotherapy records
  @JsonValue('11486-8')
  value11486_8,

  /// Display: Consult Note
  @JsonValue('11488-4')
  value11488_4,

  /// Display: Provider-unspecified progress note
  @JsonValue('11506-3')
  value11506_3,

  /// Display: Nursery records
  @JsonValue('11543-6')
  value11543_6,

  /// Display: Labor and delivery records
  @JsonValue('15508-5')
  value15508_5,

  /// Display: Radiology studies (set)
  @JsonValue('18726-0')
  value18726_0,

  /// Display: Provider-unspecified transfer summary
  @JsonValue('18761-7')
  value18761_7,

  /// Display: Discharge summary
  @JsonValue('18842-5')
  value18842_5,

  /// Display: Laboratory Studies (set)
  @JsonValue('26436-6')
  value26436_6,

  /// Display: Cardiology studies (set)
  @JsonValue('26441-6')
  value26441_6,

  /// Display: Obstetrical studies (set)
  @JsonValue('26442-4')
  value26442_4,

  /// Display: Gastroenterology endoscopy studies (set)
  @JsonValue('27895-2')
  value27895_2,

  /// Display: Pulmonary studies (set)
  @JsonValue('27896-0')
  value27896_0,

  /// Display: Neuromuscular electrophysiology studies (set)
  @JsonValue('27897-8')
  value27897_8,

  /// Display: Pathology studies (set)
  @JsonValue('27898-6')
  value27898_6,

  /// Display: Provider-unspecified procedure note
  @JsonValue('28570-0')
  value28570_0,

  /// Display: Ophthalmology/optometry studies (set)
  @JsonValue('28619-5')
  value28619_5,

  /// Display: Miscellaneous studies (set)
  @JsonValue('28634-4')
  value28634_4,

  /// Display: Dialysis records
  @JsonValue('29749-9')
  value29749_9,

  /// Display: Neonatal intensive care records
  @JsonValue('29750-7')
  value29750_7,

  /// Display: Critical care records
  @JsonValue('29751-5')
  value29751_5,

  /// Display: Perioperative records
  @JsonValue('29752-3')
  value29752_3,

  /// Display: Evaluation and management note
  @JsonValue('34109-9')
  value34109_9,

  /// Display: Provider-unspecified, History and physical note
  @JsonValue('34117-2')
  value34117_2,

  /// Display: Interventional procedure note
  @JsonValue('34121-4')
  value34121_4,

  /// Display: Pathology procedure note
  @JsonValue('34122-2')
  value34122_2,

  /// Display: Summarization of episode note
  @JsonValue('34133-9')
  value34133_9,

  /// Display: Transfer of care referral note
  @JsonValue('34140-4')
  value34140_4,

  /// Display: Telephone encounter note
  @JsonValue('34748-4')
  value34748_4,

  /// Display: General surgery Pre-operative evaluation and management note
  @JsonValue('34775-7')
  value34775_7,

  /// Display: Inpatient Admission history and physical note
  @JsonValue('47039-3')
  value47039_3,

  /// Display: Counseling note
  @JsonValue('47042-7')
  value47042_7,

  /// Display: Study report Document
  @JsonValue('47045-0')
  value47045_0,

  /// Display: Summary of death
  @JsonValue('47046-8')
  value47046_8,

  /// Display: Non-patient Communication
  @JsonValue('47049-2')
  value47049_2,

  /// Display: Privacy Policy Organization Document
  @JsonValue('57017-6')
  value57017_6,

  /// Display: Privacy Policy Acknowledgment Document
  @JsonValue('57016-8')
  value57016_8,

  /// Display: Medication Summary Document
  @JsonValue('56445-0')
  value56445_0,

  /// Display: Personal health monitoring report Document
  @JsonValue('53576-5')
  value53576_5,

  /// Display: Plan of care note
  @JsonValue('56447-6')
  value56447_6,

  /// Display: Diagnostic imaging study
  @JsonValue('18748-4')
  value18748_4,

  /// Display: Surgical operation note
  @JsonValue('11504-8')
  value11504_8,

  /// Display: Referral note
  @JsonValue('57133-1')
  value57133_1,
  ;

  @override
  String toString() {
    switch (this) {
      case value11369_6:
        return '11369-6';
      case value11485_0:
        return '11485-0';
      case value11486_8:
        return '11486-8';
      case value11488_4:
        return '11488-4';
      case value11506_3:
        return '11506-3';
      case value11543_6:
        return '11543-6';
      case value15508_5:
        return '15508-5';
      case value18726_0:
        return '18726-0';
      case value18761_7:
        return '18761-7';
      case value18842_5:
        return '18842-5';
      case value26436_6:
        return '26436-6';
      case value26441_6:
        return '26441-6';
      case value26442_4:
        return '26442-4';
      case value27895_2:
        return '27895-2';
      case value27896_0:
        return '27896-0';
      case value27897_8:
        return '27897-8';
      case value27898_6:
        return '27898-6';
      case value28570_0:
        return '28570-0';
      case value28619_5:
        return '28619-5';
      case value28634_4:
        return '28634-4';
      case value29749_9:
        return '29749-9';
      case value29750_7:
        return '29750-7';
      case value29751_5:
        return '29751-5';
      case value29752_3:
        return '29752-3';
      case value34109_9:
        return '34109-9';
      case value34117_2:
        return '34117-2';
      case value34121_4:
        return '34121-4';
      case value34122_2:
        return '34122-2';
      case value34133_9:
        return '34133-9';
      case value34140_4:
        return '34140-4';
      case value34748_4:
        return '34748-4';
      case value34775_7:
        return '34775-7';
      case value47039_3:
        return '47039-3';
      case value47042_7:
        return '47042-7';
      case value47045_0:
        return '47045-0';
      case value47046_8:
        return '47046-8';
      case value47049_2:
        return '47049-2';
      case value57017_6:
        return '57017-6';
      case value57016_8:
        return '57016-8';
      case value56445_0:
        return '56445-0';
      case value53576_5:
        return '53576-5';
      case value56447_6:
        return '56447-6';
      case value18748_4:
        return '18748-4';
      case value11504_8:
        return '11504-8';
      case value57133_1:
        return '57133-1';
    }
  }

  String toJson() => toString();
  static DocumentClassValueSet fromString(String str) {
    switch (str) {
      case '11369-6':
        return DocumentClassValueSet.value11369_6;
      case '11485-0':
        return DocumentClassValueSet.value11485_0;
      case '11486-8':
        return DocumentClassValueSet.value11486_8;
      case '11488-4':
        return DocumentClassValueSet.value11488_4;
      case '11506-3':
        return DocumentClassValueSet.value11506_3;
      case '11543-6':
        return DocumentClassValueSet.value11543_6;
      case '15508-5':
        return DocumentClassValueSet.value15508_5;
      case '18726-0':
        return DocumentClassValueSet.value18726_0;
      case '18761-7':
        return DocumentClassValueSet.value18761_7;
      case '18842-5':
        return DocumentClassValueSet.value18842_5;
      case '26436-6':
        return DocumentClassValueSet.value26436_6;
      case '26441-6':
        return DocumentClassValueSet.value26441_6;
      case '26442-4':
        return DocumentClassValueSet.value26442_4;
      case '27895-2':
        return DocumentClassValueSet.value27895_2;
      case '27896-0':
        return DocumentClassValueSet.value27896_0;
      case '27897-8':
        return DocumentClassValueSet.value27897_8;
      case '27898-6':
        return DocumentClassValueSet.value27898_6;
      case '28570-0':
        return DocumentClassValueSet.value28570_0;
      case '28619-5':
        return DocumentClassValueSet.value28619_5;
      case '28634-4':
        return DocumentClassValueSet.value28634_4;
      case '29749-9':
        return DocumentClassValueSet.value29749_9;
      case '29750-7':
        return DocumentClassValueSet.value29750_7;
      case '29751-5':
        return DocumentClassValueSet.value29751_5;
      case '29752-3':
        return DocumentClassValueSet.value29752_3;
      case '34109-9':
        return DocumentClassValueSet.value34109_9;
      case '34117-2':
        return DocumentClassValueSet.value34117_2;
      case '34121-4':
        return DocumentClassValueSet.value34121_4;
      case '34122-2':
        return DocumentClassValueSet.value34122_2;
      case '34133-9':
        return DocumentClassValueSet.value34133_9;
      case '34140-4':
        return DocumentClassValueSet.value34140_4;
      case '34748-4':
        return DocumentClassValueSet.value34748_4;
      case '34775-7':
        return DocumentClassValueSet.value34775_7;
      case '47039-3':
        return DocumentClassValueSet.value47039_3;
      case '47042-7':
        return DocumentClassValueSet.value47042_7;
      case '47045-0':
        return DocumentClassValueSet.value47045_0;
      case '47046-8':
        return DocumentClassValueSet.value47046_8;
      case '47049-2':
        return DocumentClassValueSet.value47049_2;
      case '57017-6':
        return DocumentClassValueSet.value57017_6;
      case '57016-8':
        return DocumentClassValueSet.value57016_8;
      case '56445-0':
        return DocumentClassValueSet.value56445_0;
      case '53576-5':
        return DocumentClassValueSet.value53576_5;
      case '56447-6':
        return DocumentClassValueSet.value56447_6;
      case '18748-4':
        return DocumentClassValueSet.value18748_4;
      case '11504-8':
        return DocumentClassValueSet.value11504_8;
      case '57133-1':
        return DocumentClassValueSet.value57133_1;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static DocumentClassValueSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
