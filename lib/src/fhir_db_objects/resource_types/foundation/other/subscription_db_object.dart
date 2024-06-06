import 'package:objectbox/objectbox.dart';
@Entity()
class SubscriptionDbObject {
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
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<ContactPointDbObject> contact = ToMany<ContactPointDbObject>();
  final ToOne<FhirInstantDbObject> end = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> reason = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> reasonElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> criteria = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> criteriaElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> error = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> errorElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<SubscriptionChannelDbObject> channel = ToOne<SubscriptionChannelDbObject>();
  SubscriptionDbObject({required this.id});
}
@Entity()
class SubscriptionChannelDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> endpoint = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> endpointElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> payload = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> payloadElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> header = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> headerElement = ToMany<PrimitiveElementDbObject>();
  SubscriptionChannelDbObject({required this.id});
}
