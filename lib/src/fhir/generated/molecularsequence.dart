import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class MolecularSequence {
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
  final FhirCode type;
  final PrimitiveElement Type;
  final FhirInteger coordinateSystem;
  final PrimitiveElement CoordinateSystem;
  final Reference patient;
  final Reference specimen;
  final Reference device;
  final Reference performer;
  final Quantity quantity;
  final MolecularSequence_ReferenceSeq referenceSeq;
  final List<MolecularSequenceVariant> variant;
  final String observedSeq;
  final PrimitiveElement ObservedSeq;
  final List<MolecularSequenceQuality> quality;
  final FhirInteger readCoverage;
  final PrimitiveElement ReadCoverage;
  final List<MolecularSequenceRepository> repository;
  final List<Reference> pointer;
  final List<MolecularSequenceStructureVariant> structureVariant;
  const MolecularSequence({
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
    this.type,
    this.Type,
    this.coordinateSystem,
    this.CoordinateSystem,
    this.patient,
    this.specimen,
    this.device,
    this.performer,
    this.quantity,
    this.referenceSeq,
    this.variant,
    this.observedSeq,
    this.ObservedSeq,
    this.quality,
    this.readCoverage,
    this.ReadCoverage,
    this.repository,
    this.pointer,
    this.structureVariant,
  });
}
