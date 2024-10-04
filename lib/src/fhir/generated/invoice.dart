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
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final List<Identifier> identifier;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final String cancelledReason;
  final PrimitiveElement cancelledReasonElement;
  final CodeableConcept type;
  final Reference subject;
  final Reference recipient;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final List<InvoiceParticipant> participant;
  final Reference issuer;
  final Reference account;
  final List<InvoiceLineItem> lineItem;
  final List<InvoicePriceComponent> totalPriceComponent;
  final Money totalNet;
  final Money totalGross;
  final FhirMarkdown paymentTerms;
  final PrimitiveElement paymentTermsElement;
  final List<Annotation> note;
}

@Data()
@JsonCodable()
class InvoiceParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Reference actor;
}

@Data()
@JsonCodable()
class InvoiceLineItem {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirPositiveInt sequence;
  final PrimitiveElement sequenceElement;
  final Reference chargeItemReference;
  final CodeableConcept chargeItemCodeableConcept;
  final List<InvoicePriceComponent> priceComponent;
}

@Data()
@JsonCodable()
class InvoicePriceComponent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final CodeableConcept code;
  final FhirDecimal factor;
  final PrimitiveElement factorElement;
  final Money amount;
}


