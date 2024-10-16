import 'package:fhir_r4/fhir_r4.dart';

/// This is the code representing the clinical specialty of the clinician or provider who interacted with, treated, or provided a service to/for the patient. The value set used for clinical specialty has been limited by HITSP to the value set reproduced from HITSP C80 Table 2-149 Clinical Specialty Value Set Definition.
enum PracticeSettingCodeValueSet {
  /// Display: Adult mental illness
  /// Definition:
  value408467006('408467006'),

  /// Display: Anesthetics
  /// Definition:
  value394577000('394577000'),

  /// Display: Audiological medicine
  /// Definition:
  value394578005('394578005'),

  /// Display: Blood banking and transfusion medicine
  /// Definition:
  value421661004('421661004'),

  /// Display: Burns care
  /// Definition:
  value408462000('408462000'),

  /// Display: Cardiology
  /// Definition:
  value394579002('394579002'),

  /// Display: Clinical cytogenetics and molecular genetics
  /// Definition:
  value394804000('394804000'),

  /// Display: Clinical genetics
  /// Definition:
  value394580004('394580004'),

  /// Display: Clinical hematology
  /// Definition:
  value394803006('394803006'),

  /// Display: Clinical immunology
  /// Definition:
  value408480009('408480009'),

  /// Display: Clinical microbiology
  /// Definition:
  value408454008('408454008'),

  /// Display: Clinical neuro-physiology
  /// Definition:
  value394809005('394809005'),

  /// Display: Clinical oncology
  /// Definition:
  value394592004('394592004'),

  /// Display: Clinical pharmacology
  /// Definition:
  value394600006('394600006'),

  /// Display: Clinical physiology
  /// Definition:
  value394601005('394601005'),

  /// Display: Community medicine
  /// Definition:
  value394581000('394581000'),

  /// Display: Critical care medicine
  /// Definition:
  value408478003('408478003'),

  /// Display: Dental medicine specialties
  /// Definition:
  value394812008('394812008'),

  /// Display: Dental-General dental practice
  /// Definition:
  value408444009('408444009'),

  /// Display: Dermatology
  /// Definition:
  value394582007('394582007'),

  /// Display: Diabetic medicine
  /// Definition:
  value408475000('408475000'),

  /// Display: Dive medicine
  /// Definition:
  value410005002('410005002'),

  /// Display: Endocrinology
  /// Definition:
  value394583002('394583002'),

  /// Display: Family practice
  /// Definition:
  value419772000('419772000'),

  /// Display: Gastroenterology
  /// Definition:
  value394584008('394584008'),

  /// Display: General medical practice
  /// Definition:
  value408443003('408443003'),

  /// Display: General medicine
  /// Definition:
  value394802001('394802001'),

  /// Display: General pathology
  /// Definition:
  value394915009('394915009'),

  /// Display: General practice
  /// Definition:
  value394814009('394814009'),

  /// Display: Genito-urinary medicine
  /// Definition:
  value394808002('394808002'),

  /// Display: Geriatric medicine
  /// Definition:
  value394811001('394811001'),

  /// Display: Gynecological oncology
  /// Definition:
  value408446006('408446006'),

  /// Display: Gynecology
  /// Definition:
  value394586005('394586005'),

  /// Display: Hematopathology
  /// Definition:
  value394916005('394916005'),

  /// Display: Hepatology
  /// Definition:
  value408472002('408472002'),

  /// Display: Histopathology
  /// Definition:
  value394597005('394597005'),

  /// Display: Immunopathology
  /// Definition:
  value394598000('394598000'),

  /// Display: Infectious diseases
  /// Definition:
  value394807007('394807007'),

  /// Display: Internal medicine
  /// Definition:
  value419192003('419192003'),

  /// Display: Learning disability
  /// Definition:
  value408468001('408468001'),

  /// Display: Medical oncology
  /// Definition:
  value394593009('394593009'),

  /// Display: Medical ophthalmology
  /// Definition:
  value394813003('394813003'),

  /// Display: Military medicine
  /// Definition:
  value410001006('410001006'),

  /// Display: Nephrology
  /// Definition:
  value394589003('394589003'),

  /// Display: Neurology
  /// Definition:
  value394591006('394591006'),

  /// Display: Neuropathology
  /// Definition:
  value394599008('394599008'),

  /// Display: Nuclear medicine
  /// Definition:
  value394649004('394649004'),

  /// Display: Obstetrics
  /// Definition:
  value408470005('408470005'),

  /// Display: Obstetrics and gynecology
  /// Definition:
  value394585009('394585009'),

  /// Display: Occupational medicine
  /// Definition:
  value394821009('394821009'),

  /// Display: Ophthalmic surgery
  /// Definition:
  value422191005('422191005'),

  /// Display: Ophthalmology
  /// Definition:
  value394594003('394594003'),

  /// Display: Osteopathic manipulative medicine
  /// Definition:
  value416304004('416304004'),

  /// Display: Otolaryngology
  /// Definition:
  value418960008('418960008'),

  /// Display: Pain management
  /// Definition:
  value394882004('394882004'),

  /// Display: Palliative medicine
  /// Definition:
  value394806003('394806003'),

  /// Display: Pediatric (Child and adolescent) psychiatry
  /// Definition:
  value394588006('394588006'),

  /// Display: Pediatric cardiology
  /// Definition:
  value408459003('408459003'),

  /// Display: Pediatric dentistry
  /// Definition:
  value394607009('394607009'),

  /// Display: Pediatric endocrinology
  /// Definition:
  value419610006('419610006'),

  /// Display: Pediatric gastroenterology
  /// Definition:
  value418058008('418058008'),

  /// Display: Pediatric genetics
  /// Definition:
  value420208008('420208008'),

