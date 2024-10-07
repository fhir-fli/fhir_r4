import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class NamingSystem extends DomainResource {
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
    required this.name,
    this.nameElement,
    required this.status,
    this.statusElement,
    required this.kind,
    this.kindElement,
    required this.date,
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
  }) : super(resourceType: R4ResourceType.NamingSystem);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirString name;
  final Element? nameElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirCode kind;
  final Element? kindElement;
  final FhirDateTime date;
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
  @override
  NamingSystem clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class NamingSystemUniqueId extends BackboneElement {
  NamingSystemUniqueId({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.value,
    this.valueElement,
    this.preferred,
    this.preferredElement,
    this.comment,
    this.commentElement,
    this.period,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirString value;
  final Element? valueElement;
  final FhirBoolean? preferred;
  final Element? preferredElement;
  final FhirString? comment;
  final Element? commentElement;
  final Period? period;
  @override
  NamingSystemUniqueId clone() => throw UnimplementedError();
}
