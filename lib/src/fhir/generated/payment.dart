import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class PaymentNotice {
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
  final Reference request;
  final Reference response;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference provider;
  final Reference payment;
  final FhirDate paymentDate;
  final PrimitiveElement paymentDateElement;
  final Reference payee;
  final Reference recipient;
  final Money amount;
  final CodeableConcept paymentStatus;
}

@Data()
@JsonCodable()
class PaymentReconciliation {
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
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement createdElement;
  final Reference paymentIssuer;
  final Reference request;
  final Reference requestor;
  final FhirCode outcome;
  final PrimitiveElement outcomeElement;
  final String disposition;
  final PrimitiveElement dispositionElement;
  final FhirDate paymentDate;
  final PrimitiveElement paymentDateElement;
  final Money paymentAmount;
  final Identifier paymentIdentifier;
  final List<PaymentReconciliationDetail> detail;
  final CodeableConcept formCode;
  final List<PaymentReconciliationProcessNote> processNote;
}

@Data()
@JsonCodable()
class PaymentReconciliationDetail {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final Identifier predecessor;
  final CodeableConcept type;
  final Reference request;
  final Reference submitter;
  final Reference response;
  final FhirDate date;
  final PrimitiveElement dateElement;
  final Reference responsible;
  final Reference payee;
  final Money amount;
}

@Data()
@JsonCodable()
class PaymentReconciliationProcessNote {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String text;
  final PrimitiveElement textElement;
}


