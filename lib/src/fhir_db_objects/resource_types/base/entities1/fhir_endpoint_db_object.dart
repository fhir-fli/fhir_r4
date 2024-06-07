import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class FhirEndpointDbObject {
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
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodingDbObject> connectionType = ToOne<CodingDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> managingOrganization =
      ToOne<ReferenceDbObject>();
  final ToMany<ContactPointDbObject> contact = ToMany<ContactPointDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToMany<CodeableConceptDbObject> payloadType =
      ToMany<CodeableConceptDbObject>();
  final ToMany<FhirCodeDbObject> payloadMimeType = ToMany<FhirCodeDbObject>();
  final ToMany<PrimitiveElementDbObject> payloadMimeTypeElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<FhirUrlDbObject> address = ToOne<FhirUrlDbObject>();
  final ToOne<PrimitiveElementDbObject> addressElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> header = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> headerElement =
      ToMany<PrimitiveElementDbObject>();
  FhirEndpointDbObject({required this.id});
}
