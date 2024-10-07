import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class MessageDefinition extends DomainResource {
  MessageDefinition({
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
    this.replaces,
    this.replacesElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    required this.date,
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
    this.base,
    this.baseElement,
    this.parent,
    this.parentElement,
    required this.eventCoding,
    required this.eventUri,
    this.eventUriElement,
    this.category,
    this.categoryElement,
    this.focus,
    this.responseRequired,
    this.responseRequiredElement,
    this.allowedResponse,
    this.graph,
    this.graphElement,
  }) : super(resourceType: R4ResourceType.MessageDefinition);

  final FhirUri? url;
  final Element? urlElement;
  final List<Identifier>? identifier;
  final FhirString? version;
  final Element? versionElement;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? title;
  final Element? titleElement;
  final List<FhirCanonical>? replaces;
  final List<Element>? replacesElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime date;
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
  final FhirCanonical? base;
  final Element? baseElement;
  final List<FhirCanonical>? parent;
  final List<Element>? parentElement;
  final Coding eventCoding;
  final FhirUri eventUri;
  final Element? eventUriElement;
  final FhirCode? category;
  final Element? categoryElement;
  final List<MessageDefinitionFocus>? focus;
  final FhirCode? responseRequired;
  final Element? responseRequiredElement;
  final List<MessageDefinitionAllowedResponse>? allowedResponse;
  final List<FhirCanonical>? graph;
  final List<Element>? graphElement;
  @override
  MessageDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MessageDefinitionFocus extends BackboneElement {
  MessageDefinitionFocus({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.profile,
    this.profileElement,
    required this.min,
    this.minElement,
    this.max,
    this.maxElement,
  });

  final FhirCode code;
  final Element? codeElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final FhirUnsignedInt min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  @override
  MessageDefinitionFocus clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MessageDefinitionAllowedResponse extends BackboneElement {
  MessageDefinitionAllowedResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.message,
    this.messageElement,
    this.situation,
    this.situationElement,
  });

  final FhirCanonical message;
  final Element? messageElement;
  final FhirMarkdown? situation;
  final Element? situationElement;
  @override
  MessageDefinitionAllowedResponse clone() => throw UnimplementedError();
}