  /// Display: Pediatric hematology
  /// Definition:
  value418652005('418652005'),

  /// Display: Pediatric immunology
  /// Definition:
  value418535003('418535003'),

  /// Display: Pediatric infectious diseases
  /// Definition:
  value418862001('418862001'),

  /// Display: Pediatric nephrology
  /// Definition:
  value419365004('419365004'),

  /// Display: Pediatric oncology
  /// Definition:
  value418002000('418002000'),

  /// Display: Pediatric ophthalmology
  /// Definition:
  value419983000('419983000'),

  /// Display: Pediatric pulmonology
  /// Definition:
  value419170002('419170002'),

  /// Display: Pediatric rheumatology
  /// Definition:
  value419472004('419472004'),

  /// Display: Pediatric surgery
  /// Definition:
  value394539006('394539006'),

  /// Display: Pediatric surgery-bone marrow transplantation
  /// Definition:
  value420112009('420112009'),

  /// Display: Preventive medicine
  /// Definition:
  value409968004('409968004'),

  /// Display: Psychiatry
  /// Definition:
  value394587001('394587001'),

  /// Display: Psychotherapy
  /// Definition:
  value394913002('394913002'),

  /// Display: Public health medicine
  /// Definition:
  value408440000('408440000'),

  /// Display: Pulmonary medicine
  /// Definition:
  value418112009('418112009'),

  /// Display: Radiation oncology
  /// Definition:
  value419815003('419815003'),

  /// Display: Radiology
  /// Definition:
  value394914008('394914008'),

  /// Display: Radiology-Interventional radiology
  /// Definition:
  value408455009('408455009'),

  /// Display: Rehabilitation
  /// Definition:
  value394602003('394602003'),

  /// Display: Respite care
  /// Definition:
  value408447002('408447002'),

  /// Display: Rheumatology
  /// Definition:
  value394810000('394810000'),

  /// Display: Sleep studies
  /// Definition:
  value408450004('408450004'),

  /// Display: Surgery-Bone and marrow transplantation
  /// Definition:
  value408476004('408476004'),

  /// Display: Surgery-Breast surgery
  /// Definition:
  value408469009('408469009'),

  /// Display: Surgery-Cardiac surgery
  /// Definition:
  value408466002('408466002'),

  /// Display: Surgery-Cardiothoracic transplantation
  /// Definition:
  value408471009('408471009'),

  /// Display: Surgery-Colorectal surgery
  /// Definition:
  value408464004('408464004'),

  /// Display: Surgery-Dental-Endodontics
  /// Definition:
  value408441001('408441001'),

  /// Display: Surgery-Dental-Oral and maxillofacial surgery
  /// Definition:
  value408465003('408465003'),

  /// Display: Surgery-Dental-Oral surgery
  /// Definition:
  value394605001('394605001'),

  /// Display: Surgery-Dental-Orthodontics
  /// Definition:
  value394608004('394608004'),

  /// Display: Surgery-Dental-Periodontal surgery
  /// Definition:
  value408461007('408461007'),

  /// Display: Surgery-Dental-Prosthetic dentistry (Prosthodontics)
  /// Definition:
  value408460008('408460008'),

  /// Display: Surgery-Dental-surgical-Prosthodontics
  /// Definition:
  value408460008_1('408460008'),

  /// Display: Surgery-Dentistry-Restorative dentistry
  /// Definition:
  value394606000('394606000'),

  /// Display: Surgery-Dentistry--surgical
  /// Definition:
  value408449004('408449004'),

  /// Display: Surgery-Dentistry-surgical-Orthodontics
  /// Definition:
  value394608004_1('394608004'),

  /// Display: Surgery-Dermatologic surgery
  /// Definition:
  value418018006('418018006'),

  /// Display: Surgery-Ear, nose and throat surgery
  /// Definition:
  value394604002('394604002'),

  /// Display: Surgery-general
  /// Definition:
  value394609007('394609007'),

  /// Display: Surgery-Hepatobiliary and pancreatic surgery
  /// Definition:
  value408474001('408474001'),

  /// Display: Surgery-Neurosurgery
  /// Definition:
  value394610002('394610002'),

  /// Display: Surgery-Plastic surgery
  /// Definition:
  value394611003('394611003'),

  /// Display: Surgery-Transplantation surgery
  /// Definition:
  value408477008('408477008'),

  /// Display: Surgery-Trauma and orthopedics
  /// Definition:
  value394801008('394801008'),

  /// Display: Surgery-Vascular
  /// Definition:
  value408463005('408463005'),

  /// Display: Surgical oncology
  /// Definition:
  value419321007('419321007'),

  /// Display: Surgical-Accident & emergency
  /// Definition:
  value394576009('394576009'),

  /// Display: Thoracic medicine
  /// Definition:
  value394590007('394590007'),

  /// Display: Toxicology
  /// Definition:
  value409967009('409967009'),

  /// Display: Tropical medicine
  /// Definition:
  value408448007('408448007'),

  /// Display: Urological oncology
  /// Definition:
  value419043006('419043006'),

  /// Display: Urology
  /// Definition:
  value394612005('394612005'),

  /// Display: Medical specialty--OTHER--NOT LISTED
  /// Definition:
  value394733009('394733009'),

  /// Display: Surgical specialty--OTHER-NOT LISTED
  /// Definition:
  value394732004('394732004'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const PracticeSettingCodeValueSet(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static PracticeSettingCodeValueSet fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return PracticeSettingCodeValueSet.elementOnly.withElement(element);
    }
    return PracticeSettingCodeValueSet.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  PracticeSettingCodeValueSet withElement(Element? newElement) {
    return PracticeSettingCodeValueSet.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
