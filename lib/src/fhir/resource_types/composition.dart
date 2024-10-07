import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Composition] /// A set of healthcare-related information that is assembled together into a
/// single logical package that provides a single coherent statement of
/// meaning, establishes its own context and that has clinical attestation with
/// regard to who is making the statement. A Composition defines the structure
/// and narrative content necessary for a document. However, a Composition
/// alone does not constitute a document. Rather, the Composition must be the
/// first entry in a Bundle where Bundle.type=document, and any other resources
/// referenced from Composition must be included as subsequent entries in the
/// Bundle (for example Patient, Practitioner, Encounter, etc.).
class Composition extends DomainResource {
  Composition({
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
    required this.status,
    this.statusElement,
    required this.type,
    this.category,
    this.subject,
    this.encounter,
    required this.date,
    this.dateElement,
    required this.author,
    required this.title,
    this.titleElement,
    this.confidentiality,
    this.confidentialityElement,
    this.attester,
    this.custodian,
    this.relatesTo,
    this.event,
    this.section,
  }) : super(resourceType: R4ResourceType.Composition);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// A version-independent identifier for the Composition. This identifier stays
  /// constant as the composition is changed over time.
  final Identifier? identifier;

  /// [status] /// The workflow/clinical status of this composition. The status is a marker
  /// for the clinical standing of the document.
  final FhirCode status;
  final Element? statusElement;

  /// [type] /// Specifies the particular kind of composition (e.g. History and Physical,
  /// Discharge Summary, Progress Note). This usually equates to the purpose of
  /// making the composition.
  final CodeableConcept type;

  /// [category] /// A categorization for the type of the composition - helps for indexing and
  /// searching. This may be implied by or derived from the code specified in the
  /// Composition Type.
  final List<CodeableConcept>? category;

  /// [subject] /// Who or what the composition is about. The composition can be about a
  /// person, (patient or healthcare practitioner), a device (e.g. a machine) or
  /// even a group of subjects (such as a document about a herd of livestock, or
  /// a set of patients that share a common exposure).
  final Reference? subject;

  /// [encounter] /// Describes the clinical encounter or type of care this documentation is
  /// associated with.
  final Reference? encounter;

  /// [date] /// The composition editing time, when the composition was last logically
  /// changed by the author.
  final FhirDateTime date;
  final Element? dateElement;

  /// [author] /// Identifies who is responsible for the information in the composition, not
  /// necessarily who typed it in.
  final List<Reference> author;

  /// [title] /// Official human-readable label for the composition.
  final FhirString title;
  final Element? titleElement;

  /// [confidentiality] /// The code specifying the level of confidentiality of the Composition.
  final FhirCode? confidentiality;
  final Element? confidentialityElement;

  /// [attester] /// A participant who has attested to the accuracy of the composition/document.
  final List<CompositionAttester>? attester;

  /// [custodian] /// Identifies the organization or group who is responsible for ongoing
  /// maintenance of and access to the composition/document information.
  final Reference? custodian;

  /// [relatesTo] /// Relationships that this composition has with other compositions or
  /// documents that already exist.
  final List<CompositionRelatesTo>? relatesTo;

  /// [event] /// The clinical service, such as a colonoscopy or an appendectomy, being
  /// documented.
  final List<CompositionEvent>? event;

