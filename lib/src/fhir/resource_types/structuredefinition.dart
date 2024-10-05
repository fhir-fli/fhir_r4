import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class StructureDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode? status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirMarkdown? copyright;
  final Element? copyrightElement;
  final List<Coding>? keyword;
  final FhirCode? fhirVersion;
  final Element? fhirVersionElement;
  final List<StructureDefinitionMapping>? mapping;
  final FhirCode? kind;
  final Element? kindElement;
  final FhirBoolean? abstract_;
  final Element? abstractElement;
  final List<StructureDefinitionContext>? context;
  final List<FhirString>? contextInvariant;
  final List<Element>? contextInvariantElement;
  final FhirUri? type;
  final Element? typeElement;
  final FhirCanonical? baseDefinition;
  final FhirCode? derivation;
  final Element? derivationElement;
  final StructureDefinitionSnapshot? snapshot;
  final StructureDefinitionDifferential? differential;

  StructureDefinition({
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
    this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    this.copyright,
    this.copyrightElement,
    this.keyword,
    this.fhirVersion,
    this.fhirVersionElement,
    this.mapping,
    this.kind,
    this.kindElement,
    this.abstract_,
    this.abstractElement,
    this.context,
    this.contextInvariant,
    this.contextInvariantElement,
    this.type,
    this.typeElement,
    this.baseDefinition,
    this.derivation,
    this.derivationElement,
    this.snapshot,
    this.differential,
  }): super(resourceType: R4ResourceType.StructureDefinition);

@override
StructureDefinition clone() => this;

}


@Data()
@JsonCodable()
class StructureDefinitionMapping {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? identity;
  final Element? identityElement;
  final FhirUri? uri;
  final Element? uriElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? comment;
  final Element? commentElement;

  StructureDefinitionMapping({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identity,
    this.identityElement,
    this.uri,
    this.uriElement,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
  });

}


@Data()
@JsonCodable()
class StructureDefinitionContext {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? type;
  final Element? typeElement;
  final FhirString? expression;
  final Element? expressionElement;

  StructureDefinitionContext({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.type,
    this.typeElement,
    this.expression,
    this.expressionElement,
  });

}


@Data()
@JsonCodable()
class StructureDefinitionSnapshot {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ElementDefinition> element;

  StructureDefinitionSnapshot({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

}


@Data()
@JsonCodable()
class StructureDefinitionDifferential {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final List<ElementDefinition> element;

  StructureDefinitionDifferential({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.element,
  });

}



