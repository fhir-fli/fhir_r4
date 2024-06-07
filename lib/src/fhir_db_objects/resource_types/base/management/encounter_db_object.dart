import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';
@Entity()
class EncounterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<EncounterStatusHistoryDbObject> statusHistory = ToMany<EncounterStatusHistoryDbObject>();
@Entity()
class requiredDbObject {
  @Id(assignable: true)
  int id;
@Entity()
class classHistory,DbObject {
  @Id(assignable: true)
  int id;
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> serviceType = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> priority = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> episodeOfCare = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToMany<EncounterParticipantDbObject> participant = ToMany<EncounterParticipantDbObject>();
  final ToMany<ReferenceDbObject> appointment = ToMany<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<FhirDurationDbObject> length = ToOne<FhirDurationDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<EncounterDiagnosisDbObject> diagnosis = ToMany<EncounterDiagnosisDbObject>();
  final ToMany<ReferenceDbObject> account = ToMany<ReferenceDbObject>();
  final ToOne<EncounterHospitalizationDbObject> hospitalization = ToOne<EncounterHospitalizationDbObject>();
  final ToMany<EncounterLocationDbObject> location = ToMany<EncounterLocationDbObject>();
  final ToOne<ReferenceDbObject> serviceProvider = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> partOf = ToOne<ReferenceDbObject>();
  classHistory,DbObject({required this.id});
}
@Entity()
class EncounterStatusHistoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  EncounterStatusHistoryDbObject({required this.id});
}
@Entity()
class EncounterClassHistoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
@Entity()
class requiredDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  requiredDbObject({required this.id});
}
@Entity()
class EncounterParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> type = ToMany<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> individual = ToOne<ReferenceDbObject>();
  EncounterParticipantDbObject({required this.id});
}
@Entity()
class EncounterDiagnosisDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> condition = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> use = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirPositiveIntDbObject> rank = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> rankElement = ToOne<PrimitiveElementDbObject>();
  EncounterDiagnosisDbObject({required this.id});
}
@Entity()
class EncounterHospitalizationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> preAdmissionIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> origin = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> admitSource = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> reAdmission = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> dietPreference = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialCourtesy = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialArrangement = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> destination = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> dischargeDisposition = ToOne<CodeableConceptDbObject>();
  EncounterHospitalizationDbObject({required this.id});
}
@Entity()
class EncounterLocationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> physicalType = ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  EncounterLocationDbObject({required this.id});
}