  /// [section] /// The root of the sections that make up the composition.
  final List<CompositionSection>? section;
  @override
  Composition clone() => throw UnimplementedError();
  Composition copy({
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
    Identifier? identifier,
    FhirCode? status,
    Element? statusElement,
    CodeableConcept? type,
    List<CodeableConcept>? category,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Element? dateElement,
    List<Reference>? author,
    FhirString? title,
    Element? titleElement,
    FhirCode? confidentiality,
    Element? confidentialityElement,
    List<CompositionAttester>? attester,
    Reference? custodian,
    List<CompositionRelatesTo>? relatesTo,
    List<CompositionEvent>? event,
    List<CompositionSection>? section,
  }) {
    return Composition(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      type: type ?? this.type,
      category: category ?? this.category,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      author: author ?? this.author,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      confidentiality: confidentiality ?? this.confidentiality,
      confidentialityElement:
          confidentialityElement ?? this.confidentialityElement,
      attester: attester ?? this.attester,
      custodian: custodian ?? this.custodian,
      relatesTo: relatesTo ?? this.relatesTo,
      event: event ?? this.event,
      section: section ?? this.section,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CompositionAttester] /// A participant who has attested to the accuracy of the composition/document.
class CompositionAttester extends BackboneElement {
  CompositionAttester({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.mode,
    this.modeElement,
    this.time,
    this.timeElement,
    this.party,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [mode] /// The type of attestation the authenticator offers.
  final FhirCode mode;
  final Element? modeElement;

  /// [time] /// When the composition was attested by the party.
  final FhirDateTime? time;
  final Element? timeElement;

  /// [party] /// Who attested the composition in the specified way.
  final Reference? party;
  @override
  CompositionAttester clone() => throw UnimplementedError();
  CompositionAttester copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? mode,
    Element? modeElement,
    FhirDateTime? time,
    Element? timeElement,
    Reference? party,
  }) {
    return CompositionAttester(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      time: time ?? this.time,
      timeElement: timeElement ?? this.timeElement,
      party: party ?? this.party,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CompositionRelatesTo] /// Relationships that this composition has with other compositions or
/// documents that already exist.
class CompositionRelatesTo extends BackboneElement {
  CompositionRelatesTo({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    required this.targetIdentifier,
    required this.targetReference,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// The type of relationship that this composition has with anther composition
  /// or document.
  final FhirCode code;
  final Element? codeElement;

  /// [targetIdentifier] /// The target composition/document of this relationship.
  final Identifier targetIdentifier;

  /// [targetReference] /// The target composition/document of this relationship.
  final Reference targetReference;
  @override
  CompositionRelatesTo clone() => throw UnimplementedError();
  CompositionRelatesTo copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? code,
    Element? codeElement,
    Identifier? targetIdentifier,
    Reference? targetReference,
  }) {
    return CompositionRelatesTo(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      targetIdentifier: targetIdentifier ?? this.targetIdentifier,
      targetReference: targetReference ?? this.targetReference,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CompositionEvent] /// The clinical service, such as a colonoscopy or an appendectomy, being
/// documented.
class CompositionEvent extends BackboneElement {
  CompositionEvent({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.code,
    this.period,
    this.detail,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [code] /// This list of codes represents the main clinical acts, such as a colonoscopy
  /// or an appendectomy, being documented. In some cases, the event is inherent
  /// in the typeCode, such as a "History and Physical Report" in which the
  /// procedure being documented is necessarily a "History and Physical" act.
  final List<CodeableConcept>? code;

  /// [period] /// The period of time covered by the documentation. There is no assertion that
  /// the documentation is a complete representation for this period, only that
  /// it documents events during this time.
  final Period? period;

  /// [detail] /// The description and/or reference of the event(s) being documented. For
  /// example, this could be used to document such a colonoscopy or an
  /// appendectomy.
  final List<Reference>? detail;
  @override
  CompositionEvent clone() => throw UnimplementedError();
  CompositionEvent copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<CodeableConcept>? code,
    Period? period,
    List<Reference>? detail,
  }) {
    return CompositionEvent(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      code: code ?? this.code,
      period: period ?? this.period,
      detail: detail ?? this.detail,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [CompositionSection] /// The root of the sections that make up the composition.
class CompositionSection extends BackboneElement {
  CompositionSection({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.title,
    this.titleElement,
    this.code,
    this.author,
    this.focus,
    this.text,
    this.mode,
    this.modeElement,
    this.orderedBy,
    this.entry,
    this.emptyReason,
    this.section,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [title] /// The label for this particular section. This will be part of the rendered
  /// content for the document, and is often used to build a table of contents.
  final FhirString? title;
  final Element? titleElement;

  /// [code] /// A code identifying the kind of content contained within the section. This
  /// must be consistent with the section title.
  final CodeableConcept? code;

  /// [author] /// Identifies who is responsible for the information in this section, not
  /// necessarily who typed it in.
  final List<Reference>? author;

  /// [focus] /// The actual focus of the section when it is not the subject of the
  /// composition, but instead represents something or someone associated with
  /// the subject such as (for a patient subject) a spouse, parent, fetus, or
  /// donor. If not focus is specified, the focus is assumed to be focus of the
  /// parent section, or, for a section in the Composition itself, the subject of
  /// the composition. Sections with a focus SHALL only include resources where
  /// the logical subject (patient, subject, focus, etc.) matches the section
  /// focus, or the resources have no logical subject (few resources).
  final Reference? focus;

  /// [text] /// A human-readable narrative that contains the attested content of the
  /// section, used to represent the content of the resource to a human. The
  /// narrative need not encode all the structured data, but is required to
  /// contain sufficient detail to make it "clinically safe" for a human to just
  /// read the narrative.
  final Narrative? text;

  /// [mode] /// How the entry list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents a
  /// snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final FhirCode? mode;
  final Element? modeElement;

  /// [orderedBy] /// Specifies the order applied to the items in the section entries.
  final CodeableConcept? orderedBy;

  /// [entry] /// A reference to the actual resource from which the narrative in the section
  /// is derived.
  final List<Reference>? entry;

  /// [emptyReason] /// If the section is empty, why the list is empty. An empty section typically
  /// has some text explaining the empty reason.
  final CodeableConcept? emptyReason;

  /// [section] /// A nested sub-section within this section.
  final List<CompositionSection>? section;
  @override
  CompositionSection clone() => throw UnimplementedError();
  CompositionSection copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirString? title,
    Element? titleElement,
    CodeableConcept? code,
    List<Reference>? author,
    Reference? focus,
    Narrative? text,
    FhirCode? mode,
    Element? modeElement,
    CodeableConcept? orderedBy,
    List<Reference>? entry,
    CodeableConcept? emptyReason,
    List<CompositionSection>? section,
  }) {
    return CompositionSection(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      code: code ?? this.code,
      author: author ?? this.author,
      focus: focus ?? this.focus,
      text: text ?? this.text,
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      orderedBy: orderedBy ?? this.orderedBy,
      entry: entry ?? this.entry,
      emptyReason: emptyReason ?? this.emptyReason,
      section: section ?? this.section,
    );
  }
}
