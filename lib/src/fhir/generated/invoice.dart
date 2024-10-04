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
  const Invoice({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.identifier,
    required this.status,
    required this.statusElement,
    required this.cancelledReason,
    required this.cancelledReasonElement,
    required this.type,
    required this.subject,
    required this.recipient,
    required this.date,
    required this.dateElement,
    required this.participant,
    required this.issuer,
    required this.account,
    required this.lineItem,
    required this.totalPriceComponent,
    required this.totalNet,
    required this.totalGross,
    required this.paymentTerms,
    required this.paymentTermsElement,
    required this.note,
  });
}

@Data()
@JsonCodable()
class InvoiceParticipant {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final CodeableConcept role;
  final Reference actor;
  const InvoiceParticipant({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.role,
    required this.actor,
  });
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
  const InvoiceLineItem({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.sequence,
    required this.sequenceElement,
    required this.chargeItemReference,
    required this.chargeItemCodeableConcept,
    required this.priceComponent,
  });
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
  const InvoicePriceComponent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.code,
    required this.factor,
    required this.factorElement,
    required this.amount,
  });
}


