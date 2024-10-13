/// This is the code specifying the high-level kind of document (e.g. Prescription, Discharge Summary, Report, etc.). Note: Class code for documents comes from LOINC, and is based upon one of the following:The type of service described by the document. It is described at a very high level in Section 7.3 of the LOINC Manual. The type study performed. It was determined by identifying modalities for study reports. The section of the chart where the document is placed. It was determined from the SETs created for Claims Attachment requests.
enum DocumentClassValueSet {
  /// Display: History of Immunization
  value11369_6,

  /// Display: Anesthesia records
  value11485_0,

  /// Display: Chemotherapy records
  value11486_8,

  /// Display: Consult Note
  value11488_4,

  /// Display: Provider-unspecified progress note
  value11506_3,

  /// Display: Nursery records
  value11543_6,

  /// Display: Labor and delivery records
  value15508_5,

  /// Display: Radiology studies (set)
  value18726_0,

  /// Display: Provider-unspecified transfer summary
  value18761_7,

  /// Display: Discharge summary
  value18842_5,

  /// Display: Laboratory Studies (set)
  value26436_6,

  /// Display: Cardiology studies (set)
  value26441_6,

  /// Display: Obstetrical studies (set)
  value26442_4,

  /// Display: Gastroenterology endoscopy studies (set)
  value27895_2,

  /// Display: Pulmonary studies (set)
  value27896_0,

  /// Display: Neuromuscular electrophysiology studies (set)
  value27897_8,

  /// Display: Pathology studies (set)
  value27898_6,

  /// Display: Provider-unspecified procedure note
  value28570_0,

  /// Display: Ophthalmology/optometry studies (set)
  value28619_5,

  /// Display: Miscellaneous studies (set)
  value28634_4,

  /// Display: Dialysis records
  value29749_9,

  /// Display: Neonatal intensive care records
  value29750_7,

  /// Display: Critical care records
  value29751_5,

  /// Display: Perioperative records
  value29752_3,

  /// Display: Evaluation and management note
  value34109_9,

  /// Display: Provider-unspecified, History and physical note
  value34117_2,

  /// Display: Interventional procedure note
  value34121_4,

  /// Display: Pathology procedure note
  value34122_2,

  /// Display: Summarization of episode note
  value34133_9,

  /// Display: Transfer of care referral note
  value34140_4,

  /// Display: Telephone encounter note
  value34748_4,

  /// Display: General surgery Pre-operative evaluation and management note
  value34775_7,

  /// Display: Inpatient Admission history and physical note
  value47039_3,

  /// Display: Counseling note
  value47042_7,

  /// Display: Study report Document
  value47045_0,

  /// Display: Summary of death
  value47046_8,

  /// Display: Non-patient Communication
  value47049_2,

  /// Display: Privacy Policy Organization Document
  value57017_6,

  /// Display: Privacy Policy Acknowledgment Document
  value57016_8,

  /// Display: Medication Summary Document
  value56445_0,

  /// Display: Personal health monitoring report Document
  value53576_5,

  /// Display: Plan of care note
  value56447_6,

  /// Display: Diagnostic imaging study
  value18748_4,

  /// Display: Surgical operation note
  value11504_8,

  /// Display: Referral note
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

  /// Returns a [String] from a [DocumentClassValueSet] enum.
  String toJson() => toString();

  /// Returns a [DocumentClassValueSet] from a [String] enum.
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

  /// Returns a [DocumentClassValueSet] from a json [String] (although it will accept any dynamic and throw an error if it is not a String due to requirements for serializing/deserializing
  static DocumentClassValueSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
