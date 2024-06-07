import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ProvenanceDbObject {
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
  final ToMany<ReferenceDbObject> target = ToMany<ReferenceDbObject>();
  final ToOne<PeriodDbObject> occurredPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> occurredDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurredDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> recorded = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<FhirUriDbObject> policy = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> policyElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reason =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> activity =
      ToOne<CodeableConceptDbObject>();
  final ToMany<ProvenanceAgentDbObject> agent =
      ToMany<ProvenanceAgentDbObject>();
  final ToMany<ProvenanceEntityDbObject> entity =
      ToMany<ProvenanceEntityDbObject>();
  final ToMany<SignatureDbObject> signature = ToMany<SignatureDbObject>();
  ProvenanceDbObject({required this.id});
}

@Entity()
class ProvenanceAgentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> role =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> who = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> onBehalfOf = ToOne<ReferenceDbObject>();
  ProvenanceAgentDbObject({required this.id});
}

@Entity()
class ProvenanceEntityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> role = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> roleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> what = ToOne<ReferenceDbObject>();
  final ToMany<ProvenanceAgentDbObject> agent =
      ToMany<ProvenanceAgentDbObject>();
  ProvenanceEntityDbObject({required this.id});
}
