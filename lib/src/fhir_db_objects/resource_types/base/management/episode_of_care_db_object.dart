import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class EpisodeOfCareDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> resourceType = ToOne<StringDbObject>();
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToOne<FhirMetaDbObject> meta = ToOne<FhirMetaDbObject>();
  final ToOne<FhirUriDbObject> implicitRules = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> implicitRulesElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> language = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> languageElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToMany<ResourceDbObject> contained = ToMany<ResourceDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<EpisodeOfCareStatusHistoryDbObject> statusHistory =
      ToMany<EpisodeOfCareStatusHistoryDbObject>();
  final ToMany<CodeableConceptDbObject> type =
      ToMany<CodeableConceptDbObject>();
  final ToMany<EpisodeOfCareDiagnosisDbObject> diagnosis =
      ToMany<EpisodeOfCareDiagnosisDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> managingOrganization =
      ToOne<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<ReferenceDbObject> referralRequest = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> careManager = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> team = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> account = ToMany<ReferenceDbObject>();
  EpisodeOfCareDbObject({required this.id});
}

@Entity()
class EpisodeOfCareStatusHistoryDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  EpisodeOfCareStatusHistoryDbObject({required this.id});
}

@Entity()
class EpisodeOfCareDiagnosisDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> condition = ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirPositiveIntDbObject> rank = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> rankElement =
      ToOne<PrimitiveElementDbObject>();
  EpisodeOfCareDiagnosisDbObject({required this.id});
}
