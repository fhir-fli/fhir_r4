import 'package:objectbox/objectbox.dart';
@Entity()
class SubscriptionStatusDbObject {
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
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInteger64DbObject> eventsSinceSubscriptionStart = ToOne<FhirInteger64DbObject>();
  final ToOne<PrimitiveElementDbObject> eventsSinceSubscriptionStartElement = ToOne<PrimitiveElementDbObject>();
  final ToMany<SubscriptionStatusNotificationEventDbObject> notificationEvent = ToMany<SubscriptionStatusNotificationEventDbObject>();
  final ToOne<ReferenceDbObject> subscription = ToOne<ReferenceDbObject>();
  final ToOne<FhirCanonicalDbObject> topic = ToOne<FhirCanonicalDbObject>();
  final ToMany<CodeableConceptDbObject> error = ToMany<CodeableConceptDbObject>();
  SubscriptionStatusDbObject({required this.id});
}
@Entity()
class SubscriptionStatusNotificationEventDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ = ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension = ToMany<FhirExtensionDbObject>();
  final ToOne<FhirInteger64DbObject> eventNumber = ToOne<FhirInteger64DbObject>();
  final ToOne<PrimitiveElementDbObject> eventNumberElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> timestamp = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> timestampElement = ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> focus = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> additionalContext = ToMany<ReferenceDbObject>();
  SubscriptionStatusNotificationEventDbObject({required this.id});
}
