import 'package:json_annotation/json_annotation.dart';

/// This is the code representing the clinical specialty of the clinician or provider who interacted with, treated, or provided a service to/for the patient. The value set used for clinical specialty has been limited by HITSP to the value set reproduced from HITSP C80 Table 2-149 Clinical Specialty Value Set Definition.
enum PracticeSettingCodeValueSet {
  /// Display: Adult mental illness
  @JsonValue('408467006')
  value408467006,

  /// Display: Anesthetics
  @JsonValue('394577000')
  value394577000,

  /// Display: Audiological medicine
  @JsonValue('394578005')
  value394578005,

  /// Display: Blood banking and transfusion medicine
  @JsonValue('421661004')
  value421661004,

  /// Display: Burns care
  @JsonValue('408462000')
  value408462000,

  /// Display: Cardiology
  @JsonValue('394579002')
  value394579002,

  /// Display: Clinical cytogenetics and molecular genetics
  @JsonValue('394804000')
  value394804000,

  /// Display: Clinical genetics
  @JsonValue('394580004')
  value394580004,

  /// Display: Clinical hematology
  @JsonValue('394803006')
  value394803006,

  /// Display: Clinical immunology
  @JsonValue('408480009')
  value408480009,

  /// Display: Clinical microbiology
  @JsonValue('408454008')
  value408454008,

  /// Display: Clinical neuro-physiology
  @JsonValue('394809005')
  value394809005,

  /// Display: Clinical oncology
  @JsonValue('394592004')
  value394592004,

  /// Display: Clinical pharmacology
  @JsonValue('394600006')
  value394600006,

  /// Display: Clinical physiology
  @JsonValue('394601005')
  value394601005,

  /// Display: Community medicine
  @JsonValue('394581000')
  value394581000,

  /// Display: Critical care medicine
  @JsonValue('408478003')
  value408478003,

  /// Display: Dental medicine specialties
  @JsonValue('394812008')
  value394812008,

  /// Display: Dental-General dental practice
  @JsonValue('408444009')
  value408444009,

  /// Display: Dermatology
  @JsonValue('394582007')
  value394582007,

  /// Display: Diabetic medicine
  @JsonValue('408475000')
  value408475000,

  /// Display: Dive medicine
  @JsonValue('410005002')
  value410005002,

  /// Display: Endocrinology
  @JsonValue('394583002')
  value394583002,

  /// Display: Family practice
  @JsonValue('419772000')
  value419772000,

  /// Display: Gastroenterology
  @JsonValue('394584008')
  value394584008,

  /// Display: General medical practice
  @JsonValue('408443003')
  value408443003,

  /// Display: General medicine
  @JsonValue('394802001')
  value394802001,

  /// Display: General pathology
  @JsonValue('394915009')
  value394915009,

  /// Display: General practice
  @JsonValue('394814009')
  value394814009,

  /// Display: Genito-urinary medicine
  @JsonValue('394808002')
  value394808002,

  /// Display: Geriatric medicine
  @JsonValue('394811001')
  value394811001,

  /// Display: Gynecological oncology
  @JsonValue('408446006')
  value408446006,

  /// Display: Gynecology
  @JsonValue('394586005')
  value394586005,

  /// Display: Hematopathology
  @JsonValue('394916005')
  value394916005,

  /// Display: Hepatology
  @JsonValue('408472002')
  value408472002,

  /// Display: Histopathology
  @JsonValue('394597005')
  value394597005,

  /// Display: Immunopathology
  @JsonValue('394598000')
  value394598000,

  /// Display: Infectious diseases
  @JsonValue('394807007')
  value394807007,

  /// Display: Internal medicine
  @JsonValue('419192003')
  value419192003,

  /// Display: Learning disability
  @JsonValue('408468001')
  value408468001,

  /// Display: Medical oncology
  @JsonValue('394593009')
  value394593009,

  /// Display: Medical ophthalmology
  @JsonValue('394813003')
  value394813003,

  /// Display: Military medicine
  @JsonValue('410001006')
  value410001006,

  /// Display: Nephrology
  @JsonValue('394589003')
  value394589003,

