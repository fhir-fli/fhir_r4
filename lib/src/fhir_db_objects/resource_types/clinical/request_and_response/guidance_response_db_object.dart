import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class GuidanceResponseDbObject {
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
  final ToOne<IdentifierDbObject> requestIdentifier =
      ToOne<IdentifierDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirUriDbObject> moduleUri = ToOne<FhirUriDbObject>();
  final ToOne<PrimitiveElementDbObject> moduleUriElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCanonicalDbObject> moduleCanonical =
      ToOne<FhirCanonicalDbObject>();
  final ToOne<PrimitiveElementDbObject> moduleCanonicalElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> moduleCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> encounter = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> occurrenceDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> occurrenceDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> performer = ToOne<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> reasonCode =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ReferenceDbObject> reasonReference = ToMany<ReferenceDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ReferenceDbObject> evaluationMessage =
      ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> outputParameters = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> result = ToOne<ReferenceDbObject>();
  final ToMany<DataRequirementDbObject> dataRequirement =
      ToMany<DataRequirementDbObject>();
  GuidanceResponseDbObject({required this.id});
}
