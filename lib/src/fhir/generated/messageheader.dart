import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MessageHeader {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement EventUri;
  final List<MessageHeaderDestination> destination;
  final Reference sender;
  final Reference enterer;
  final Reference author;
  final MessageHeader_Source source;
  final Reference responsible;
  final CodeableConcept reason;
  final MessageHeader_Response response;
  final List<Reference> focus;
  final FhirCanonical definition;
  const MessageHeader({
    required this.resourceType,
    this.id,
    this.meta,
    this.implicitRules,
    this.ImplicitRules,
    this.language,
    this.Language,
    this.text,
    this.contained,
    this.extension,
    this.modifierExtension,
    this.eventCoding,
    this.eventUri,
    this.EventUri,
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
  });
}