  /// Display: Neurology
  @JsonValue('394591006')
  value394591006,

  /// Display: Neuropathology
  @JsonValue('394599008')
  value394599008,

  /// Display: Nuclear medicine
  @JsonValue('394649004')
  value394649004,

  /// Display: Obstetrics
  @JsonValue('408470005')
  value408470005,

  /// Display: Obstetrics and gynecology
  @JsonValue('394585009')
  value394585009,

  /// Display: Occupational medicine
  @JsonValue('394821009')
  value394821009,

  /// Display: Ophthalmic surgery
  @JsonValue('422191005')
  value422191005,

  /// Display: Ophthalmology
  @JsonValue('394594003')
  value394594003,

  /// Display: Osteopathic manipulative medicine
  @JsonValue('416304004')
  value416304004,

  /// Display: Otolaryngology
  @JsonValue('418960008')
  value418960008,

  /// Display: Pain management
  @JsonValue('394882004')
  value394882004,

  /// Display: Palliative medicine
  @JsonValue('394806003')
  value394806003,

  /// Display: Pediatric (Child and adolescent) psychiatry
  @JsonValue('394588006')
  value394588006,

  /// Display: Pediatric cardiology
  @JsonValue('408459003')
  value408459003,

  /// Display: Pediatric dentistry
  @JsonValue('394607009')
  value394607009,

  /// Display: Pediatric endocrinology
  @JsonValue('419610006')
  value419610006,

  /// Display: Pediatric gastroenterology
  @JsonValue('418058008')
  value418058008,

  /// Display: Pediatric genetics
  @JsonValue('420208008')
  value420208008,

  /// Display: Pediatric hematology
  @JsonValue('418652005')
  value418652005,

  /// Display: Pediatric immunology
  @JsonValue('418535003')
  value418535003,

  /// Display: Pediatric infectious diseases
  @JsonValue('418862001')
  value418862001,

  /// Display: Pediatric nephrology
  @JsonValue('419365004')
  value419365004,

  /// Display: Pediatric oncology
  @JsonValue('418002000')
  value418002000,

  /// Display: Pediatric ophthalmology
  @JsonValue('419983000')
  value419983000,

  /// Display: Pediatric pulmonology
  @JsonValue('419170002')
  value419170002,

  /// Display: Pediatric rheumatology
  @JsonValue('419472004')
  value419472004,

  /// Display: Pediatric surgery
  @JsonValue('394539006')
  value394539006,

  /// Display: Pediatric surgery-bone marrow transplantation
  @JsonValue('420112009')
  value420112009,

  /// Display: Preventive medicine
  @JsonValue('409968004')
  value409968004,

  /// Display: Psychiatry
  @JsonValue('394587001')
  value394587001,

  /// Display: Psychotherapy
  @JsonValue('394913002')
  value394913002,

  /// Display: Public health medicine
  @JsonValue('408440000')
  value408440000,

  /// Display: Pulmonary medicine
  @JsonValue('418112009')
  value418112009,

  /// Display: Radiation oncology
  @JsonValue('419815003')
  value419815003,

  /// Display: Radiology
  @JsonValue('394914008')
  value394914008,

  /// Display: Radiology-Interventional radiology
  @JsonValue('408455009')
  value408455009,

  /// Display: Rehabilitation
  @JsonValue('394602003')
  value394602003,

  /// Display: Respite care
  @JsonValue('408447002')
  value408447002,

  /// Display: Rheumatology
  @JsonValue('394810000')
  value394810000,

  /// Display: Sleep studies
  @JsonValue('408450004')
  value408450004,

  /// Display: Surgery-Bone and marrow transplantation
  @JsonValue('408476004')
  value408476004,

  /// Display: Surgery-Breast surgery
  @JsonValue('408469009')
  value408469009,

  /// Display: Surgery-Cardiac surgery
  @JsonValue('408466002')
  value408466002,

  /// Display: Surgery-Cardiothoracic transplantation
  @JsonValue('408471009')
  value408471009,

  /// Display: Surgery-Colorectal surgery
  @JsonValue('408464004')
  value408464004,

