import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class OperationOutcomeDbObject {
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
  final ToMany<OperationOutcomeIssueDbObject> issue =
      ToMany<OperationOutcomeIssueDbObject>();
  OperationOutcomeDbObject({required this.id});
}

@Entity()
class OperationOutcomeIssueDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> severity = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> severityElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirCodeDbObject> code = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> codeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> details =
      ToOne<CodeableConceptDbObject>();
  final ToOne<StringDbObject> diagnostics = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> diagnosticsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> location = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> locationElement =
      ToMany<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> expression = ToOne<StringDbObject>();
  final ToMany<PrimitiveElementDbObject> expressionElement =
      ToMany<PrimitiveElementDbObject>();
  OperationOutcomeIssueDbObject({required this.id});
}
