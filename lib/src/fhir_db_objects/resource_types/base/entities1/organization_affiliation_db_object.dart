import 'package:objectbox/objectbox.dart';
@Entity()
class OrganizationAffiliationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<R4ResourceTypeDbObject> resourceType = ToOne<R4ResourceTypeDbObject>();
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
  final ToOne<FhirBooleanDbObject> active = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> activeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> organization = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> participatingOrganization = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> network = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> location = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> healthcareService = ToMany<ReferenceDbObject>();
  final ToMany<ContactPointDbObject> telecom = ToMany<ContactPointDbObject>();
  final ToMany<ReferenceDbObject> endpoint = ToMany<ReferenceDbObject>();
  OrganizationAffiliationDbObject({required this.id});
}
