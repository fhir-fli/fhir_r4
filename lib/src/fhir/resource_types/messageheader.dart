import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class MessageHeader extends DomainResource {
  final Coding? eventCoding;
  final FhirString? eventUri;
  final Element? eventUriElement;
  final List<MessageHeaderDestination>? destination;
  final Reference? sender;
  final Reference? enterer;
  final Reference? author;
  final MessageHeaderSource source;
  final Reference? responsible;
  final CodeableConcept? reason;
  final MessageHeaderResponse? response;
  final List<Reference>? focus;
  final FhirCanonical? definition;

  MessageHeader({
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
    this.eventCoding,
    this.eventUri,
    this.eventUriElement,
    this.destination,
    this.sender,
    this.enterer,
    this.author,
    required this.source,
    this.responsible,
    this.reason,
    this.response,
    this.focus,
    this.definition,
  }): super(resourceType: R4ResourceType.MessageHeader);

@override
MessageHeader clone() => this;

}


@Data()
@JsonCodable()
class MessageHeaderDestination {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final Reference? target;
  final FhirUrl? endpoint;
  final Element? endpointElement;
  final Reference? receiver;

  MessageHeaderDestination({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.target,
    this.endpoint,
    this.endpointElement,
    this.receiver,
  });

}


@Data()
@JsonCodable()
class MessageHeaderSource {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirString? name;
  final Element? nameElement;
  final FhirString? software;
  final Element? softwareElement;
  final FhirString? version;
  final Element? versionElement;
  final ContactPoint? contact;
  final FhirUrl? endpoint;
  final Element? endpointElement;

  MessageHeaderSource({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.name,
    this.nameElement,
    this.software,
    this.softwareElement,
    this.version,
    this.versionElement,
    this.contact,
    this.endpoint,
    this.endpointElement,
  });

}


@Data()
@JsonCodable()
class MessageHeaderResponse {
  final FhirId? id;
  final List<FhirExtension>? extension_;
  final List<FhirExtension>? modifierExtension;
  final FhirId? identifier;
  final Element? identifierElement;
  final FhirCode? code;
  final Element? codeElement;
  final Reference? details;

  MessageHeaderResponse({
    this.id,
    this.extension_,
    this.modifierExtension,
    this.identifier,
    this.identifierElement,
    this.code,
    this.codeElement,
    this.details,
  });

}



