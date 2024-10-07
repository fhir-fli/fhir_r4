import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinition] /// The detailed description of a substance, typically at a level beyond what
/// is used for prescribing.
class SubstanceDefinition extends DomainResource {
  SubstanceDefinition({
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
    this.identifier,
    this.version,
    this.versionElement,
    this.status,
    this.classification,
    this.domain,
    this.grade,
    this.description,
    this.descriptionElement,
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
  }) : super(resourceType: R4ResourceType.SubstanceDefinition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier by which this substance is known.
  final List<Identifier>? identifier;

  /// [version] /// A business level version identifier of the substance.
  final FhirString? version;
  final Element? versionElement;

  /// [status] /// Status of substance within the catalogue e.g. active, retired.
  final CodeableConcept? status;

  /// [classification] /// A high level categorization, e.g. polymer or nucleic acid, or food,
  /// chemical, biological, or a lower level such as the general types of polymer
  /// (linear or branch chain) or type of impurity (process related or
  /// contaminant).
  final List<CodeableConcept>? classification;

  /// [domain] /// If the substance applies to human or veterinary use.
  final CodeableConcept? domain;

  /// [grade] /// The quality standard, established benchmark, to which substance complies
  /// (e.g. USP/NF, Ph. Eur, JP, BP, Company Standard).
  final List<CodeableConcept>? grade;

  /// [description] /// Textual description of the substance.
  final FhirMarkdown? description;
  final Element? descriptionElement;

  /// [informationSource] /// Supporting literature.
  final List<Reference>? informationSource;

  /// [note] /// Textual comment about the substance's catalogue or registry record.
  final List<Annotation>? note;

  /// [manufacturer] /// The entity that creates, makes, produces or fabricates the substance. This
  /// is a set of potential manufacturers but is not necessarily comprehensive.
  final List<Reference>? manufacturer;

  /// [supplier] /// An entity that is the source for the substance. It may be different from
  /// the manufacturer. Supplier is synonymous to a distributor.
  final List<Reference>? supplier;

  /// [moiety] /// Moiety, for structural modifications.
  final List<SubstanceDefinitionMoiety>? moiety;

  /// [property] /// General specifications for this substance.
  final List<SubstanceDefinitionProperty>? property;

  /// [molecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  final List<SubstanceDefinitionMolecularWeight>? molecularWeight;

  /// [structure] /// Structural information.
  final SubstanceDefinitionStructure? structure;

  /// [code] /// Codes associated with the substance.
  final List<SubstanceDefinitionCode>? code;

  /// [name] /// Names applicable to this substance.
  final List<SubstanceDefinitionName>? name;

  /// [relationship] /// A link between this substance and another, with details of the
  /// relationship.
  final List<SubstanceDefinitionRelationship>? relationship;

  /// [sourceMaterial] /// Material or taxonomic/anatomical source for the substance.
  final SubstanceDefinitionSourceMaterial? sourceMaterial;
  @override
  SubstanceDefinition clone() => throw UnimplementedError();
  SubstanceDefinition copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirString? version,
    Element? versionElement,
    CodeableConcept? status,
    List<CodeableConcept>? classification,
    CodeableConcept? domain,
    List<CodeableConcept>? grade,
    FhirMarkdown? description,
    Element? descriptionElement,
    List<Reference>? informationSource,
    List<Annotation>? note,
    List<Reference>? manufacturer,
    List<Reference>? supplier,
    List<SubstanceDefinitionMoiety>? moiety,
    List<SubstanceDefinitionProperty>? property,
    List<SubstanceDefinitionMolecularWeight>? molecularWeight,
    SubstanceDefinitionStructure? structure,
    List<SubstanceDefinitionCode>? code,
    List<SubstanceDefinitionName>? name,
    List<SubstanceDefinitionRelationship>? relationship,
    SubstanceDefinitionSourceMaterial? sourceMaterial,
  }) {
    return SubstanceDefinition(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      version: version ?? this.version,
      versionElement: versionElement ?? this.versionElement,
      status: status ?? this.status,
      classification: classification ?? this.classification,
      domain: domain ?? this.domain,
      grade: grade ?? this.grade,
      description: description ?? this.description,
      descriptionElement: descriptionElement ?? this.descriptionElement,
      informationSource: informationSource ?? this.informationSource,
      note: note ?? this.note,
      manufacturer: manufacturer ?? this.manufacturer,
      supplier: supplier ?? this.supplier,
      moiety: moiety ?? this.moiety,
      property: property ?? this.property,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      structure: structure ?? this.structure,
      code: code ?? this.code,
      name: name ?? this.name,
      relationship: relationship ?? this.relationship,
      sourceMaterial: sourceMaterial ?? this.sourceMaterial,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionMoiety] /// Moiety, for structural modifications.
class SubstanceDefinitionMoiety extends BackboneElement {
  SubstanceDefinitionMoiety({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.role,
    this.identifier,
    this.name,
    this.nameElement,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.amountQuantity,
    this.amountString,
    this.amountStringElement,
    this.measurementType,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [role] /// Role that the moiety is playing.
  final CodeableConcept? role;

  /// [identifier] /// Identifier by which this moiety substance is known.
  final Identifier? identifier;

  /// [name] /// Textual name for this moiety substance.
  final FhirString? name;
  final Element? nameElement;

  /// [stereochemistry] /// Stereochemistry type.
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] /// Molecular formula for this moiety of this substance, typically using the
  /// Hill system.
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;

  /// [amountQuantity] /// Quantitative value for this moiety.
  final Quantity? amountQuantity;

  /// [amountString] /// Quantitative value for this moiety.
  final FhirString? amountString;
  final Element? amountStringElement;

  /// [measurementType] /// The measurement type of the quantitative value. In capturing the actual
  /// relative amounts of substances or molecular fragments it may be necessary
  /// to indicate whether the amount refers to, for example, a mole ratio or
  /// weight ratio.
  final CodeableConcept? measurementType;
  @override
  SubstanceDefinitionMoiety clone() => throw UnimplementedError();
  SubstanceDefinitionMoiety copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? role,
    Identifier? identifier,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    Element? molecularFormulaElement,
    Quantity? amountQuantity,
    FhirString? amountString,
    Element? amountStringElement,
    CodeableConcept? measurementType,
  }) {
    return SubstanceDefinitionMoiety(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      role: role ?? this.role,
      identifier: identifier ?? this.identifier,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      molecularFormulaElement:
          molecularFormulaElement ?? this.molecularFormulaElement,
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountString: amountString ?? this.amountString,
      amountStringElement: amountStringElement ?? this.amountStringElement,
      measurementType: measurementType ?? this.measurementType,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionProperty] /// General specifications for this substance.
class SubstanceDefinitionProperty extends BackboneElement {
  SubstanceDefinitionProperty({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.valueCodeableConcept,
    this.valueQuantity,
    this.valueDate,
    this.valueDateElement,
    this.valueBoolean,
    this.valueBooleanElement,
    this.valueAttachment,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A code expressing the type of property.
  final CodeableConcept type;

  /// [valueCodeableConcept] /// A value for the property.
  final CodeableConcept? valueCodeableConcept;

  /// [valueQuantity] /// A value for the property.
  final Quantity? valueQuantity;

  /// [valueDate] /// A value for the property.
  final FhirDate? valueDate;
  final Element? valueDateElement;

  /// [valueBoolean] /// A value for the property.
  final FhirBoolean? valueBoolean;
  final Element? valueBooleanElement;

  /// [valueAttachment] /// A value for the property.
  final Attachment? valueAttachment;
  @override
  SubstanceDefinitionProperty clone() => throw UnimplementedError();
  SubstanceDefinitionProperty copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? valueCodeableConcept,
    Quantity? valueQuantity,
    FhirDate? valueDate,
    Element? valueDateElement,
    FhirBoolean? valueBoolean,
    Element? valueBooleanElement,
    Attachment? valueAttachment,
  }) {
    return SubstanceDefinitionProperty(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      valueCodeableConcept: valueCodeableConcept ?? this.valueCodeableConcept,
      valueQuantity: valueQuantity ?? this.valueQuantity,
      valueDate: valueDate ?? this.valueDate,
      valueDateElement: valueDateElement ?? this.valueDateElement,
      valueBoolean: valueBoolean ?? this.valueBoolean,
      valueBooleanElement: valueBooleanElement ?? this.valueBooleanElement,
      valueAttachment: valueAttachment ?? this.valueAttachment,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionMolecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
/// acids).
class SubstanceDefinitionMolecularWeight extends BackboneElement {
  SubstanceDefinitionMolecularWeight({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.method,
    this.type,
    required this.amount,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [method] /// The method by which the molecular weight was determined.
  final CodeableConcept? method;

  /// [type] /// Type of molecular weight such as exact, average (also known as. number
  /// average), weight average.
  final CodeableConcept? type;

  /// [amount] /// Used to capture quantitative values for a variety of elements. If only
  /// limits are given, the arithmetic mean would be the average. If only a
  /// single definite value for a given element is given, it would be captured in
  /// this field.
  final Quantity amount;
  @override
  SubstanceDefinitionMolecularWeight clone() => throw UnimplementedError();
  SubstanceDefinitionMolecularWeight copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? method,
    CodeableConcept? type,
    Quantity? amount,
  }) {
    return SubstanceDefinitionMolecularWeight(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      method: method ?? this.method,
      type: type ?? this.type,
      amount: amount ?? this.amount,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionStructure] /// Structural information.
class SubstanceDefinitionStructure extends BackboneElement {
  SubstanceDefinitionStructure({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.stereochemistry,
    this.opticalActivity,
    this.molecularFormula,
    this.molecularFormulaElement,
    this.molecularFormulaByMoiety,
    this.molecularFormulaByMoietyElement,
    this.molecularWeight,
    this.technique,
    this.sourceDocument,
    this.representation,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [stereochemistry] /// Stereochemistry type.
  final CodeableConcept? stereochemistry;

  /// [opticalActivity] /// Optical activity type.
  final CodeableConcept? opticalActivity;

  /// [molecularFormula] /// Molecular formula of this substance, typically using the Hill system.
  final FhirString? molecularFormula;
  final Element? molecularFormulaElement;

  /// [molecularFormulaByMoiety] /// Specified per moiety according to the Hill system, i.e. first C, then H,
  /// then alphabetical, each moiety separated by a dot.
  final FhirString? molecularFormulaByMoiety;
  final Element? molecularFormulaByMoietyElement;

  /// [molecularWeight] /// The molecular weight or weight range (for proteins, polymers or nucleic
  /// acids).
  final SubstanceDefinitionMolecularWeight? molecularWeight;

  /// [technique] /// The method used to elucidate the structure or characterization of the drug
  /// substance. Examples: X-ray, HPLC, NMR, Peptide mapping, Ligand binding
  /// assay.
  final List<CodeableConcept>? technique;

  /// [sourceDocument] /// The source of information about the structure.
  final List<Reference>? sourceDocument;

  /// [representation] /// A depiction of the structure or characterization of the substance.
  final List<SubstanceDefinitionRepresentation>? representation;
  @override
  SubstanceDefinitionStructure clone() => throw UnimplementedError();
  SubstanceDefinitionStructure copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? stereochemistry,
    CodeableConcept? opticalActivity,
    FhirString? molecularFormula,
    Element? molecularFormulaElement,
    FhirString? molecularFormulaByMoiety,
    Element? molecularFormulaByMoietyElement,
    SubstanceDefinitionMolecularWeight? molecularWeight,
    List<CodeableConcept>? technique,
    List<Reference>? sourceDocument,
    List<SubstanceDefinitionRepresentation>? representation,
  }) {
    return SubstanceDefinitionStructure(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      stereochemistry: stereochemistry ?? this.stereochemistry,
      opticalActivity: opticalActivity ?? this.opticalActivity,
      molecularFormula: molecularFormula ?? this.molecularFormula,
      molecularFormulaElement:
          molecularFormulaElement ?? this.molecularFormulaElement,
      molecularFormulaByMoiety:
          molecularFormulaByMoiety ?? this.molecularFormulaByMoiety,
      molecularFormulaByMoietyElement: molecularFormulaByMoietyElement ??
          this.molecularFormulaByMoietyElement,
      molecularWeight: molecularWeight ?? this.molecularWeight,
      technique: technique ?? this.technique,
      sourceDocument: sourceDocument ?? this.sourceDocument,
      representation: representation ?? this.representation,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionRepresentation] /// A depiction of the structure or characterization of the substance.
class SubstanceDefinitionRepresentation extends BackboneElement {
  SubstanceDefinitionRepresentation({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.representation,
    this.representationElement,
    this.format,
    this.document,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// The kind of structural representation (e.g. full, partial).
  final CodeableConcept? type;

  /// [representation] /// The structural representation or characterization as a text string in a
  /// standard format.
  final FhirString? representation;
  final Element? representationElement;

  /// [format] /// The format of the representation e.g. InChI, SMILES, MOLFILE, CDX, SDF,
  /// PDB, mmCIF. The logical content type rather than the physical file format
  /// of a document.
  final CodeableConcept? format;

  /// [document] /// An attached file with the structural representation or characterization
  /// e.g. a molecular structure graphic of the substance, a JCAMP or AnIML file.
  final Reference? document;
  @override
  SubstanceDefinitionRepresentation clone() => throw UnimplementedError();
  SubstanceDefinitionRepresentation copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    FhirString? representation,
    Element? representationElement,
    CodeableConcept? format,
    Reference? document,
  }) {
    return SubstanceDefinitionRepresentation(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      representation: representation ?? this.representation,
      representationElement:
          representationElement ?? this.representationElement,
      format: format ?? this.format,
      document: document ?? this.document,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionCode] /// Codes associated with the substance.
class SubstanceDefinitionCode extends BackboneElement {
  SubstanceDefinitionCode({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.status,
    this.statusDate,
    this.statusDateElement,
    this.note,
    this.source,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The specific code.
  final CodeableConcept? code;

  /// [status] /// Status of the code assignment, for example 'provisional', 'approved'.
  final CodeableConcept? status;

  /// [statusDate] /// The date at which the code status was changed as part of the terminology
  /// maintenance.
  final FhirDateTime? statusDate;
  final Element? statusDateElement;

  /// [note] /// Any comment can be provided in this field, if necessary.
  final List<Annotation>? note;

  /// [source] /// Supporting literature.
  final List<Reference>? source;
  @override
  SubstanceDefinitionCode clone() => throw UnimplementedError();
  SubstanceDefinitionCode copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? code,
    CodeableConcept? status,
    FhirDateTime? statusDate,
    Element? statusDateElement,
    List<Annotation>? note,
    List<Reference>? source,
  }) {
    return SubstanceDefinitionCode(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      status: status ?? this.status,
      statusDate: statusDate ?? this.statusDate,
      statusDateElement: statusDateElement ?? this.statusDateElement,
      note: note ?? this.note,
      source: source ?? this.source,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionName] /// Names applicable to this substance.
class SubstanceDefinitionName extends BackboneElement {
  SubstanceDefinitionName({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.name,
    this.nameElement,
    this.type,
    this.status,
    this.preferred,
    this.preferredElement,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [name] /// The actual name.
  final FhirString name;
  final Element? nameElement;

  /// [type] /// Name type, for example 'systematic', 'scientific, 'brand'.
  final CodeableConcept? type;

  /// [status] /// The status of the name, for example 'current', 'proposed'.
  final CodeableConcept? status;

  /// [preferred] /// If this is the preferred name for this substance.
  final FhirBoolean? preferred;
  final Element? preferredElement;

  /// [language] /// Human language that the name is written in.
  final List<CodeableConcept>? language;

  /// [domain] /// The use context of this name for example if there is a different name a
  /// drug active ingredient as opposed to a food colour additive.
  final List<CodeableConcept>? domain;

  /// [jurisdiction] /// The jurisdiction where this name applies.
  final List<CodeableConcept>? jurisdiction;

  /// [synonym] /// A synonym of this particular name, by which the substance is also known.
  final List<SubstanceDefinitionName>? synonym;

  /// [translation] /// A translation for this name into another human language.
  final List<SubstanceDefinitionName>? translation;

  /// [official] /// Details of the official nature of this name.
  final List<SubstanceDefinitionOfficial>? official;

  /// [source] /// Supporting literature.
  final List<Reference>? source;
  @override
  SubstanceDefinitionName clone() => throw UnimplementedError();
  SubstanceDefinitionName copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? name,
    Element? nameElement,
    CodeableConcept? type,
    CodeableConcept? status,
    FhirBoolean? preferred,
    Element? preferredElement,
    List<CodeableConcept>? language,
    List<CodeableConcept>? domain,
    List<CodeableConcept>? jurisdiction,
    List<SubstanceDefinitionName>? synonym,
    List<SubstanceDefinitionName>? translation,
    List<SubstanceDefinitionOfficial>? official,
    List<Reference>? source,
  }) {
    return SubstanceDefinitionName(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      name: name ?? this.name,
      nameElement: nameElement ?? this.nameElement,
      type: type ?? this.type,
      status: status ?? this.status,
      preferred: preferred ?? this.preferred,
      preferredElement: preferredElement ?? this.preferredElement,
      language: language ?? this.language,
      domain: domain ?? this.domain,
      jurisdiction: jurisdiction ?? this.jurisdiction,
      synonym: synonym ?? this.synonym,
      translation: translation ?? this.translation,
      official: official ?? this.official,
      source: source ?? this.source,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionOfficial] /// Details of the official nature of this name.
class SubstanceDefinitionOfficial extends BackboneElement {
  SubstanceDefinitionOfficial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.authority,
    this.status,
    this.date,
    this.dateElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [authority] /// Which authority uses this official name.
  final CodeableConcept? authority;

  /// [status] /// The status of the official name, for example 'draft', 'active', 'retired'.
  final CodeableConcept? status;

  /// [date] /// Date of the official name change.
  final FhirDateTime? date;
  final Element? dateElement;
  @override
  SubstanceDefinitionOfficial clone() => throw UnimplementedError();
  SubstanceDefinitionOfficial copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? authority,
    CodeableConcept? status,
    FhirDateTime? date,
    Element? dateElement,
  }) {
    return SubstanceDefinitionOfficial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      authority: authority ?? this.authority,
      status: status ?? this.status,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionRelationship] /// A link between this substance and another, with details of the
/// relationship.
class SubstanceDefinitionRelationship extends BackboneElement {
  SubstanceDefinitionRelationship({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.substanceDefinitionReference,
    this.substanceDefinitionCodeableConcept,
    required this.type,
    this.isDefining,
    this.isDefiningElement,
    this.amountQuantity,
    this.amountRatio,
    this.amountString,
    this.amountStringElement,
    this.ratioHighLimitAmount,
    this.comparator,
    this.source,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [substanceDefinitionReference] /// A pointer to another substance, as a resource or just a representational
  /// code.
  final Reference? substanceDefinitionReference;

  /// [substanceDefinitionCodeableConcept] /// A pointer to another substance, as a resource or just a representational
  /// code.
  final CodeableConcept? substanceDefinitionCodeableConcept;

  /// [type] /// For example "salt to parent", "active moiety", "starting material",
  /// "polymorph", "impurity of".
  final CodeableConcept type;

  /// [isDefining] /// For example where an enzyme strongly bonds with a particular substance,
  /// this is a defining relationship for that enzyme, out of several possible
  /// substance relationships.
  final FhirBoolean? isDefining;
  final Element? isDefiningElement;

  /// [amountQuantity] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  final Quantity? amountQuantity;

  /// [amountRatio] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  final Ratio? amountRatio;

  /// [amountString] /// A numeric factor for the relationship, for instance to express that the
  /// salt of a substance has some percentage of the active substance in relation
  /// to some other.
  final FhirString? amountString;
  final Element? amountStringElement;

  /// [ratioHighLimitAmount] /// For use when the numeric has an uncertain range.
  final Ratio? ratioHighLimitAmount;

  /// [comparator] /// An operator for the amount, for example "average", "approximately", "less
  /// than".
  final CodeableConcept? comparator;

  /// [source] /// Supporting literature.
  final List<Reference>? source;
  @override
  SubstanceDefinitionRelationship clone() => throw UnimplementedError();
  SubstanceDefinitionRelationship copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    Reference? substanceDefinitionReference,
    CodeableConcept? substanceDefinitionCodeableConcept,
    CodeableConcept? type,
    FhirBoolean? isDefining,
    Element? isDefiningElement,
    Quantity? amountQuantity,
    Ratio? amountRatio,
    FhirString? amountString,
    Element? amountStringElement,
    Ratio? ratioHighLimitAmount,
    CodeableConcept? comparator,
    List<Reference>? source,
  }) {
    return SubstanceDefinitionRelationship(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      substanceDefinitionReference:
          substanceDefinitionReference ?? this.substanceDefinitionReference,
      substanceDefinitionCodeableConcept: substanceDefinitionCodeableConcept ??
          this.substanceDefinitionCodeableConcept,
      type: type ?? this.type,
      isDefining: isDefining ?? this.isDefining,
      isDefiningElement: isDefiningElement ?? this.isDefiningElement,
      amountQuantity: amountQuantity ?? this.amountQuantity,
      amountRatio: amountRatio ?? this.amountRatio,
      amountString: amountString ?? this.amountString,
      amountStringElement: amountStringElement ?? this.amountStringElement,
      ratioHighLimitAmount: ratioHighLimitAmount ?? this.ratioHighLimitAmount,
      comparator: comparator ?? this.comparator,
      source: source ?? this.source,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [SubstanceDefinitionSourceMaterial] /// Material or taxonomic/anatomical source for the substance.
class SubstanceDefinitionSourceMaterial extends BackboneElement {
  SubstanceDefinitionSourceMaterial({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.type,
    this.genus,
    this.species,
    this.part_,
    this.countryOfOrigin,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [type] /// A classification that provides the origin of the raw material. Example: cat
  /// hair would be an Animal source type.
  final CodeableConcept? type;

  /// [genus] /// The genus of an organism, typically referring to the Latin epithet of the
  /// genus element of the plant/animal scientific name.
  final CodeableConcept? genus;

  /// [species] /// The species of an organism, typically referring to the Latin epithet of the
  /// species of the plant/animal.
  final CodeableConcept? species;

  /// [part_] /// An anatomical origin of the source material within an organism.
  final CodeableConcept? part_;

  /// [countryOfOrigin] /// The country or countries where the material is harvested.
  final List<CodeableConcept>? countryOfOrigin;
  @override
  SubstanceDefinitionSourceMaterial clone() => throw UnimplementedError();
  SubstanceDefinitionSourceMaterial copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? type,
    CodeableConcept? genus,
    CodeableConcept? species,
    CodeableConcept? part_,
    List<CodeableConcept>? countryOfOrigin,
  }) {
    return SubstanceDefinitionSourceMaterial(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      type: type ?? this.type,
      genus: genus ?? this.genus,
      species: species ?? this.species,
      part_: part_ ?? this.part_,
      countryOfOrigin: countryOfOrigin ?? this.countryOfOrigin,
    );
  }
}
