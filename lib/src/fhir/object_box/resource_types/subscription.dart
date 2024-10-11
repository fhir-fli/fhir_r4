import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class Subscription extends Resource {
  Subscription({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.status,
    this.contact,
    this.end,
    required this.reason,
    required this.criteria,
    this.error,
    required this.channel,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToOne<FhirMeta>? meta = ToOne<FhirMeta>();
  String? implicitRules;
  String? language;
  ToOne<Narrative>? text = ToOne<Narrative>();
  ToMany<Resource>? contained = ToMany<Resource>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String status;
  ToMany<ContactPoint>? contact = ToMany<ContactPoint>();
  String? end;
  String reason;
  String criteria;
  String? error;
  ToOne<SubscriptionChannel> channel = ToOne<SubscriptionChannel>();
}

@Entity()
class SubscriptionChannel {
  SubscriptionChannel({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.endpoint,
    this.payload,
    this.header,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  String? endpoint;
  String? payload;
  List<String>? header;
}
