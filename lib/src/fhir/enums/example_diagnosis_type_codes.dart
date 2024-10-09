/// This value set includes example Diagnosis Type codes.
enum ExampleDiagnosisTypeCodes {
  /// Display: Admitting Diagnosis
  /// Definition: The diagnosis given as the reason why the patient was admitted to the hospital.
  admitting,

  /// Display: Clinical Diagnosis
  /// Definition: A diagnosis made on the basis of medical signs and patient-reported symptoms, rather than diagnostic tests.
  clinical,

  /// Display: Differential Diagnosis
  /// Definition: One of a set of the possible diagnoses that could be connected to the signs, symptoms, and lab findings.
  differential,

  /// Display: Discharge Diagnosis
  /// Definition: The diagnosis given when the patient is discharged from the hospital.
  discharge,

  /// Display: Laboratory Diagnosis
  /// Definition: A diagnosis based significantly on laboratory reports or test results, rather than the physical examination of the patient.
  laboratory,

  /// Display: Nursing Diagnosis
  /// Definition: A diagnosis which identifies people's responses to situations in their lives, such as a readiness to change or a willingness to accept assistance.
  nursing,

  /// Display: Prenatal Diagnosis
  /// Definition: A diagnosis determined prior to birth.
  prenatal,

  /// Display: Principal Diagnosis
  /// Definition: The single medical diagnosis that is most relevant to the patient's chief complaint or need for treatment.
  principal,

  /// Display: Radiology Diagnosis
  /// Definition: A diagnosis based primarily on the results from medical imaging studies.
  radiology,

  /// Display: Remote Diagnosis
  /// Definition: A diagnosis determined using telemedicine techniques.
  remote,

  /// Display: Retrospective Diagnosis
  /// Definition: The labeling of an illness in a specific historical event using modern knowledge, methods and disease classifications.
  retrospective,

  /// Display: Self Diagnosis
  /// Definition: A diagnosis determined by the patient.
  self,
  ;

  @override
  String toString() {
    switch (this) {
      case admitting:
        return 'admitting';
      case clinical:
        return 'clinical';
      case differential:
        return 'differential';
      case discharge:
        return 'discharge';
      case laboratory:
        return 'laboratory';
      case nursing:
        return 'nursing';
      case prenatal:
        return 'prenatal';
      case principal:
        return 'principal';
      case radiology:
        return 'radiology';
      case remote:
        return 'remote';
      case retrospective:
        return 'retrospective';
      case self:
        return 'self';
    }
  }

  String toJson() => toString();
  static ExampleDiagnosisTypeCodes fromString(String str) {
    switch (str) {
      case 'admitting':
        return ExampleDiagnosisTypeCodes.admitting;
      case 'clinical':
        return ExampleDiagnosisTypeCodes.clinical;
      case 'differential':
        return ExampleDiagnosisTypeCodes.differential;
      case 'discharge':
        return ExampleDiagnosisTypeCodes.discharge;
      case 'laboratory':
        return ExampleDiagnosisTypeCodes.laboratory;
      case 'nursing':
        return ExampleDiagnosisTypeCodes.nursing;
      case 'prenatal':
        return ExampleDiagnosisTypeCodes.prenatal;
      case 'principal':
        return ExampleDiagnosisTypeCodes.principal;
      case 'radiology':
        return ExampleDiagnosisTypeCodes.radiology;
      case 'remote':
        return ExampleDiagnosisTypeCodes.remote;
      case 'retrospective':
        return ExampleDiagnosisTypeCodes.retrospective;
      case 'self':
        return ExampleDiagnosisTypeCodes.self;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static ExampleDiagnosisTypeCodes fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
