import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class AuditEventAgent {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept type;
  final List<CodeableConcept> role;
  final Reference who;
  final String altId;
  final PrimitiveElement AltId;
  final String name;
  final PrimitiveElement Name;
  final FhirBoolean requestor;
  final PrimitiveElement Requestor;
  final Reference location;
  final List<FhirUri> policy;
  final List<PrimitiveElement> Policy;
  final Coding media;
  final AuditEvent_Network network;
  final List<CodeableConcept> purposeOfUse;
  const AuditEventAgent({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.role,
    this.who,
    this.altId,
    this.AltId,
    this.name,
    this.Name,
    this.requestor,
    this.Requestor,
    this.location,
    this.policy,
    this.Policy,
    this.media,
    this.network,
    this.purposeOfUse,
  });
}
