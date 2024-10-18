// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This is the code specifying the high-level kind of document (e.g. Prescription, Discharge Summary, Report, etc.). Note: Class code for documents comes from LOINC, and is based upon one of the following:The type of service described by the document. It is described at a very high level in Section 7.3 of the LOINC Manual. The type study performed. It was determined by identifying modalities for study reports. The section of the chart where the document is placed. It was determined from the SETs created for Claims Attachment requests.
enum DocumentClassValueSet {
  /// Display: History of Immunization
  /// Definition:
  value11369_6('11369-6'),

  /// Display: Anesthesia records
  /// Definition:
  value11485_0('11485-0'),

  /// Display: Chemotherapy records
  /// Definition:
  value11486_8('11486-8'),

  /// Display: Consult Note
  /// Definition:
  value11488_4('11488-4'),

  /// Display: Provider-unspecified progress note
  /// Definition:
  value11506_3('11506-3'),

  /// Display: Nursery records
  /// Definition:
  value11543_6('11543-6'),

  /// Display: Labor and delivery records
  /// Definition:
  value15508_5('15508-5'),

  /// Display: Radiology studies (set)
  /// Definition:
  value18726_0('18726-0'),

  /// Display: Provider-unspecified transfer summary
  /// Definition:
  value18761_7('18761-7'),

  /// Display: Discharge summary
  /// Definition:
  value18842_5('18842-5'),

  /// Display: Laboratory Studies (set)
  /// Definition:
  value26436_6('26436-6'),

  /// Display: Cardiology studies (set)
  /// Definition:
  value26441_6('26441-6'),

  /// Display: Obstetrical studies (set)
  /// Definition:
  value26442_4('26442-4'),

  /// Display: Gastroenterology endoscopy studies (set)
  /// Definition:
  value27895_2('27895-2'),

  /// Display: Pulmonary studies (set)
  /// Definition:
  value27896_0('27896-0'),

  /// Display: Neuromuscular electrophysiology studies (set)
  /// Definition:
  value27897_8('27897-8'),

  /// Display: Pathology studies (set)
  /// Definition:
  value27898_6('27898-6'),

  /// Display: Provider-unspecified procedure note
  /// Definition:
  value28570_0('28570-0'),

  /// Display: Ophthalmology/optometry studies (set)
  /// Definition:
  value28619_5('28619-5'),

  /// Display: Miscellaneous studies (set)
  /// Definition:
  value28634_4('28634-4'),

  /// Display: Dialysis records
  /// Definition:
  value29749_9('29749-9'),

  /// Display: Neonatal intensive care records
  /// Definition:
  value29750_7('29750-7'),

  /// Display: Critical care records
  /// Definition:
  value29751_5('29751-5'),

  /// Display: Perioperative records
  /// Definition:
  value29752_3('29752-3'),

  /// Display: Evaluation and management note
  /// Definition:
  value34109_9('34109-9'),

  /// Display: Provider-unspecified, History and physical note
  /// Definition:
  value34117_2('34117-2'),

  /// Display: Interventional procedure note
  /// Definition:
  value34121_4('34121-4'),

  /// Display: Pathology procedure note
  /// Definition:
  value34122_2('34122-2'),

  /// Display: Summarization of episode note
  /// Definition:
  value34133_9('34133-9'),

  /// Display: Transfer of care referral note
  /// Definition:
  value34140_4('34140-4'),

  /// Display: Telephone encounter note
  /// Definition:
  value34748_4('34748-4'),

  /// Display: General surgery Pre-operative evaluation and management note
  /// Definition:
  value34775_7('34775-7'),

  /// Display: Inpatient Admission history and physical note
  /// Definition:
  value47039_3('47039-3'),

  /// Display: Counseling note
  /// Definition:
  value47042_7('47042-7'),

  /// Display: Study report Document
  /// Definition:
  value47045_0('47045-0'),

  /// Display: Summary of death
  /// Definition:
  value47046_8('47046-8'),

  /// Display: Non-patient Communication
  /// Definition:
  value47049_2('47049-2'),

  /// Display: Privacy Policy Organization Document
  /// Definition:
  value57017_6('57017-6'),

  /// Display: Privacy Policy Acknowledgment Document
  /// Definition:
  value57016_8('57016-8'),

  /// Display: Medication Summary Document
  /// Definition:
  value56445_0('56445-0'),

  /// Display: Personal health monitoring report Document
  /// Definition:
  value53576_5('53576-5'),

  /// Display: Plan of care note
  /// Definition:
  value56447_6('56447-6'),

  /// Display: Diagnostic imaging study
  /// Definition:
  value18748_4('18748-4'),

  /// Display: Surgical operation note
  /// Definition:
  value11504_8('11504-8'),

  /// Display: Referral note
  /// Definition:
  value57133_1('57133-1'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const DocumentClassValueSet(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [DocumentClassValueSet] instances.
  static DocumentClassValueSet fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DocumentClassValueSet.elementOnly.withElement(
        element,
      );
    }
    return DocumentClassValueSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  DocumentClassValueSet withElement(Element? newElement) {
    return DocumentClassValueSet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
