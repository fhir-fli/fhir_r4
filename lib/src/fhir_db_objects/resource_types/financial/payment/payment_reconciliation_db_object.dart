import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class PaymentReconciliationDbObject {
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
  final ToOne<PeriodDbObject> period = ToOne<PeriodDbObject>();
  final ToOne<FhirDateTimeDbObject> created = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> createdElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> paymentIssuer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> requestor = ToOne<ReferenceDbObject>();
  final ToOne<FhirCodeDbObject> outcome = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> outcomeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> disposition = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> dispositionElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<FhirDateDbObject> paymentDate = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> paymentDateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> paymentAmount = ToOne<MoneyDbObject>();
  final ToOne<IdentifierDbObject> paymentIdentifier =
      ToOne<IdentifierDbObject>();
  final ToMany<PaymentReconciliationDetailDbObject> detail =
      ToMany<PaymentReconciliationDetailDbObject>();
  final ToOne<CodeableConceptDbObject> formCode =
      ToOne<CodeableConceptDbObject>();
  final ToMany<PaymentReconciliationProcessNoteDbObject> processNote =
      ToMany<PaymentReconciliationProcessNoteDbObject>();
  PaymentReconciliationDbObject({required this.id});
}

@Entity()
class PaymentReconciliationDetailDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<IdentifierDbObject> identifier = ToOne<IdentifierDbObject>();
  final ToOne<IdentifierDbObject> predecessor = ToOne<IdentifierDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> request = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> submitter = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> response = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateDbObject> date = ToOne<FhirDateDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> responsible = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> payee = ToOne<ReferenceDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  PaymentReconciliationDetailDbObject({required this.id});
}

@Entity()
class PaymentReconciliationProcessNoteDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirCodeDbObject> type = ToOne<FhirCodeDbObject>();
  final ToOne<PrimitiveElementDbObject> typeElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<StringDbObject> text = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> textElement =
      ToOne<PrimitiveElementDbObject>();
  PaymentReconciliationProcessNoteDbObject({required this.id});
}