import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

part 'list.g.dart';

/// [FhirList] /// A list is a curated collection of resources.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.FhirList, fhirType: 'FhirList');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifier for the List assigned for business purposes outside the context
  /// of FHIR.
  @JsonKey(name: 'identifier')
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of this list.
  @JsonKey(name: 'status')
  final FhirCode status;
  @JsonKey(name: '_status')
  final Element? statusElement;

  /// [mode] /// How this list was prepared - whether it is a working list that is suitable
  /// for being maintained on an ongoing basis, or if it represents a snapshot of
  /// a list of items from another source, or whether it is a prepared list where
  /// items may be marked as added, modified or deleted.
  @JsonKey(name: 'mode')
  final FhirCode mode;
  @JsonKey(name: '_mode')
  final Element? modeElement;

  /// [title] /// A label for the list assigned by the author.
  @JsonKey(name: 'title')
  final FhirString? title;
  @JsonKey(name: '_title')
  final Element? titleElement;

  /// [code] /// This code defines the purpose of the list - why it was created.
  @JsonKey(name: 'code')
  final CodeableConcept? code;

  /// [subject] /// The common subject (or patient) of the resources that are in the list if
  /// there is one.
  @JsonKey(name: 'subject')
  final Reference? subject;

  /// [encounter] /// The encounter that is the context in which this list was created.
  @JsonKey(name: 'encounter')
  final Reference? encounter;

  /// [date] /// The date that the list was prepared.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [source] /// The entity responsible for deciding what the contents of the list were.
  /// Where the list was created by a human, this is the same as the author of
  /// the list.
  @JsonKey(name: 'source')
  final Reference? source;

  /// [orderedBy] /// What order applies to the items in the list.
  @JsonKey(name: 'orderedBy')
  final CodeableConcept? orderedBy;

  /// [note] /// Comments that apply to the overall list.
  @JsonKey(name: 'note')
  final List<Annotation>? note;

  /// [entry] /// Entries in this list.
  @JsonKey(name: 'entry')
  final List<ListEntry>? entry;

  /// [emptyReason] /// If the list is empty, why the list is empty.
  @JsonKey(name: 'emptyReason')
  final CodeableConcept? emptyReason;
  factory FhirList.fromJson(Map<String, dynamic> json) =>
      _$FhirListFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$FhirListToJson(this);

  @override
  FhirList clone() => throw UnimplementedError();
  @override
  FhirList copyWith({
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory FhirList.fromYaml(dynamic yaml) => yaml is String
      ? FhirList.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? FhirList.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'FhirList cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory FhirList.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirList.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}

/// [ListEntry] /// Entries in this list.
@JsonSerializable()
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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(fhirType: 'ListEntry');
  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [flag] /// The flag allows the system constructing the list to indicate the role and
  /// significance of the item in the list.
  @JsonKey(name: 'flag')
  final CodeableConcept? flag;

  /// [deleted] /// True if this item is marked as deleted in the list.
  @JsonKey(name: 'deleted')
  final FhirBoolean? deleted;
  @JsonKey(name: '_deleted')
  final Element? deletedElement;

  /// [date] /// When this item was added to the list.
  @JsonKey(name: 'date')
  final FhirDateTime? date;
  @JsonKey(name: '_date')
  final Element? dateElement;

  /// [item] /// A reference to the actual resource from which data was derived.
  @JsonKey(name: 'item')
  final Reference item;
  factory ListEntry.fromJson(Map<String, dynamic> json) =>
      _$ListEntryFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ListEntryToJson(this);

  @override
  ListEntry clone() => throw UnimplementedError();
  @override
  ListEntry copyWith({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    CodeableConcept? flag,
    FhirBoolean? deleted,
    Element? deletedElement,
    FhirDateTime? date,
    Element? dateElement,
    Reference? item,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
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
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }

  factory ListEntry.fromYaml(dynamic yaml) => yaml is String
      ? ListEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>)
      : yaml is YamlMap
          ? ListEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>)
          : throw ArgumentError(
              'ListEntry cannot be constructed from input provided, it is neither a yaml string nor a yaml map.');

  factory ListEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ListEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }
}
