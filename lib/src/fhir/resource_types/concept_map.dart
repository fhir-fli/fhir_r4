import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ConceptMap extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final Identifier? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
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
  final FhirUri? sourceFhirUri;
  final Element? sourceFhirUriElement;
  final FhirCanonical? sourceFhirCanonical;
  final Element? sourceFhirCanonicalElement;
  final FhirUri? targetFhirUri;
  final Element? targetFhirUriElement;
  final FhirCanonical? targetFhirCanonical;
  final Element? targetFhirCanonicalElement;
  final List<BackboneElement>? group;
  final List<BackboneElement> element;
  final List<BackboneElement>? target;
  final List<BackboneElement>? dependsOn;
  final BackboneElement? unmapped;

  ConceptMap({
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
    this.sourceFhirUri,
this.sourceFhirUriElement,
    this.sourceFhirCanonical,
this.sourceFhirCanonicalElement,
    this.targetFhirUri,
this.targetFhirUriElement,
    this.targetFhirCanonical,
this.targetFhirCanonicalElement,
    this.group,
    required this.element,
    this.target,
    this.dependsOn,
    this.unmapped,
  }) : super(resourceType: R4ResourceType.ConceptMap);

@override
ConceptMap clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConceptMapGroup extends BackboneElement {
  final FhirUri? source;
  final Element? sourceElement;
  final FhirString? sourceVersion;
  final Element? sourceVersionElement;
  final FhirUri? target;
  final Element? targetElement;
  final FhirString? targetVersion;
  final Element? targetVersionElement;

  ConceptMapGroup({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.source,
this.sourceElement,
    this.sourceVersion,
this.sourceVersionElement,
    this.target,
this.targetElement,
    this.targetVersion,
this.targetVersionElement,
  });

@override
ConceptMapGroup clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConceptMapElement extends BackboneElement {
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;

  ConceptMapElement({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
this.codeElement,
    this.display,
this.displayElement,
  });

@override
ConceptMapElement clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConceptMapTarget extends BackboneElement {
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirCode equivalence;
  final Element? equivalenceElement;
  final FhirString? comment;
  final Element? commentElement;
  final List<dynamic>? product;

  ConceptMapTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
this.codeElement,
    this.display,
this.displayElement,
    required this.equivalence,
this.equivalenceElement,
    this.comment,
this.commentElement,
    this.product,
  });

@override
ConceptMapTarget clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConceptMapDependsOn extends BackboneElement {
  final FhirUri property;
  final Element? propertyElement;
  final FhirCanonical? system;
  final Element? systemElement;
  final FhirString value;
  final Element? valueElement;
  final FhirString? display;
  final Element? displayElement;

  ConceptMapDependsOn({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.property,
this.propertyElement,
    this.system,
this.systemElement,
    required this.value,
this.valueElement,
    this.display,
this.displayElement,
  });

@override
ConceptMapDependsOn clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class ConceptMapUnmapped extends BackboneElement {
  final FhirCode mode;
  final Element? modeElement;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirCanonical? url;
  final Element? urlElement;

  ConceptMapUnmapped({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
this.modeElement,
    this.code,
this.codeElement,
    this.display,
this.displayElement,
    this.url,
this.urlElement,
  });

@override
ConceptMapUnmapped clone() => throw UnimplementedError();
}
