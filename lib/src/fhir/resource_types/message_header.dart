import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class MessageHeader extends DomainResource {
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
    required this.eventCoding,
    required this.eventUri,
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
    this.definitionElement,
  }) : super(resourceType: R4ResourceType.MessageHeader);

  final Coding eventCoding;
  final FhirUri eventUri;
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
  final Element? definitionElement;
  @override
  MessageHeader clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MessageHeaderDestination extends BackboneElement {
  MessageHeaderDestination({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.target,
    required this.endpoint,
    this.endpointElement,
    this.receiver,
  });

  final FhirString? name;
  final Element? nameElement;
  final Reference? target;
  final FhirUrl endpoint;
  final Element? endpointElement;
  final Reference? receiver;
  @override
  MessageHeaderDestination clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MessageHeaderSource extends BackboneElement {
  MessageHeaderSource({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.name,
    this.nameElement,
    this.software,
    this.softwareElement,
    this.version,
    this.versionElement,
    this.contact,
    required this.endpoint,
    this.endpointElement,
  });

  final FhirString? name;
  final Element? nameElement;
  final FhirString? software;
  final Element? softwareElement;
  final FhirString? version;
  final Element? versionElement;
  final ContactPoint? contact;
  final FhirUrl endpoint;
  final Element? endpointElement;
  @override
  MessageHeaderSource clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class MessageHeaderResponse extends BackboneElement {
  MessageHeaderResponse({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.identifier,
    this.identifierElement,
    required this.code,
    this.codeElement,
    this.details,
  });

  final FhirId identifier;
  final Element? identifierElement;
  final FhirCode code;
  final Element? codeElement;
  final Reference? details;
  @override
  MessageHeaderResponse clone() => throw UnimplementedError();
}
