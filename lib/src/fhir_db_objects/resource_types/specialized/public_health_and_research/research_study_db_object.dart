import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class ResearchStudyDbObject {
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
  final ToOne<StringDbObject> title = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> titleElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> protocol = ToMany<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> partOf = ToMany<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> primaryPurposeType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> phase = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> focus =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> condition =
      ToMany<CodeableConceptDbObject>();
  final ToMany<ContactDetailDbObject> contact = ToMany<ContactDetailDbObject>();
  final ToMany<RelatedArtifactDbObject> relatedArtifact =
      ToMany<RelatedArtifactDbObject>();
  final ToMany<CodeableConceptDbObject> keyword =
      ToMany<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> location =
      ToMany<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> enrollment = ToMany<ReferenceDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<ReferenceDbObject> sponsor = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> principalInvestigator =
      ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> site = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> reasonStopped =
      ToOne<CodeableConceptDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  final ToMany<ResearchStudyArmDbObject> arm =
      ToMany<ResearchStudyArmDbObject>();
  final ToMany<ResearchStudyObjectiveDbObject> objective =
      ToMany<ResearchStudyObjectiveDbObject>();
  ResearchStudyDbObject({required this.id});
}

@Entity()
class ResearchStudyArmDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  ResearchStudyArmDbObject({required this.id});
}

@Entity()
class ResearchStudyObjectiveDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<StringDbObject> name = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> nameElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  ResearchStudyObjectiveDbObject({required this.id});
}
