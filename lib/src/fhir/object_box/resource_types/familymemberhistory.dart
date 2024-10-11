import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class FamilyMemberHistory extends Resource {
  FamilyMemberHistory({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    required this.status,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.name,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.bornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.estimatedAge,
    this.deceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.deceasedString,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  List<String>? instantiatesCanonical;
  List<String>? instantiatesUri;
  String status;
  ToOne<CodeableConcept>? dataAbsentReason = ToOne<CodeableConcept>();
  ToOne<Reference> patient = ToOne<Reference>();
  String? date;
  String? name;
  ToOne<CodeableConcept> relationship = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? sex = ToOne<CodeableConcept>();
  ToOne<Period>? bornPeriod = ToOne<Period>();
  String? bornDate;
  String? bornString;
  ToOne<Age>? ageAge = ToOne<Age>();
  ToOne<Range>? ageRange = ToOne<Range>();
  String? ageString;
  bool? estimatedAge;
  bool? deceasedBoolean;
  ToOne<Age>? deceasedAge = ToOne<Age>();
  ToOne<Range>? deceasedRange = ToOne<Range>();
  String? deceasedDate;
  String? deceasedString;
  ToMany<CodeableConcept>? reasonCode = ToMany<CodeableConcept>();
  ToMany<Reference>? reasonReference = ToMany<Reference>();
  ToMany<Annotation>? note = ToMany<Annotation>();
  ToMany<FamilyMemberHistoryCondition>? condition =
      ToMany<FamilyMemberHistoryCondition>();
}

@Entity()
class FamilyMemberHistoryCondition {
  FamilyMemberHistoryCondition({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.code,
    this.outcome,
    this.contributedToDeath,
    this.onsetAge,
    this.onsetRange,
    this.onsetPeriod,
    this.onsetString,
    this.note,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToOne<CodeableConcept> code = ToOne<CodeableConcept>();
  ToOne<CodeableConcept>? outcome = ToOne<CodeableConcept>();
  bool? contributedToDeath;
  ToOne<Age>? onsetAge = ToOne<Age>();
  ToOne<Range>? onsetRange = ToOne<Range>();
  ToOne<Period>? onsetPeriod = ToOne<Period>();
  String? onsetString;
  ToMany<Annotation>? note = ToMany<Annotation>();
}