  /// Display: Surgery-Dental-Endodontics
  @JsonValue('408441001')
  value408441001,

  /// Display: Surgery-Dental-Oral and maxillofacial surgery
  @JsonValue('408465003')
  value408465003,

  /// Display: Surgery-Dental-Oral surgery
  @JsonValue('394605001')
  value394605001,

  /// Display: Surgery-Dental-Orthodontics
  @JsonValue('394608004')
  value394608004,

  /// Display: Surgery-Dental-Periodontal surgery
  @JsonValue('408461007')
  value408461007,

  /// Display: Surgery-Dental-Prosthetic dentistry (Prosthodontics)
  @JsonValue('408460008')
  value408460008,

  /// Display: Surgery-Dentistry-Restorative dentistry
  @JsonValue('394606000')
  value394606000,

  /// Display: Surgery-Dentistry--surgical
  @JsonValue('408449004')
  value408449004,

  /// Display: Surgery-Dermatologic surgery
  @JsonValue('418018006')
  value418018006,

  /// Display: Surgery-Ear, nose and throat surgery
  @JsonValue('394604002')
  value394604002,

  /// Display: Surgery-general
  @JsonValue('394609007')
  value394609007,

  /// Display: Surgery-Hepatobiliary and pancreatic surgery
  @JsonValue('408474001')
  value408474001,

  /// Display: Surgery-Neurosurgery
  @JsonValue('394610002')
  value394610002,

  /// Display: Surgery-Plastic surgery
  @JsonValue('394611003')
  value394611003,

  /// Display: Surgery-Transplantation surgery
  @JsonValue('408477008')
  value408477008,

  /// Display: Surgery-Trauma and orthopedics
  @JsonValue('394801008')
  value394801008,

  /// Display: Surgery-Vascular
  @JsonValue('408463005')
  value408463005,

  /// Display: Surgical oncology
  @JsonValue('419321007')
  value419321007,

  /// Display: Surgical-Accident & emergency
  @JsonValue('394576009')
  value394576009,

  /// Display: Thoracic medicine
  @JsonValue('394590007')
  value394590007,

  /// Display: Toxicology
  @JsonValue('409967009')
  value409967009,

  /// Display: Tropical medicine
  @JsonValue('408448007')
  value408448007,

  /// Display: Urological oncology
  @JsonValue('419043006')
  value419043006,

  /// Display: Urology
  @JsonValue('394612005')
  value394612005,

  /// Display: Medical specialty--OTHER--NOT LISTED
  @JsonValue('394733009')
  value394733009,

  /// Display: Surgical specialty--OTHER-NOT LISTED
  @JsonValue('394732004')
  value394732004,
  ;

