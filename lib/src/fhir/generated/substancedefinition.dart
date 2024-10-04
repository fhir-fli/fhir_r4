import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinition {
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
  final String version;
  final PrimitiveElement Version;
  final CodeableConcept status;
  final List<CodeableConcept> classification;
  final CodeableConcept domain;
  final List<CodeableConcept> grade;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<Reference> informationSource;
  final List<Annotation> note;
  final List<Reference> manufacturer;
  final List<Reference> supplier;
  final List<SubstanceDefinitionMoiety> moiety;
  final List<SubstanceDefinitionProperty> property;
  final List<SubstanceDefinitionMolecularWeight> molecularWeight;
  final SubstanceDefinition_Structure structure;
  final List<SubstanceDefinitionCode> code;
  final List<SubstanceDefinitionName> name;
  final List<SubstanceDefinitionRelationship> relationship;
  final SubstanceDefinition_SourceMaterial sourceMaterial;
  const SubstanceDefinition({
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
    this.version,
    this.Version,
    this.status,
    this.classification,
    this.domain,
    this.grade,
    this.description,
    this.Description,
    this.informationSource,
    this.note,
    this.manufacturer,
    this.supplier,
    this.moiety,
    this.property,
    this.molecularWeight,
    this.structure,
    this.code,
    this.name,
    this.relationship,
    this.sourceMaterial,
  });
}
