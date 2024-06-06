import 'package:objectbox/objectbox.dart';
@Entity()
class AccountDbObject {
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
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> subject = ToMany<ReferenceDbObject>();
  final ToOne<PeriodDbObject> servicePeriod = ToOne<PeriodDbObject>();
  final ToMany<AccountCoverageDbObject> coverage = ToMany<AccountCoverageDbObject>();
  final ToOne<ReferenceDbObject> owner = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<AccountGuarantorDbObject> guarantor = ToMany<AccountGuarantorDbObject>();
  final ToOne<ReferenceDbObject> partOf = ToOne<ReferenceDbObject>();
  AccountDbObject({required this.id});
}
@Entity()
class AccountCoverageDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> coverage = ToOne<ReferenceDbObject>();
  final ToOne<FhirPositiveIntDbObject> priority = ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> priorityElement = ToOne<PrimitiveElementDbObject>();
  AccountCoverageDbObject({required this.id});
}
@Entity()
class AccountGuarantorDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<ReferenceDbObject> party = ToOne<ReferenceDbObject>();
  final ToOne<FhirBooleanDbObject> onHold = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> onHoldElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  AccountGuarantorDbObject({required this.id});
}
