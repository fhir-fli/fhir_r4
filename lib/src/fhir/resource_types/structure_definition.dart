import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class StructureDefinition extends DomainResource {
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
    required this.url,
    this.urlElement,
    this.identifier,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    this.title,
    this.titleElement,
    required this.status,
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
    required this.kind,
    this.kindElement,
    required this.abstract_,
    this.abstractElement,
    this.context,
    required this.type,
    this.typeElement,
    this.baseDefinition,
    this.baseDefinitionElement,
    this.derivation,
    this.derivationElement,
    this.snapshot,
    this.differential,
  }) : super(resourceType: R4ResourceType.StructureDefinition);

  final FhirUri url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final FhirCode status;
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
  final FhirCode kind;
  final Element? kindElement;
  final FhirBoolean abstract_;
  final Element? abstractElement;
  final List<StructureDefinitionContext>? context;
  final FhirUri type;
  final Element? typeElement;
  final FhirCanonical? baseDefinition;
  final Element? baseDefinitionElement;
  final FhirCode? derivation;
  final Element? derivationElement;
  final StructureDefinitionSnapshot? snapshot;
  final StructureDefinitionDifferential? differential;
  @override
  StructureDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class StructureDefinitionMapping extends BackboneElement {
  StructureDefinitionMapping({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identity,
    this.identityElement,
    this.uri,
    this.uriElement,
    this.name,
    this.nameElement,
    this.comment,
    this.commentElement,
  });

  final FhirId identity;
  final Element? identityElement;
  final FhirUri? uri;
  final Element? uriElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? comment;
  final Element? commentElement;
  @override
  StructureDefinitionMapping clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class StructureDefinitionContext extends BackboneElement {
  StructureDefinitionContext({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    required this.expression,
    this.expressionElement,
    this.contextInvariant,
    this.contextInvariantElement,
  });

  final FhirCode type;
  final Element? typeElement;
  final FhirString expression;
  final Element? expressionElement;
  final List<FhirString>? contextInvariant;
  final List<Element>? contextInvariantElement;
  @override
  StructureDefinitionContext clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class StructureDefinitionSnapshot extends BackboneElement {
  StructureDefinitionSnapshot({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
  });

  final List<ElementDefinition> element;
  @override
  StructureDefinitionSnapshot clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class StructureDefinitionDifferential extends BackboneElement {
  StructureDefinitionDifferential({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.element,
  });

  final List<ElementDefinition> element;
  @override
  StructureDefinitionDifferential clone() => throw UnimplementedError();
}
