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
  final FhirString? sourceUri;
  final Element? sourceUriElement;
  final FhirString? sourceCanonical;
  final Element? sourceCanonicalElement;
  final FhirString? targetUri;
  final Element? targetUriElement;
  final FhirString? targetCanonical;
  final Element? targetCanonicalElement;
  final List<ConceptMapGroup>? group;

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
    this.sourceUri,
    this.sourceUriElement,
    this.sourceCanonical,
    this.sourceCanonicalElement,
    this.targetUri,
    this.targetUriElement,
    this.targetCanonical,
    this.targetCanonicalElement,
    this.group,
  }): super(resourceType: R4ResourceType.ConceptMap);

@override
ConceptMap clone() => this;

}


@Data()
@JsonCodable()
class ConceptMapGroup {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? source;
  final Element? sourceElement;
  final FhirString? sourceVersion;
  final Element? sourceVersionElement;
  final FhirUri? target;
  final Element? targetElement;
  final FhirString? targetVersion;
  final Element? targetVersionElement;
  final List<ConceptMapElement> element;
  final ConceptMapUnmapped? unmapped;

  ConceptMapGroup({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.source,
    this.sourceElement,
    this.sourceVersion,
    this.sourceVersionElement,
    this.target,
    this.targetElement,
    this.targetVersion,
    this.targetVersionElement,
    required this.element,
    this.unmapped,
  });

}


@Data()
@JsonCodable()
class ConceptMapElement {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final List<ConceptMapTarget>? target;

  ConceptMapElement({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.target,
  });

}


@Data()
@JsonCodable()
class ConceptMapTarget {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirCode? equivalence;
  final Element? equivalenceElement;
  final FhirString? comment;
  final Element? commentElement;
  final List<ConceptMapDependsOn>? dependsOn;
  final List<ConceptMapDependsOn>? product;

  ConceptMapTarget({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.equivalence,
    this.equivalenceElement,
    this.comment,
    this.commentElement,
    this.dependsOn,
    this.product,
  });

}


@Data()
@JsonCodable()
class ConceptMapDependsOn {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirUri? property;
  final Element? propertyElement;
  final FhirCanonical? system;
  final FhirString? value;
  final Element? valueElement;
  final FhirString? display;
  final Element? displayElement;

  ConceptMapDependsOn({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.property,
    this.propertyElement,
    this.system,
    this.value,
    this.valueElement,
    this.display,
    this.displayElement,
  });

}


@Data()
@JsonCodable()
class ConceptMapUnmapped {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? mode;
  final Element? modeElement;
  final FhirCode? code;
  final Element? codeElement;
  final FhirString? display;
  final Element? displayElement;
  final FhirCanonical? url;

  ConceptMapUnmapped({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.mode,
    this.modeElement,
    this.code,
    this.codeElement,
    this.display,
    this.displayElement,
    this.url,
  });

}



