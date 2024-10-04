import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class FamilyMemberHistory {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final FhirCode status;
  final PrimitiveElement Status;
  final CodeableConcept dataAbsentReason;
  final Reference patient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept relationship;
  final CodeableConcept sex;
  final Period bornPeriod;
  final String bornDate;
  final PrimitiveElement BornDate;
  final String bornString;
  final PrimitiveElement BornString;
  final Age ageAge;
  final Range ageRange;
  final String ageString;
  final PrimitiveElement AgeString;
  final FhirBoolean estimatedAge;
  final PrimitiveElement EstimatedAge;
  final bool deceasedBoolean;
  final PrimitiveElement DeceasedBoolean;
  final Age deceasedAge;
  final Range deceasedRange;
  final String deceasedDate;
  final PrimitiveElement DeceasedDate;
  final String deceasedString;
  final PrimitiveElement DeceasedString;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<FamilyMemberHistoryCondition> condition;
  const FamilyMemberHistory({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.instantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.status,
    this.Status,
    this.dataAbsentReason,
    required this.patient,
    this.date,
    this.Date,
    this.name,
    this.Name,
    required this.relationship,
    this.sex,
    this.bornPeriod,
    this.bornDate,
    this.BornDate,
    this.bornString,
    this.BornString,
    this.ageAge,
    this.ageRange,
    this.ageString,
    this.AgeString,
    this.estimatedAge,
    this.EstimatedAge,
    this.deceasedBoolean,
    this.DeceasedBoolean,
    this.deceasedAge,
    this.deceasedRange,
    this.deceasedDate,
    this.DeceasedDate,
    this.deceasedString,
    this.DeceasedString,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.condition,
  });
}
