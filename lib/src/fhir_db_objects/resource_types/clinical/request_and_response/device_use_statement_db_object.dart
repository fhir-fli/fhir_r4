import 'package:objectbox/objectbox.dart';
@Entity()
class DeviceUseStatementDbObject {
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
  final ToMany<ReferenceDbObject> basedOn = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> derivedFrom = ToMany<ReferenceDbObject>();
  final ToOne<TimingDbObject> timingTiming = ToOne<TimingDbObject>();
  final ToOne<PeriodDbObject> timingPeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> timingDateTime = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> timingDateTimeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateTimeDbObject> recordedOn = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> recordedOnElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> source = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> device = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode = ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> bodySite = ToOne<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  DeviceUseStatementDbObject({required this.id});
}
