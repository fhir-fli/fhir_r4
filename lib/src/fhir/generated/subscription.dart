import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Subscription {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode status;
  final PrimitiveElement Status;
  final List<ContactPoint> contact;
  final FhirInstant end;
  final PrimitiveElement End;
  final String reason;
  final PrimitiveElement Reason;
  final String criteria;
  final PrimitiveElement Criteria;
  final String error;
  final PrimitiveElement Error;
  final Subscription_Channel channel;
  const Subscription({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.status,
    this.Status,
    this.contact,
    this.end,
    this.End,
    this.reason,
    this.Reason,
    this.criteria,
    this.Criteria,
    this.error,
    this.Error,
    required this.channel,
  });
}
