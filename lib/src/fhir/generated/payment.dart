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
  final Reference request;
  final Reference response;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference provider;
  final Reference payment;
  final FhirDate paymentDate;
  final PrimitiveElement PaymentDate;
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
  final Period period;
  final FhirDateTime created;
  final PrimitiveElement Created;
  final Reference paymentIssuer;
  final Reference request;
  final Reference requestor;
  final FhirCode outcome;
  final PrimitiveElement Outcome;
  final String disposition;
  final PrimitiveElement Disposition;
  final FhirDate paymentDate;
  final PrimitiveElement PaymentDate;
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
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final Identifier identifier;
  final Identifier predecessor;
  final CodeableConcept type;
  final Reference request;
  final Reference submitter;
  final Reference response;
  final FhirDate date;
  final PrimitiveElement Date;
  final Reference responsible;
  final Reference payee;
  final Money amount;
}

@Data()
@JsonCodable()
class PaymentReconciliationProcessNote {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String text;
  final PrimitiveElement Text;
}


