import 'package:objectbox/objectbox.dart';
@Entity()
class ResearchSubjectDbObject {
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
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> study = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> individual = ToOne<ReferenceDbObject>();
  final ToOne<StringDbObject> assignedArm = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> assignedArmElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> actualArm = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> actualArmElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> consent = ToOne<ReferenceDbObject>();
  ResearchSubjectDbObject({required this.id});
}
