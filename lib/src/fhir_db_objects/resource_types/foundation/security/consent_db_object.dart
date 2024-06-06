import 'package:objectbox/objectbox.dart';
@Entity()
class ConsentDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> scope = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> patient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> dateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> performer = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> organization = ToMany<ReferenceDbObject>();
  final ToOne<AttachmentDbObject> sourceAttachment = ToOne<AttachmentDbObject>();
  final ToOne<ReferenceDbObject> sourceReference = ToOne<ReferenceDbObject>();
  final ToMany<ConsentPolicyDbObject> policy = ToMany<ConsentPolicyDbObject>();
  final ToOne<CodeableConceptDbObject> policyRule = ToOne<CodeableConceptDbObject>();
  final ToMany<ConsentVerificationDbObject> verification = ToMany<ConsentVerificationDbObject>();
  final ToOne<ConsentProvisionDbObject> provision = ToOne<ConsentProvisionDbObject>();
  ConsentDbObject({required this.id});
}
@Entity()
class ConsentPolicyDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirUriDbObject> authority = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> authorityElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUriDbObject> uri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> uriElement = ToOne<PrimitiveElementDbObject>();
  ConsentPolicyDbObject({required this.id});
}
@Entity()
class ConsentVerificationDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirBooleanDbObject> verified = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> verifiedElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> verifiedWith = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> verificationDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> verificationDateElement = ToOne<PrimitiveElementDbObject>();
  ConsentVerificationDbObject({required this.id});
}
@Entity()
class ConsentProvisionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<ConsentActorDbObject> actor = ToMany<ConsentActorDbObject>();
  final ToMany<CodeableConceptDbObject> action = ToMany<CodeableConceptDbObject>();
  final ToMany<CodingDbObject> securityLabel = ToMany<CodingDbObject>();
  final ToMany<CodingDbObject> purpose = ToMany<CodingDbObject>();
@Entity()
class List<Coding>?DbObject {
  @Id(assignable: true)
  int id;
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> dataPeriod = ToOne<PeriodDbObject>();
  final ToMany<ConsentDataDbObject> data = ToMany<ConsentDataDbObject>();
  final ToMany<ConsentProvisionDbObject> provision = ToMany<ConsentProvisionDbObject>();
  List<Coding>?DbObject({required this.id});
}
@Entity()
class ConsentActorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  ConsentActorDbObject({required this.id});
}
@Entity()
class ConsentDataDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> meaning = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> meaningElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> reference = ToOne<ReferenceDbObject>();
  ConsentDataDbObject({required this.id});
}
