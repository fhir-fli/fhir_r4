import 'dart:convert';
import 'package:objectbox/objectbox.dart';
import 'package:yaml/yaml.dart';

import '../../../fhir_r4.dart';

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
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  }) : super(resourceType: R4ResourceType.FhirList);

  @override
  String get fhirType => 'FhirList';

  @Id()
  int dbId = 0;

  /// [identifier] /// Identifier for the List assigned for business purposes outside the context
  /// of FHIR.
  final List<Identifier>? identifier;

  /// [status] /// Indicates the current state of this list.
  final ListStatus status;
  final Element? statusElement;

  /// [mode] /// How this list was prepared - whether it is a working list that is suitable
  /// for being maintained on an ongoing basis, or if it represents a snapshot of
  /// a list of items from another source, or whether it is a prepared list where
  /// items may be marked as added, modified or deleted.
  final ListMode mode;
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (meta != null) {
      json['meta'] = meta!.toJson();
    }
    if (implicitRules?.value != null) {
      json['implicitRules'] = implicitRules!.value;
    }
    if (implicitRulesElement != null) {
      json['_implicitRules'] = implicitRulesElement!.toJson();
    }
    if (language != null) {
      json['language'] = language!.toJson();
    }
    if (text != null) {
      json['text'] = text!.toJson();
    }
    if (contained != null && contained!.isNotEmpty) {
      json['contained'] =
          contained!.map<dynamic>((Resource v) => v.toJson()).toList();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (identifier != null && identifier!.isNotEmpty) {
      json['identifier'] =
          identifier!.map<dynamic>((Identifier v) => v.toJson()).toList();
    }
    json['status'] = status.toJson();
    json['mode'] = mode.toJson();
    if (title?.value != null) {
      json['title'] = title!.value;
    }
    if (titleElement != null) {
      json['_title'] = titleElement!.toJson();
    }
    if (code != null) {
      json['code'] = code!.toJson();
    }
    if (subject != null) {
      json['subject'] = subject!.toJson();
    }
    if (encounter != null) {
      json['encounter'] = encounter!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    if (source != null) {
      json['source'] = source!.toJson();
    }
    if (orderedBy != null) {
      json['orderedBy'] = orderedBy!.toJson();
    }
    if (note != null && note!.isNotEmpty) {
      json['note'] = note!.map<dynamic>((Annotation v) => v.toJson()).toList();
    }
    if (entry != null && entry!.isNotEmpty) {
      json['entry'] = entry!.map<dynamic>((ListEntry v) => v.toJson()).toList();
    }
    if (emptyReason != null) {
      json['emptyReason'] = emptyReason!.toJson();
    }
    return json;
  }

  factory FhirList.fromJson(Map<String, dynamic> json) {
    return FhirList(
      id: json['id'] != null ? FhirString(json['id']) : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(json['meta'] as Map<String, dynamic>)
          : null,
      implicitRules:
          json['implicitRules'] != null ? FhirUri(json['implicitRules']) : null,
      implicitRulesElement: json['_implicitRules'] != null
          ? Element.fromJson(json['_implicitRules'] as Map<String, dynamic>)
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson(json['language'] as Map<String, dynamic>)
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(json['text'] as Map<String, dynamic>)
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                  (dynamic v) => Resource.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                  (dynamic v) => Identifier.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      status: ListStatus.fromJson(json['status'] as Map<String, dynamic>),
      mode: ListMode.fromJson(json['mode'] as Map<String, dynamic>),
      title: json['title'] != null ? FhirString(json['title']) : null,
      titleElement: json['_title'] != null
          ? Element.fromJson(json['_title'] as Map<String, dynamic>)
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(json['code'] as Map<String, dynamic>)
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(json['subject'] as Map<String, dynamic>)
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(json['encounter'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      source: json['source'] != null
          ? Reference.fromJson(json['source'] as Map<String, dynamic>)
          : null,
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(json['orderedBy'] as Map<String, dynamic>)
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                  (dynamic v) => Annotation.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<ListEntry>(
                  (dynamic v) => ListEntry.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>)
          : null,
    );
  }
  @override
  FhirList clone() => throw UnimplementedError();
  @override
  FhirList copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    CommonLanguages? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ListStatus? status,
    Element? statusElement,
    ListMode? mode,
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
  });

  @override
  String get fhirType => 'ListEntry';

  @Id()
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
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    if (id != null) {
      json['id'] = id!.toJson();
    }
    if (extension_ != null && extension_!.isNotEmpty) {
      json['extension'] =
          extension_!.map<dynamic>((FhirExtension v) => v.toJson()).toList();
    }
    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      json['modifierExtension'] = modifierExtension!
          .map<dynamic>((FhirExtension v) => v.toJson())
          .toList();
    }
    if (flag != null) {
      json['flag'] = flag!.toJson();
    }
    if (deleted?.value != null) {
      json['deleted'] = deleted!.value;
    }
    if (deletedElement != null) {
      json['_deleted'] = deletedElement!.toJson();
    }
    if (date?.value != null) {
      json['date'] = date!.value;
    }
    if (dateElement != null) {
      json['_date'] = dateElement!.toJson();
    }
    json['item'] = item.toJson();
    return json;
  }

  factory ListEntry.fromJson(Map<String, dynamic> json) {
    return ListEntry(
      id: json['id'] != null ? FhirString(json['id']) : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>((dynamic v) =>
                  FhirExtension.fromJson(v as Map<String, dynamic>))
              .toList()
          : null,
      flag: json['flag'] != null
          ? CodeableConcept.fromJson(json['flag'] as Map<String, dynamic>)
          : null,
      deleted: json['deleted'] != null ? FhirBoolean(json['deleted']) : null,
      deletedElement: json['_deleted'] != null
          ? Element.fromJson(json['_deleted'] as Map<String, dynamic>)
          : null,
      date: json['date'] != null ? FhirDateTime(json['date']) : null,
      dateElement: json['_date'] != null
          ? Element.fromJson(json['_date'] as Map<String, dynamic>)
          : null,
      item: Reference.fromJson(json['item'] as Map<String, dynamic>),
    );
  }
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
