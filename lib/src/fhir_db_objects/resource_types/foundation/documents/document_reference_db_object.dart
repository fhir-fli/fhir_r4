import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class DocumentReferenceDbObject {
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
  final ToOne<IdentifierDbObject> masterIdentifier =
      ToOne<IdentifierDbObject>();
  final ToMany<IdentifierDbObject> identifier = ToMany<IdentifierDbObject>();
  final ToOne<FhirCodeDbObject> status = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> docStatus = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> docStatusElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> category =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<FhirInstantDbObject> date = ToOne<FhirInstantDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<ReferenceDbObject> author = ToMany<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> authenticator = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> custodian = ToOne<ReferenceDbObject>();
  final ToMany<DocumentReferenceRelatesToDbObject> relatesTo =
      ToMany<DocumentReferenceRelatesToDbObject>();
  final ToOne<StringDbObject> description = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> securityLabel =
      ToMany<CodeableConceptDbObject>();
  final ToMany<DocumentReferenceContentDbObject> content =
      ToMany<DocumentReferenceContentDbObject>();
  final ToOne<DocumentReferenceContextDbObject> context =
      ToOne<DocumentReferenceContextDbObject>();
  DocumentReferenceDbObject({required this.id});
}

@Entity()
class DocumentReferenceRelatesToDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> target = ToOne<ReferenceDbObject>();
  DocumentReferenceRelatesToDbObject({required this.id});
}

@Entity()
class DocumentReferenceContentDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<AttachmentDbObject> attachment = ToOne<AttachmentDbObject>();
  final ToOne<CodingDbObject> format = ToOne<CodingDbObject>();
  DocumentReferenceContentDbObject({required this.id});
}

@Entity()
class DocumentReferenceContextDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToMany<ReferenceDbObject> encounter = ToMany<ReferenceDbObject>();
  final ToMany<CodeableConceptDbObject> event =
      ToMany<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<CodeableConceptDbObject> facilityType =
      ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> practiceSetting =
      ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> sourcePatientInfo = ToOne<ReferenceDbObject>();
  final ToMany<ReferenceDbObject> related = ToMany<ReferenceDbObject>();
  DocumentReferenceContextDbObject({required this.id});
}
