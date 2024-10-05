import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class NamingSystem extends DomainResource {
  final FhirString? name;
  final Element? nameElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirCode? kind;
  final Element? kindElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirString? responsible;
  final Element? responsibleElement;
  final CodeableConcept? type;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirString? usage;
  final Element? usageElement;
  final List<NamingSystemUniqueId> uniqueId;

  NamingSystem({
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
    this.name,
    this.nameElement,
    this.status,
    this.statusElement,
    this.kind,
    this.kindElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.responsible,
    this.responsibleElement,
    this.type,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.usage,
    this.usageElement,
    required this.uniqueId,
  }): super(resourceType: R4ResourceType.NamingSystem);

@override
NamingSystem clone() => this;

}


@Data()
@JsonCodable()
class NamingSystemUniqueId {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? value;
  final Element? valueElement;
  final FhirBoolean? preferred;
  final Element? preferredElement;
  final FhirString? comment;
  final Element? commentElement;
  final Period? period;

  NamingSystemUniqueId({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.value,
    this.valueElement,
    this.preferred,
    this.preferredElement,
    this.comment,
    this.commentElement,
    this.period,
  });

}



