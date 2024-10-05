import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MessageDefinition extends DomainResource {
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
  final FhirCanonical? base;
  final List<FhirCanonical>? parent;
  final Coding? eventCoding;
  final FhirString? eventUri;
  final Element? eventUriElement;
  final FhirCode? category;
  final Element? categoryElement;
  final List<MessageDefinitionFocus>? focus;
  final FhirCode? responseRequired;
  final Element? responseRequiredElement;
  final List<MessageDefinitionAllowedResponse>? allowedResponse;
  final List<FhirCanonical>? graph;

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
    this.base,
    this.parent,
    this.eventCoding,
    this.eventUri,
    this.eventUriElement,
    this.category,
    this.categoryElement,
    this.focus,
    this.responseRequired,
    this.responseRequiredElement,
    this.allowedResponse,
    this.graph,
  }): super(resourceType: R4ResourceType.MessageDefinition);

@override
MessageDefinition clone() => this;

}


@Data()
@JsonCodable()
class MessageDefinitionFocus {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCode? code;
  final Element? codeElement;
  final FhirCanonical? profile;
  final FhirUnsignedInt? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;

  MessageDefinitionFocus({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.code,
    this.codeElement,
    this.profile,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
  });

}


@Data()
@JsonCodable()
class MessageDefinitionAllowedResponse {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirCanonical message;
  final FhirMarkdown? situation;
  final Element? situationElement;

  MessageDefinitionAllowedResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    required this.message,
    this.situation,
    this.situationElement,
  });

}



