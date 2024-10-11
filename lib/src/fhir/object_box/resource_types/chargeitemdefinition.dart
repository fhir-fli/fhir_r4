import 'package:objectbox/objectbox.dart';
import '../object_box.dart';

@Entity()
class ChargeItemDefinition extends Resource {
  ChargeItemDefinition({
    this.id,
    this.meta,
    this.implicitRules,
    this.language,
    this.text,
    this.contained,
    this.extension_,
    this.modifierExtension,
    required this.url,
    this.identifier,
    this.version,
    this.title,
    this.derivedFromUri,
    this.partOf,
    this.replaces,
    required this.status,
    this.experimental,
    this.date,
    this.publisher,
    this.contact,
    this.description,
    this.useContext,
    this.jurisdiction,
    this.copyright,
    this.approvalDate,
    this.lastReviewDate,
    this.effectivePeriod,
    this.code,
    this.instance,
    this.applicability,
    this.propertyGroup,
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
  String url;
  ToMany<Identifier>? identifier = ToMany<Identifier>();
  String? version;
  String? title;
  List<String>? derivedFromUri;
  List<String>? partOf;
  List<String>? replaces;
  String status;
  bool? experimental;
  String? date;
  String? publisher;
  ToMany<ContactDetail>? contact = ToMany<ContactDetail>();
  String? description;
  ToMany<UsageContext>? useContext = ToMany<UsageContext>();
  ToMany<CodeableConcept>? jurisdiction = ToMany<CodeableConcept>();
  String? copyright;
  String? approvalDate;
  String? lastReviewDate;
  ToOne<Period>? effectivePeriod = ToOne<Period>();
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  ToMany<Reference>? instance = ToMany<Reference>();
  ToMany<ChargeItemDefinitionApplicability>? applicability =
      ToMany<ChargeItemDefinitionApplicability>();
  ToMany<ChargeItemDefinitionPropertyGroup>? propertyGroup =
      ToMany<ChargeItemDefinitionPropertyGroup>();
}

@Entity()
class ChargeItemDefinitionApplicability {
  ChargeItemDefinitionApplicability({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.description,
    this.language,
    this.expression,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String? description;
  String? language;
  String? expression;
}

@Entity()
class ChargeItemDefinitionPropertyGroup {
  ChargeItemDefinitionPropertyGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.applicability,
    this.priceComponent,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  ToMany<ChargeItemDefinitionApplicability>? applicability =
      ToMany<ChargeItemDefinitionApplicability>();
  ToMany<ChargeItemDefinitionPriceComponent>? priceComponent =
      ToMany<ChargeItemDefinitionPriceComponent>();
}

@Entity()
class ChargeItemDefinitionPriceComponent {
  ChargeItemDefinitionPriceComponent({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.type,
    this.code,
    this.factor,
    this.amount,
  });

  @Id()
  int? dbId;
  ToOne<String>? id = ToOne<String>();
  ToMany<FhirExtension>? extension_ = ToMany<FhirExtension>();
  ToMany<FhirExtension>? modifierExtension = ToMany<FhirExtension>();
  String type;
  ToOne<CodeableConcept>? code = ToOne<CodeableConcept>();
  double? factor;
  ToOne<Money>? amount = ToOne<Money>();
}
