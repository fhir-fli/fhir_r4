import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class Subscription extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  Subscription clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class SubscriptionChannel extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirUrl? endpoint;
  final Element? endpointElement;
  final FhirCode? payload;
  final Element? payloadElement;
  final List<FhirString>? header;
  final List<Element>? headerElement;
  @override
  SubscriptionChannel clone() => throw UnimplementedError();
}