  @override
  String toString() {
    switch (this) {
      case value408467006:
        return '408467006';
      case value394577000:
        return '394577000';
      case value394578005:
        return '394578005';
      case value421661004:
        return '421661004';
      case value408462000:
        return '408462000';
      case value394579002:
        return '394579002';
      case value394804000:
        return '394804000';
      case value394580004:
        return '394580004';
      case value394803006:
        return '394803006';
      case value408480009:
        return '408480009';
      case value408454008:
        return '408454008';
      case value394809005:
        return '394809005';
      case value394592004:
        return '394592004';
      case value394600006:
        return '394600006';
      case value394601005:
        return '394601005';
      case value394581000:
        return '394581000';
      case value408478003:
        return '408478003';
      case value394812008:
        return '394812008';
      case value408444009:
        return '408444009';
      case value394582007:
        return '394582007';
      case value408475000:
        return '408475000';
      case value410005002:
        return '410005002';
      case value394583002:
        return '394583002';
      case value419772000:
        return '419772000';
      case value394584008:
        return '394584008';
      case value408443003:
        return '408443003';
      case value394802001:
        return '394802001';
      case value394915009:
        return '394915009';
      case value394814009:
        return '394814009';
      case value394808002:
        return '394808002';
      case value394811001:
        return '394811001';
      case value408446006:
        return '408446006';
      case value394586005:
        return '394586005';
      case value394916005:
        return '394916005';
      case value408472002:
        return '408472002';
      case value394597005:
        return '394597005';
      case value394598000:
        return '394598000';
      case value394807007:
        return '394807007';
      case value419192003:
        return '419192003';
      case value408468001:
        return '408468001';
      case value394593009:
        return '394593009';
      case value394813003:
        return '394813003';
      case value410001006:
        return '410001006';
      case value394589003:
        return '394589003';
      case value394591006:
        return '394591006';
      case value394599008:
        return '394599008';
      case value394649004:
        return '394649004';
      case value408470005:
        return '408470005';
      case value394585009:
        return '394585009';
      case value394821009:
        return '394821009';
      case value422191005:
        return '422191005';
      case value394594003:
        return '394594003';
      case value416304004:
        return '416304004';
      case value418960008:
        return '418960008';
      case value394882004:
        return '394882004';
      case value394806003:
        return '394806003';
      case value394588006:
        return '394588006';
      case value408459003:
        return '408459003';
      case value394607009:
        return '394607009';
      case value419610006:
        return '419610006';
      case value418058008:
        return '418058008';
      case value420208008:
        return '420208008';
      case value418652005:
        return '418652005';
      case value418535003:
        return '418535003';
      case value418862001:
        return '418862001';
      case value419365004:
        return '419365004';
      case value418002000:
        return '418002000';
      case value419983000:
        return '419983000';
      case value419170002:
        return '419170002';
      case value419472004:
        return '419472004';
      case value394539006:
        return '394539006';
      case value420112009:
        return '420112009';
      case value409968004:
        return '409968004';
      case value394587001:
        return '394587001';
      case value394913002:
        return '394913002';
      case value408440000:
        return '408440000';
      case value418112009:
        return '418112009';
      case value419815003:
        return '419815003';
      case value394914008:
        return '394914008';
      case value408455009:
        return '408455009';
      case value394602003:
        return '394602003';
      case value408447002:
        return '408447002';
      case value394810000:
        return '394810000';
      case value408450004:
        return '408450004';
      case value408476004:
        return '408476004';
      case value408469009:
        return '408469009';
      case value408466002:
        return '408466002';
      case value408471009:
        return '408471009';
      case value408464004:
        return '408464004';
      case value408441001:
        return '408441001';
      case value408465003:
        return '408465003';
      case value394605001:
        return '394605001';
      case value394608004:
        return '394608004';
      case value408461007:
        return '408461007';
      case value408460008:
        return '408460008';
      case value394606000:
        return '394606000';
      case value408449004:
        return '408449004';
      case value418018006:
        return '418018006';
      case value394604002:
        return '394604002';
      case value394609007:
        return '394609007';
      case value408474001:
        return '408474001';
      case value394610002:
        return '394610002';
      case value394611003:
        return '394611003';
      case value408477008:
        return '408477008';
      case value394801008:
        return '394801008';
      case value408463005:
        return '408463005';
      case value419321007:
        return '419321007';
      case value394576009:
        return '394576009';
      case value394590007:
        return '394590007';
      case value409967009:
        return '409967009';
      case value408448007:
        return '408448007';
      case value419043006:
        return '419043006';
      case value394612005:
        return '394612005';
      case value394733009:
        return '394733009';
      case value394732004:
        return '394732004';
    }
  }

