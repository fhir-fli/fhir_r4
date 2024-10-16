import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Type codes.
enum ExampleDiagnosisTypeCodes {
  /// Display: Admitting Diagnosis
  /// Definition: The diagnosis given as the reason why the patient was admitted to the hospital.
  admitting('admitting'),

  /// Display: Clinical Diagnosis
  /// Definition: A diagnosis made on the basis of medical signs and patient-reported symptoms, rather than diagnostic tests.
  clinical('clinical'),

  /// Display: Differential Diagnosis
  /// Definition: One of a set of the possible diagnoses that could be connected to the signs, symptoms, and lab findings.
  differential('differential'),

  /// Display: Discharge Diagnosis
  /// Definition: The diagnosis given when the patient is discharged from the hospital.
  discharge('discharge'),

  /// Display: Laboratory Diagnosis
  /// Definition: A diagnosis based significantly on laboratory reports or test results, rather than the physical examination of the patient.
  laboratory('laboratory'),

  /// Display: Nursing Diagnosis
  /// Definition: A diagnosis which identifies people's responses to situations in their lives, such as a readiness to change or a willingness to accept assistance.
  nursing('nursing'),

  /// Display: Prenatal Diagnosis
  /// Definition: A diagnosis determined prior to birth.
  prenatal('prenatal'),

  /// Display: Principal Diagnosis
  /// Definition: The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment.
  principal('principal'),

  /// Display: Radiology Diagnosis
  /// Definition: A diagnosis based primarily on the results from medical imaging studies.
  radiology('radiology'),

  /// Display: Remote Diagnosis
  /// Definition: A diagnosis determined using telemedicine techniques.
  remote('remote'),

  /// Display: Retrospective Diagnosis
  /// Definition: The labeling of an illness in a specific historical event using modern knowledge, methods and disease classifications.
  retrospective('retrospective'),

  /// Display: Self Diagnosis
  /// Definition: A diagnosis determined by the patient.
  self('self'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const ExampleDiagnosisTypeCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static ExampleDiagnosisTypeCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisTypeCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisTypeCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  ExampleDiagnosisTypeCodes withElement(Element? newElement) {
    return ExampleDiagnosisTypeCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
