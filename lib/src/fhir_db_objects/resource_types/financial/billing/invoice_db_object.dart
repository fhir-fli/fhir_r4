import 'package:objectbox/objectbox.dart';

import '../../../fhir_db_objects.dart';

@Entity()
class InvoiceDbObject {
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
  final ToOne<StringDbObject> cancelledReason = ToOne<StringDbObject>();
  final ToOne<PrimitiveElementDbObject> cancelledReasonElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<CodeableConceptDbObject> type = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> subject = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> recipient = ToOne<ReferenceDbObject>();
  final ToOne<FhirDateTimeDbObject> date = ToOne<FhirDateTimeDbObject>();
  final ToOne<PrimitiveElementDbObject> dateElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<InvoiceParticipantDbObject> participant =
      ToMany<InvoiceParticipantDbObject>();
  final ToOne<ReferenceDbObject> issuer = ToOne<ReferenceDbObject>();
  final ToOne<ReferenceDbObject> account = ToOne<ReferenceDbObject>();
  final ToMany<InvoiceLineItemDbObject> lineItem =
      ToMany<InvoiceLineItemDbObject>();
  final ToMany<InvoicePriceComponentDbObject> totalPriceComponent =
      ToMany<InvoicePriceComponentDbObject>();
  final ToOne<MoneyDbObject> totalNet = ToOne<MoneyDbObject>();
  final ToOne<MoneyDbObject> totalGross = ToOne<MoneyDbObject>();
  final ToOne<FhirMarkdownDbObject> paymentTerms =
      ToOne<FhirMarkdownDbObject>();
  final ToOne<PrimitiveElementDbObject> paymentTermsElement =
      ToOne<PrimitiveElementDbObject>();
  final ToMany<AnnotationDbObject> note = ToMany<AnnotationDbObject>();
  InvoiceDbObject({required this.id});
}

@Entity()
class InvoiceParticipantDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<CodeableConceptDbObject> role = ToOne<CodeableConceptDbObject>();
  final ToOne<ReferenceDbObject> actor = ToOne<ReferenceDbObject>();
  InvoiceParticipantDbObject({required this.id});
}

@Entity()
class InvoiceLineItemDbObject {
  @Id(assignable: true)
  int id;
  final ToOne<StringDbObject> fhirId = ToOne<StringDbObject>();
  final ToMany<FhirExtensionDbObject> extension_ =
      ToMany<FhirExtensionDbObject>();
  final ToMany<FhirExtensionDbObject> modifierExtension =
      ToMany<FhirExtensionDbObject>();
  final ToOne<FhirPositiveIntDbObject> sequence =
      ToOne<FhirPositiveIntDbObject>();
  final ToOne<PrimitiveElementDbObject> sequenceElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<ReferenceDbObject> chargeItemReference =
      ToOne<ReferenceDbObject>();
  final ToOne<CodeableConceptDbObject> chargeItemCodeableConcept =
      ToOne<CodeableConceptDbObject>();
  final ToMany<InvoicePriceComponentDbObject> priceComponent =
      ToMany<InvoicePriceComponentDbObject>();
  InvoiceLineItemDbObject({required this.id});
}

@Entity()
class InvoicePriceComponentDbObject {
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
  final ToOne<CodeableConceptDbObject> code = ToOne<CodeableConceptDbObject>();
  final ToOne<FhirDecimalDbObject> factor = ToOne<FhirDecimalDbObject>();
  final ToOne<PrimitiveElementDbObject> factorElement =
      ToOne<PrimitiveElementDbObject>();
  final ToOne<MoneyDbObject> amount = ToOne<MoneyDbObject>();
  InvoicePriceComponentDbObject({required this.id});
}
