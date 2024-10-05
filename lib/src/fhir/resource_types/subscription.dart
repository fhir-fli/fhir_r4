import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Subscription extends DomainResource {
  final FhirCode? status;
  final Element? statusElement;
  final List<ContactPoint>? contact;
  final FhirInstant? end;
  final Element? endElement;
  final FhirString? reason;
  final Element? reasonElement;
  final FhirString? criteria;
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
    this.status,
    this.statusElement,
    this.contact,
    this.end,
    this.endElement,
    this.reason,
    this.reasonElement,
    this.criteria,
    this.criteriaElement,
    this.error,
    this.errorElement,
    required this.channel,
  }): super(resourceType: R4ResourceType.Subscription);

@override
Subscription clone() => this;

}


@Data()
@JsonCodable()
class SubscriptionChannel {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirUrl? endpoint;
  final Element? endpointElement;
  final FhirCode? payload;
  final Element? payloadElement;
  final List<FhirString>? header;
  final List<Element>? headerElement;

  SubscriptionChannel({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.endpoint,
    this.endpointElement,
    this.payload,
    this.payloadElement,
    this.header,
    this.headerElement,
  });

}



