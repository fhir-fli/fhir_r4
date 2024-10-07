import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [FhirList] /// A list is a curated collection of resources.
class FhirList extends DomainResource {
  FhirList({
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
    required this.mode,
    this.modeElement,
    this.title,
    this.titleElement,
    this.code,
    this.subject,
    this.encounter,
    this.date,
    this.dateElement,
    this.source,
    this.orderedBy,
    this.note,
    this.entry,
    this.emptyReason,
  }) : super(resourceType: R4ResourceType.FhirList);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the List assigned for business purposes outside the context
  /// of FHIR.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of this list.
  final FhirCode status;
  final Element? statusElement;

  /// [mode] /// How this list was prepared - whether it is a working list that is suitable
  /// for being maintained on an ongoing basis, or if it represents a snapshot of
  /// a list of items from another source, or whether it is a prepared list where
  /// items may be marked as added, modified or deleted.
  final FhirCode mode;
  final Element? modeElement;

  /// [title] /// A label for the list assigned by the author.
  final FhirString? title;
  final Element? titleElement;

  /// [code] /// This code defines the purpose of the list - why it was created.
  final CodeableConcept? code;

  /// [subject] /// The common subject (or patient) of the resources that are in the list if
  /// there is one.
  final Reference? subject;

  /// [encounter] /// The encounter that is the context in which this list was created.
  final Reference? encounter;

  /// [date] /// The date that the list was prepared.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [source] /// The entity responsible for deciding what the contents of the list were.
  /// Where the list was created by a human, this is the same as the author of
  /// the list.
  final Reference? source;

  /// [orderedBy] /// What order applies to the items in the list.
  final CodeableConcept? orderedBy;

  /// [note] /// Comments that apply to the overall list.
  final List<Annotation>? note;

  /// [entry] /// Entries in this list.
  final List<ListEntry>? entry;

  /// [emptyReason] /// If the list is empty, why the list is empty.
  final CodeableConcept? emptyReason;
  @override
  FhirList clone() => throw UnimplementedError();
  FhirList copy({
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
    FhirCode? status,
    Element? statusElement,
    FhirCode? mode,
    Element? modeElement,
    FhirString? title,
    Element? titleElement,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
    Element? dateElement,
    Reference? source,
    CodeableConcept? orderedBy,
    List<Annotation>? note,
    List<ListEntry>? entry,
    CodeableConcept? emptyReason,
  }) {
    return FhirList(
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
      mode: mode ?? this.mode,
      modeElement: modeElement ?? this.modeElement,
      title: title ?? this.title,
      titleElement: titleElement ?? this.titleElement,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      source: source ?? this.source,
      orderedBy: orderedBy ?? this.orderedBy,
      note: note ?? this.note,
      entry: entry ?? this.entry,
      emptyReason: emptyReason ?? this.emptyReason,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [ListEntry] /// Entries in this list.
class ListEntry extends BackboneElement {
  ListEntry({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.flag,
    this.deleted,
    this.deletedElement,
    this.date,
    this.dateElement,
    required this.item,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [flag] /// The flag allows the system constructing the list to indicate the role and
  /// significance of the item in the list.
  final CodeableConcept? flag;

  /// [deleted] /// True if this item is marked as deleted in the list.
  final FhirBoolean? deleted;
  final Element? deletedElement;

  /// [date] /// When this item was added to the list.
  final FhirDateTime? date;
  final Element? dateElement;

  /// [item] /// A reference to the actual resource from which data was derived.
  final Reference item;
  @override
  ListEntry clone() => throw UnimplementedError();
  ListEntry copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? flag,
    FhirBoolean? deleted,
    Element? deletedElement,
    FhirDateTime? date,
    Element? dateElement,
    Reference? item,
  }) {
    return ListEntry(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      flag: flag ?? this.flag,
      deleted: deleted ?? this.deleted,
      deletedElement: deletedElement ?? this.deletedElement,
      date: date ?? this.date,
      dateElement: dateElement ?? this.dateElement,
      item: item ?? this.item,
    );
  }
}
