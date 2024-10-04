import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class Provenance {
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
  final List<Reference> target;
  final Period occurredPeriod;
  final String occurredDateTime;
  final PrimitiveElement OccurredDateTime;
  final FhirInstant recorded;
  final PrimitiveElement Recorded;
  final List<FhirUri> policy;
  final List<PrimitiveElement> Policy;
  final Reference location;
  final List<CodeableConcept> reason;
  final CodeableConcept activity;
  final List<ProvenanceAgent> agent;
  final List<ProvenanceEntity> entity;
  final List<Signature> signature;
  const Provenance({
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
    required this.target,
    this.occurredPeriod,
    this.occurredDateTime,
    this.OccurredDateTime,
    this.recorded,
    this.Recorded,
    this.policy,
    this.Policy,
    this.location,
    this.reason,
    this.activity,
    required this.agent,
    this.entity,
    this.signature,
  });
}
