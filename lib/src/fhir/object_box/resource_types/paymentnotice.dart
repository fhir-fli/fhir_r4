import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class PaymentNotice extends Resource {
  PaymentNotice({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    required this.status,
    this.request,
    this.response,
    required this.created,
    this.provider,
    required this.payment,
    this.paymentDate,
    this.payee,
    required this.recipient,
    required this.amount,
    this.paymentStatus,
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
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String status;
  ToOne<Reference>? request = ToOne<Reference>();
  ToOne<Reference>? response = ToOne<Reference>();
  String created;
  ToOne<Reference>? provider = ToOne<Reference>();
  ToOne<Reference> payment = ToOne<Reference>();
  String? paymentDate;
  ToOne<Reference>? payee = ToOne<Reference>();
  ToOne<Reference> recipient = ToOne<Reference>();
  ToOne<Money> amount = ToOne<Money>();
  ToOne<CodeableConcept>? paymentStatus = ToOne<CodeableConcept>();
}