  String toJson() => toString();
  static PracticeSettingCodeValueSet fromString(String str) {
    switch (str) {
      case '408467006':
        return PracticeSettingCodeValueSet.value408467006;
      case '394577000':
        return PracticeSettingCodeValueSet.value394577000;
      case '394578005':
        return PracticeSettingCodeValueSet.value394578005;
      case '421661004':
        return PracticeSettingCodeValueSet.value421661004;
      case '408462000':
        return PracticeSettingCodeValueSet.value408462000;
      case '394579002':
        return PracticeSettingCodeValueSet.value394579002;
      case '394804000':
        return PracticeSettingCodeValueSet.value394804000;
      case '394580004':
        return PracticeSettingCodeValueSet.value394580004;
      case '394803006':
        return PracticeSettingCodeValueSet.value394803006;
      case '408480009':
        return PracticeSettingCodeValueSet.value408480009;
      case '408454008':
        return PracticeSettingCodeValueSet.value408454008;
      case '394809005':
        return PracticeSettingCodeValueSet.value394809005;
      case '394592004':
        return PracticeSettingCodeValueSet.value394592004;
      case '394600006':
        return PracticeSettingCodeValueSet.value394600006;
      case '394601005':
        return PracticeSettingCodeValueSet.value394601005;
      case '394581000':
        return PracticeSettingCodeValueSet.value394581000;
      case '408478003':
        return PracticeSettingCodeValueSet.value408478003;
      case '394812008':
        return PracticeSettingCodeValueSet.value394812008;
      case '408444009':
        return PracticeSettingCodeValueSet.value408444009;
      case '394582007':
        return PracticeSettingCodeValueSet.value394582007;
      case '408475000':
        return PracticeSettingCodeValueSet.value408475000;
      case '410005002':
        return PracticeSettingCodeValueSet.value410005002;
      case '394583002':
        return PracticeSettingCodeValueSet.value394583002;
      case '419772000':
        return PracticeSettingCodeValueSet.value419772000;
      case '394584008':
        return PracticeSettingCodeValueSet.value394584008;
      case '408443003':
        return PracticeSettingCodeValueSet.value408443003;
      case '394802001':
        return PracticeSettingCodeValueSet.value394802001;
      case '394915009':
        return PracticeSettingCodeValueSet.value394915009;
      case '394814009':
        return PracticeSettingCodeValueSet.value394814009;
      case '394808002':
        return PracticeSettingCodeValueSet.value394808002;
      case '394811001':
        return PracticeSettingCodeValueSet.value394811001;
      case '408446006':
        return PracticeSettingCodeValueSet.value408446006;
      case '394586005':
        return PracticeSettingCodeValueSet.value394586005;
      case '394916005':
        return PracticeSettingCodeValueSet.value394916005;
      case '408472002':
        return PracticeSettingCodeValueSet.value408472002;
      case '394597005':
        return PracticeSettingCodeValueSet.value394597005;
      case '394598000':
        return PracticeSettingCodeValueSet.value394598000;
      case '394807007':
        return PracticeSettingCodeValueSet.value394807007;
      case '419192003':
        return PracticeSettingCodeValueSet.value419192003;
      case '408468001':
        return PracticeSettingCodeValueSet.value408468001;
      case '394593009':
        return PracticeSettingCodeValueSet.value394593009;
      case '394813003':
        return PracticeSettingCodeValueSet.value394813003;
      case '410001006':
        return PracticeSettingCodeValueSet.value410001006;
      case '394589003':
        return PracticeSettingCodeValueSet.value394589003;
      case '394591006':
        return PracticeSettingCodeValueSet.value394591006;
      case '394599008':
        return PracticeSettingCodeValueSet.value394599008;
      case '394649004':
        return PracticeSettingCodeValueSet.value394649004;
      case '408470005':
        return PracticeSettingCodeValueSet.value408470005;
      case '394585009':
        return PracticeSettingCodeValueSet.value394585009;
      case '394821009':
        return PracticeSettingCodeValueSet.value394821009;
      case '422191005':
        return PracticeSettingCodeValueSet.value422191005;
      case '394594003':
        return PracticeSettingCodeValueSet.value394594003;
      case '416304004':
        return PracticeSettingCodeValueSet.value416304004;
      case '418960008':
        return PracticeSettingCodeValueSet.value418960008;
      case '394882004':
        return PracticeSettingCodeValueSet.value394882004;
      case '394806003':
        return PracticeSettingCodeValueSet.value394806003;
      case '394588006':
        return PracticeSettingCodeValueSet.value394588006;
      case '408459003':
        return PracticeSettingCodeValueSet.value408459003;
      case '394607009':
        return PracticeSettingCodeValueSet.value394607009;
      case '419610006':
        return PracticeSettingCodeValueSet.value419610006;
      case '418058008':
        return PracticeSettingCodeValueSet.value418058008;
      case '420208008':
        return PracticeSettingCodeValueSet.value420208008;
      case '418652005':
        return PracticeSettingCodeValueSet.value418652005;
      case '418535003':
        return PracticeSettingCodeValueSet.value418535003;
      case '418862001':
        return PracticeSettingCodeValueSet.value418862001;
      case '419365004':
        return PracticeSettingCodeValueSet.value419365004;
      case '418002000':
        return PracticeSettingCodeValueSet.value418002000;
      case '419983000':
        return PracticeSettingCodeValueSet.value419983000;
      case '419170002':
        return PracticeSettingCodeValueSet.value419170002;
      case '419472004':
        return PracticeSettingCodeValueSet.value419472004;
      case '394539006':
        return PracticeSettingCodeValueSet.value394539006;
      case '420112009':
        return PracticeSettingCodeValueSet.value420112009;
      case '409968004':
        return PracticeSettingCodeValueSet.value409968004;
      case '394587001':
        return PracticeSettingCodeValueSet.value394587001;
      case '394913002':
        return PracticeSettingCodeValueSet.value394913002;
      case '408440000':
        return PracticeSettingCodeValueSet.value408440000;
      case '418112009':
        return PracticeSettingCodeValueSet.value418112009;
      case '419815003':
        return PracticeSettingCodeValueSet.value419815003;
      case '394914008':
        return PracticeSettingCodeValueSet.value394914008;
      case '408455009':
        return PracticeSettingCodeValueSet.value408455009;
      case '394602003':
        return PracticeSettingCodeValueSet.value394602003;
      case '408447002':
        return PracticeSettingCodeValueSet.value408447002;
      case '394810000':
        return PracticeSettingCodeValueSet.value394810000;
      case '408450004':
        return PracticeSettingCodeValueSet.value408450004;
      case '408476004':
        return PracticeSettingCodeValueSet.value408476004;
      case '408469009':
        return PracticeSettingCodeValueSet.value408469009;
      case '408466002':
        return PracticeSettingCodeValueSet.value408466002;
      case '408471009':
        return PracticeSettingCodeValueSet.value408471009;
      case '408464004':
        return PracticeSettingCodeValueSet.value408464004;
      case '408441001':
        return PracticeSettingCodeValueSet.value408441001;
      case '408465003':
        return PracticeSettingCodeValueSet.value408465003;
      case '394605001':
        return PracticeSettingCodeValueSet.value394605001;
      case '394608004':
        return PracticeSettingCodeValueSet.value394608004;
      case '408461007':
        return PracticeSettingCodeValueSet.value408461007;
      case '408460008':
        return PracticeSettingCodeValueSet.value408460008;
      case '394606000':
        return PracticeSettingCodeValueSet.value394606000;
      case '408449004':
        return PracticeSettingCodeValueSet.value408449004;
      case '418018006':
        return PracticeSettingCodeValueSet.value418018006;
      case '394604002':
        return PracticeSettingCodeValueSet.value394604002;
      case '394609007':
        return PracticeSettingCodeValueSet.value394609007;
      case '408474001':
        return PracticeSettingCodeValueSet.value408474001;
      case '394610002':
        return PracticeSettingCodeValueSet.value394610002;
      case '394611003':
        return PracticeSettingCodeValueSet.value394611003;
      case '408477008':
        return PracticeSettingCodeValueSet.value408477008;
      case '394801008':
        return PracticeSettingCodeValueSet.value394801008;
      case '408463005':
        return PracticeSettingCodeValueSet.value408463005;
      case '419321007':
        return PracticeSettingCodeValueSet.value419321007;
      case '394576009':
        return PracticeSettingCodeValueSet.value394576009;
      case '394590007':
        return PracticeSettingCodeValueSet.value394590007;
      case '409967009':
        return PracticeSettingCodeValueSet.value409967009;
      case '408448007':
        return PracticeSettingCodeValueSet.value408448007;
      case '419043006':
        return PracticeSettingCodeValueSet.value419043006;
      case '394612005':
        return PracticeSettingCodeValueSet.value394612005;
      case '394733009':
        return PracticeSettingCodeValueSet.value394733009;
      case '394732004':
        return PracticeSettingCodeValueSet.value394732004;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static PracticeSettingCodeValueSet fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
