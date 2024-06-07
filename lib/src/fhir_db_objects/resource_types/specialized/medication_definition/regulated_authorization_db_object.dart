import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class RegulatedAuthorizationDbObject {
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
  final ToMany<ReferenceDbObject> subject = ToMany<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirMarkdownDbObject> description = ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> descriptionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<CodeableConceptDbObject> region =
      ToMany<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status =
      ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDateTimeDbObject> statusDate = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> statusDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<PeriodDbObject> validityPeriod = ToOne<PeriodDbObject>();
  final ToOne<CodeableReferenceDbObject> indication =
      ToOne<CodeableReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> intendedUse =
      ToOne<CodeableConceptDbObject>();
  final ToMany<CodeableConceptDbObject> basis =
      ToMany<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> holder = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> regulator = ToOne<ReferenceDbObject>();
  final ToOne<RegulatedAuthorizationCaseDbObject> case_ =
      ToOne<RegulatedAuthorizationCaseDbObject>();
  RegulatedAuthorizationDbObject({required this.id});
}

@Entity()
class RegulatedAuthorizationCaseDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<CodeableConceptDbObject> status =
      ToOne<CodeableConceptDbObject>();
  final ToOne<PeriodDbObject> datePeriod = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> dateDateTime =
      ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateDateTimeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<RegulatedAuthorizationCaseDbObject> application =
      ToMany<RegulatedAuthorizationCaseDbObject>();
  RegulatedAuthorizationCaseDbObject({required this.id});
}
