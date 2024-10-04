import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class RequestGroup {
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
  final List<Identifier> identifier;
  final List<FhirCanonical> instantiatesCanonical;
  final List<PrimitiveElement> InstantiatesCanonical;
  final List<FhirUri> instantiatesUri;
  final List<PrimitiveElement> InstantiatesUri;
  final List<Reference> basedOn;
  final List<Reference> replaces;
  final Identifier groupIdentifier;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirCode intent;
  final PrimitiveElement Intent;
  final FhirCode priority;
  final PrimitiveElement Priority;
  final CodeableConcept code;
  final Reference subject;
  final Reference encounter;
  final FhirDateTime authoredOn;
  final PrimitiveElement AuthoredOn;
  final Reference author;
  final List<CodeableConcept> reasonCode;
  final List<Reference> reasonReference;
  final List<Annotation> note;
  final List<RequestGroupAction> action;
  const RequestGroup({
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
    this.identifier,
    this.instantiatesCanonical,
    this.InstantiatesCanonical,
    this.instantiatesUri,
    this.InstantiatesUri,
    this.basedOn,
    this.replaces,
    this.groupIdentifier,
    this.status,
    this.Status,
    this.intent,
    this.Intent,
    this.priority,
    this.Priority,
    this.code,
    this.subject,
    this.encounter,
    this.authoredOn,
    this.AuthoredOn,
    this.author,
    this.reasonCode,
    this.reasonReference,
    this.note,
    this.action,
  });
}
