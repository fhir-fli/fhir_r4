import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class AuditEventDbObject {
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
  final ToOne<CodingDbObject> type = ToOne<CodingDbObject>();
  final ToMany<CodingDbObject> subtype = ToMany<CodingDbObject>();
  final ToOne<FhirCodeDbObject> action = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> actionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<FhirInstantDbObject> recorded = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> outcome = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> outcomeDesc = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeDescElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> purposeOfEvent =
      ToMany<CodeableConceptDbObject>();
  final ToMany<AuditEventAgentDbObject> agent =
      ToMany<AuditEventAgentDbObject>();
  final ToOne<AuditEventSourceDbObject> source =
      ToOne<AuditEventSourceDbObject>();
  final ToMany<AuditEventEntityDbObject> entity =
      ToMany<AuditEventEntityDbObject>();
  AuditEventDbObject({required this.id});
}

@Entity()
class AuditEventAgentDbObject {
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
  final ToOne<StringDbObject> altId = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> altIdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> requestor = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> requestorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> location = ToOne<ReferenceDbObject>();
  final ToMany<FhirUriDbObject> policy = ToMany<FhirUriDbObject>();
  final ToMany<PrimitiveElementDbObject> policyElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> media = ToOne<CodingDbObject>();
  final ToOne<AuditEventNetworkDbObject> network =
      ToOne<AuditEventNetworkDbObject>();
  final ToMany<CodeableConceptDbObject> purposeOfUse =
      ToMany<CodeableConceptDbObject>();
  AuditEventAgentDbObject({required this.id});
}

@Entity()
class AuditEventNetworkDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> address = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> addressElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  AuditEventNetworkDbObject({required this.id});
}

@Entity()
class AuditEventSourceDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> site = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> siteElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> observer = ToOne<ReferenceDbObject>();
  final ToMany<CodingDbObject> type = ToMany<CodingDbObject>();
  AuditEventSourceDbObject({required this.id});
}

@Entity()
class AuditEventEntityDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> what = ToOne<ReferenceDbObject>();
  final ToOne<CodingDbObject> type = ToOne<CodingDbObject>();
  final ToOne<CodingDbObject> role = ToOne<CodingDbObject>();
  final ToOne<CodingDbObject> lifecycle = ToOne<CodingDbObject>();
  final ToMany<CodingDbObject> securityLabel = ToMany<CodingDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> query =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> queryElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AuditEventDetailDbObject> detail =
      ToMany<AuditEventDetailDbObject>();
  AuditEventEntityDbObject({required this.id});
}

@Entity()
class AuditEventDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> type = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> valueString = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> valueStringElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBase64BinaryDbObject> valueBase64Binary =
      ToOne<FhirBase64BinaryDbObject>();
  final ToOne<PrimitiveElementDbObject> valueBase64BinaryElement =
      ToOne<PrimitiveElementDbObject>();
  AuditEventDetailDbObject({required this.id});
}
