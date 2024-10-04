import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class Invoice {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final String cancelledReason;
  final PrimitiveElement CancelledReason;
  final CodeableConcept type;
  final Reference subject;
  final Reference recipient;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final List<InvoiceParticipant> participant;
  final Reference issuer;
  final Reference account;
  final List<InvoiceLineItem> lineItem;
  final List<InvoicePriceComponent> totalPriceComponent;
  final Money totalNet;
  final Money totalGross;
  final FhirMarkdown paymentTerms;
  final PrimitiveElement PaymentTerms;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class InvoiceParticipant {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Reference actor;
}

@Data()
@JsonCodable()
class InvoiceLineItem {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement Sequence;
  final Reference chargeItemReference;
  final CodeableConcept chargeItemCodeableConcept;
  final List<InvoicePriceComponent> priceComponent;
}

@Data()
@JsonCodable()
class InvoicePriceComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final CodeableConcept code;
  final FhirDecimal factor;
  final PrimitiveElement Factor;
  final Money amount;
}


