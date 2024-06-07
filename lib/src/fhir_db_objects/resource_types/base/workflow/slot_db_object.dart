import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class SlotDbObject {
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
  final ToMany<CodeableConceptDbObject> serviceCategory =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> serviceType =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> specialty =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> appointmentType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> schedule = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> start = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> startElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirInstantDbObject> end = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> endElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirBooleanDbObject> overbooked = ToOne<FhirBooleanDbObject>();
  final ToOne<PrimitiveElementDbObject> overbookedElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> comment = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> commentElement =
      ToOne<PrimitiveElementDbObject>();
  SlotDbObject({required this.id});
}
