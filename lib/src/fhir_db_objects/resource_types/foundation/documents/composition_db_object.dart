import 'package:objectbox/objectbox.dart';
@Entity()
class CompositionDbObject {
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
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> author = ToMany<ReferenceDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> confidentiality = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> confidentialityElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CompositionAttesterDbObject> attester = ToMany<CompositionAttesterDbObject>();
  final ToOne<ReferenceDbObject> custodian = ToOne<ReferenceDbObject>();
  final ToMany<CompositionRelatesToDbObject> relatesTo = ToMany<CompositionRelatesToDbObject>();
  final ToMany<CompositionEventDbObject> event = ToMany<CompositionEventDbObject>();
  final ToMany<CompositionSectionDbObject> section = ToMany<CompositionSectionDbObject>();
  CompositionDbObject({required this.id});
}
@Entity()
class CompositionAttesterDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> time = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> party = ToOne<ReferenceDbObject>();
  CompositionAttesterDbObject({required this.id});
}
@Entity()
class CompositionRelatesToDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<IdentifierDbObject> targetIdentifier = ToOne<IdentifierDbObject>();
  final ToOne<ReferenceDbObject> targetReference = ToOne<ReferenceDbObject>();
  CompositionRelatesToDbObject({required this.id});
}
@Entity()
class CompositionEventDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToMany<CodeableConceptDbObject> code = ToMany<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<ReferenceDbObject> detail = ToMany<ReferenceDbObject>();
  CompositionEventDbObject({required this.id});
}
@Entity()
class CompositionSectionDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> author = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> focus = ToOne<ReferenceDbObject>();
  final ToOne<NarrativeDbObject> text = ToOne<NarrativeDbObject>();
  final ToOne<FhirCodeDbObject> mode = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> modeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> orderedBy = ToOne<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> entry = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> emptyReason = ToOne<CodeableConceptDbObject>();
  final ToMany<CompositionSectionDbObject> section = ToMany<CompositionSectionDbObject>();
  CompositionSectionDbObject({required this.id});
}
