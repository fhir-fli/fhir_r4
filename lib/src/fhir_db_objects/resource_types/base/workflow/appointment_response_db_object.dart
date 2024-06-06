import 'package:objectbox/objectbox.dart';
@Entity()
class AppointmentResponseDbObject {
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
  final ToOne<ReferenceDbObject> appointment = ToOne<ReferenceDbObject>();
  final ToOne<FhirInstantDbObject> start = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> end = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> participantType = ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> participantStatus = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> participantStatusElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement = ToOne<PrimitiveElementDbObject>();
  AppointmentResponseDbObject({required this.id});
}
