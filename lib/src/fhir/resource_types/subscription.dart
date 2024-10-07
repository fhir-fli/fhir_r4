import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Subscription extends DomainResource {
  final FhirCode status;
  final Element? statusElement;
  final List<ContactPoint>? contact;
  final FhirInstant? end;
  final Element? endElement;
  final FhirString reason;
  final Element? reasonElement;
  final FhirString criteria;
  final Element? criteriaElement;
  final FhirString? error;
  final Element? errorElement;
  final SubscriptionChannel channel;

  Subscription({
    super.id,
    super.meta,
    super.implicitRules,
super.implicitRulesElement,
    super.language,
super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.status,
this.statusElement,
    this.contact,
    this.end,
this.endElement,
    required this.reason,
this.reasonElement,
    required this.criteria,
this.criteriaElement,
    this.error,
this.errorElement,
    required this.channel,
  }) : super(resourceType: R4ResourceType.Subscription);

@override
Subscription clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class SubscriptionChannel extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final FhirUrl? endpoint;
  final Element? endpointElement;
  final FhirCode? payload;
  final Element? payloadElement;
  final List<FhirString>? header;
  final List<Element>? headerElement;

  SubscriptionChannel({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
this.typeElement,
    this.endpoint,
this.endpointElement,
    this.payload,
this.payloadElement,
    this.header,
this.headerElement,
  });

@override
SubscriptionChannel clone() => throw UnimplementedError();
}

