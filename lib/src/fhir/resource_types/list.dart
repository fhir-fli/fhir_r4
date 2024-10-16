import 'dart:convert';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:yaml/yaml.dart';

/// [FhirList]
/// A list is a curated collection of resources.
class FhirList extends DomainResource {
  /// Primary constructor for [FhirList]

  FhirList({
    super.id,
    super.meta,
    super.implicitRules,
    super.language,
    super.text,
    super.contained,
    this.extension_,
    super.modifierExtension,
    this.identifier,
    required this.status,
    required this.mode,
    this.title,
    this.code,
    this.subject,
    this.encounter,
    this.date,
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
  }) : super(
          resourceType: R4ResourceType.FhirList,
        );

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory FhirList.fromJson(Map<String, dynamic> json) {
    return FhirList(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      meta: json['meta'] != null
          ? FhirMeta.fromJson(
              json['meta'] as Map<String, dynamic>,
            )
          : null,
      implicitRules: json['implicitRules'] != null
          ? FhirUri.fromJson({
              'value': json['implicitRules'],
              '_value': json['_implicitRules'],
            })
          : null,
      language: json['language'] != null
          ? CommonLanguages.fromJson({
              'value': json['language'],
              '_value': json['_language'],
            })
          : null,
      text: json['text'] != null
          ? Narrative.fromJson(
              json['text'] as Map<String, dynamic>,
            )
          : null,
      contained: json['contained'] != null
          ? (json['contained'] as List<dynamic>)
              .map<Resource>(
                (v) => Resource.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      identifier: json['identifier'] != null
          ? (json['identifier'] as List<dynamic>)
              .map<Identifier>(
                (v) => Identifier.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      status: ListStatus.fromJson({
        'value': json['status'],
        '_value': json['_status'],
      }),
      mode: ListMode.fromJson({
        'value': json['mode'],
        '_value': json['_mode'],
      }),
      title: json['title'] != null
          ? FhirString.fromJson({
              'value': json['title'],
              '_value': json['_title'],
            })
          : null,
      code: json['code'] != null
          ? CodeableConcept.fromJson(
              json['code'] as Map<String, dynamic>,
            )
          : null,
      subject: json['subject'] != null
          ? Reference.fromJson(
              json['subject'] as Map<String, dynamic>,
            )
          : null,
      encounter: json['encounter'] != null
          ? Reference.fromJson(
              json['encounter'] as Map<String, dynamic>,
            )
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      source: json['source'] != null
          ? Reference.fromJson(
              json['source'] as Map<String, dynamic>,
            )
          : null,
      orderedBy: json['orderedBy'] != null
          ? CodeableConcept.fromJson(
              json['orderedBy'] as Map<String, dynamic>,
            )
          : null,
      note: json['note'] != null
          ? (json['note'] as List<dynamic>)
              .map<Annotation>(
                (v) => Annotation.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      entry: json['entry'] != null
          ? (json['entry'] as List<dynamic>)
              .map<ListEntry>(
                (v) => ListEntry.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      emptyReason: json['emptyReason'] != null
          ? CodeableConcept.fromJson(
              json['emptyReason'] as Map<String, dynamic>,
            )
          : null,
    );
  }

  /// Deserialize [FhirList] from a [String]
  /// or [YamlMap] object
  factory FhirList.fromYaml(dynamic yaml) => yaml is String
      ? FhirList.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? FhirList.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('FhirList cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [FhirList]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory FhirList.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return FhirList.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'FhirList';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the resource. To make the use of extensions safe
  /// and manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [identifier]
  /// Identifier for the List assigned for business purposes outside the
  /// context of FHIR.
  final List<Identifier>? identifier;

  /// [status]
  /// Indicates the current state of this list.
  final ListStatus status;

  /// [mode]
  /// How this list was prepared - whether it is a working list that is
  /// suitable for being maintained on an ongoing basis, or if it represents
  /// a snapshot of a list of items from another source, or whether it is a
  /// prepared list where items may be marked as added, modified or deleted.
  final ListMode mode;

  /// [title]
  /// A label for the list assigned by the author.
  final FhirString? title;

  /// [code]
  /// This code defines the purpose of the list - why it was created.
  final CodeableConcept? code;

  /// [subject]
  /// The common subject (or patient) of the resources that are in the list
  /// if there is one.
  final Reference? subject;

  /// [encounter]
  /// The encounter that is the context in which this list was created.
  final Reference? encounter;

  /// [date]
  /// The date that the list was prepared.
  final FhirDateTime? date;

  /// [source]
  /// The entity responsible for deciding what the contents of the list were.
  /// Where the list was created by a human, this is the same as the author
  /// of the list.
  final Reference? source;

  /// [orderedBy]
  /// What order applies to the items in the list.
  final CodeableConcept? orderedBy;

  /// [note]
  /// Comments that apply to the overall list.
  final List<Annotation>? note;

  /// [entry]
  /// Entries in this list.
  final List<ListEntry>? entry;

  /// [emptyReason]
  /// If the list is empty, why the list is empty.
  final CodeableConcept? emptyReason;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    json['resourceType'] = resourceType.toJson();
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (meta != null) {
      final fieldJson1 = meta!.toJson();
      json['meta'] = fieldJson1['value'];
      if (fieldJson1['_value'] != null) {
        json['_meta'] = fieldJson1['_value'];
      }
    }

    if (implicitRules != null) {
      final fieldJson2 = implicitRules!.toJson();
      json['implicitRules'] = fieldJson2['value'];
      if (fieldJson2['_value'] != null) {
        json['_implicitRules'] = fieldJson2['_value'];
      }
    }

    if (language != null) {
      final fieldJson3 = language!.toJson();
      json['language'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_language'] = fieldJson3['_value'];
      }
    }

    if (text != null) {
      final fieldJson4 = text!.toJson();
      json['text'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_text'] = fieldJson4['_value'];
      }
    }

    if (contained != null && contained!.isNotEmpty) {
      final fieldJson5 = contained!.map((e) => e.toJson()).toList();
      json['contained'] = fieldJson5.map((e) => e['value']).toList();
      if (fieldJson5.any((e) => e['_value'] != null)) {
        json['_contained'] = fieldJson5.map((e) => e['_value']).toList();
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson6 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson6.map((e) => e['value']).toList();
      if (fieldJson6.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson6.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson7 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson7.map((e) => e['value']).toList();
      if (fieldJson7.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson7.map((e) => e['_value']).toList();
      }
    }

    if (identifier != null && identifier!.isNotEmpty) {
      final fieldJson8 = identifier!.map((e) => e.toJson()).toList();
      json['identifier'] = fieldJson8.map((e) => e['value']).toList();
      if (fieldJson8.any((e) => e['_value'] != null)) {
        json['_identifier'] = fieldJson8.map((e) => e['_value']).toList();
      }
    }

    final fieldJson9 = status.toJson();
    json['status'] = fieldJson9['value'];
    if (fieldJson9['_value'] != null) {
      json['_status'] = fieldJson9['_value'];
    }

    final fieldJson10 = mode.toJson();
    json['mode'] = fieldJson10['value'];
    if (fieldJson10['_value'] != null) {
      json['_mode'] = fieldJson10['_value'];
    }

    if (title != null) {
      final fieldJson11 = title!.toJson();
      json['title'] = fieldJson11['value'];
      if (fieldJson11['_value'] != null) {
        json['_title'] = fieldJson11['_value'];
      }
    }

    if (code != null) {
      final fieldJson12 = code!.toJson();
      json['code'] = fieldJson12['value'];
      if (fieldJson12['_value'] != null) {
        json['_code'] = fieldJson12['_value'];
      }
    }

    if (subject != null) {
      final fieldJson13 = subject!.toJson();
      json['subject'] = fieldJson13['value'];
      if (fieldJson13['_value'] != null) {
        json['_subject'] = fieldJson13['_value'];
      }
    }

    if (encounter != null) {
      final fieldJson14 = encounter!.toJson();
      json['encounter'] = fieldJson14['value'];
      if (fieldJson14['_value'] != null) {
        json['_encounter'] = fieldJson14['_value'];
      }
    }

    if (date != null) {
      final fieldJson15 = date!.toJson();
      json['date'] = fieldJson15['value'];
      if (fieldJson15['_value'] != null) {
        json['_date'] = fieldJson15['_value'];
      }
    }

    if (source != null) {
      final fieldJson16 = source!.toJson();
      json['source'] = fieldJson16['value'];
      if (fieldJson16['_value'] != null) {
        json['_source'] = fieldJson16['_value'];
      }
    }

    if (orderedBy != null) {
      final fieldJson17 = orderedBy!.toJson();
      json['orderedBy'] = fieldJson17['value'];
      if (fieldJson17['_value'] != null) {
        json['_orderedBy'] = fieldJson17['_value'];
      }
    }

    if (note != null && note!.isNotEmpty) {
      final fieldJson18 = note!.map((e) => e.toJson()).toList();
      json['note'] = fieldJson18.map((e) => e['value']).toList();
      if (fieldJson18.any((e) => e['_value'] != null)) {
        json['_note'] = fieldJson18.map((e) => e['_value']).toList();
      }
    }

    if (entry != null && entry!.isNotEmpty) {
      final fieldJson19 = entry!.map((e) => e.toJson()).toList();
      json['entry'] = fieldJson19.map((e) => e['value']).toList();
      if (fieldJson19.any((e) => e['_value'] != null)) {
        json['_entry'] = fieldJson19.map((e) => e['_value']).toList();
      }
    }

    if (emptyReason != null) {
      final fieldJson20 = emptyReason!.toJson();
      json['emptyReason'] = fieldJson20['value'];
      if (fieldJson20['_value'] != null) {
        json['_emptyReason'] = fieldJson20['_value'];
      }
    }

    return json;
  }

  @override
  FhirList clone() => throw UnimplementedError();
  @override
  FhirList copyWith({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    CommonLanguages? language,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    ListStatus? status,
    ListMode? mode,
    FhirString? title,
    CodeableConcept? code,
    Reference? subject,
    Reference? encounter,
    FhirDateTime? date,
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
      language: language ?? this.language,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      status: status ?? this.status,
      mode: mode ?? this.mode,
      title: title ?? this.title,
      code: code ?? this.code,
      subject: subject ?? this.subject,
      encounter: encounter ?? this.encounter,
      date: date ?? this.date,
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
}

/// [ListEntry]
/// Entries in this list.
class ListEntry extends BackboneElement {
  /// Primary constructor for [ListEntry]

  ListEntry({
    super.id,
    this.extension_,
    super.modifierExtension,
    this.flag,
    this.deleted,
    this.date,
    required this.item,
    super.userData,
    super.formatCommentsPre,
    super.formatCommentsPost,
    super.annotations,
    super.children,
    super.namedChildren,
  });

  /// Factory constructor that accepts [Map<String, dynamic>] as an argument
  factory ListEntry.fromJson(Map<String, dynamic> json) {
    return ListEntry(
      id: json['id'] != null
          ? FhirString.fromJson(
              json['id'] as Map<String, dynamic>,
            )
          : null,
      extension_: json['extension'] != null
          ? (json['extension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      modifierExtension: json['modifierExtension'] != null
          ? (json['modifierExtension'] as List<dynamic>)
              .map<FhirExtension>(
                (v) => FhirExtension.fromJson(
                  v as Map<String, dynamic>,
                ),
              )
              .toList()
          : null,
      flag: json['flag'] != null
          ? CodeableConcept.fromJson(
              json['flag'] as Map<String, dynamic>,
            )
          : null,
      deleted: json['deleted'] != null
          ? FhirBoolean.fromJson({
              'value': json['deleted'],
              '_value': json['_deleted'],
            })
          : null,
      date: json['date'] != null
          ? FhirDateTime.fromJson({
              'value': json['date'],
              '_value': json['_date'],
            })
          : null,
      item: Reference.fromJson(
        json['item'] as Map<String, dynamic>,
      ),
    );
  }

  /// Deserialize [ListEntry] from a [String]
  /// or [YamlMap] object
  factory ListEntry.fromYaml(dynamic yaml) => yaml is String
      ? ListEntry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, Object?>,
        )
      : yaml is YamlMap
          ? ListEntry.fromJson(
              jsonDecode(jsonEncode(yaml)) as Map<String, Object?>,
            )
          : throw ArgumentError('ListEntry cannot be constructed from '
              'input provided, it is neither a yaml string nor a yaml map.');

  /// Factory constructor for [ListEntry]
  /// that takes in a [String]
  /// Convenience method to avoid the json Encoding/Decoding normally required
  /// to get data from a [String]
  factory ListEntry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, Object?>) {
      return ListEntry.fromJson(json);
    } else {
      throw FormatException('FormatException: You passed $json '
          'This does not properly decode to a Map<String, Object?>.');
    }
  }

  @override
  String get fhirType => 'ListEntry';

  /// [extension_]
  /// May be used to represent additional information that is not part of the
  /// basic definition of the element. To make the use of extensions safe and
  /// manageable, there is a strict set of governance applied to the
  /// definition and use of extensions. Though any implementer can define an
  /// extension, there is a set of requirements that SHALL be met as part of
  /// the definition of the extension.
  final List<FhirExtension>? extension_;

  /// [flag]
  /// The flag allows the system constructing the list to indicate the role
  /// and significance of the item in the list.
  final CodeableConcept? flag;

  /// [deleted]
  /// True if this item is marked as deleted in the list.
  final FhirBoolean? deleted;

  /// [date]
  /// When this item was added to the list.
  final FhirDateTime? date;

  /// [item]
  /// A reference to the actual resource from which data was derived.
  final Reference item;
  @override
  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      final fieldJson0 = id!.toJson();
      json['id'] = fieldJson0['value'];
      if (fieldJson0['_value'] != null) {
        json['_id'] = fieldJson0['_value'];
      }
    }

    if (extension_ != null && extension_!.isNotEmpty) {
      final fieldJson1 = extension_!.map((e) => e.toJson()).toList();
      json['extension'] = fieldJson1.map((e) => e['value']).toList();
      if (fieldJson1.any((e) => e['_value'] != null)) {
        json['_extension'] = fieldJson1.map((e) => e['_value']).toList();
      }
    }

    if (modifierExtension != null && modifierExtension!.isNotEmpty) {
      final fieldJson2 = modifierExtension!.map((e) => e.toJson()).toList();
      json['modifierExtension'] = fieldJson2.map((e) => e['value']).toList();
      if (fieldJson2.any((e) => e['_value'] != null)) {
        json['_modifierExtension'] =
            fieldJson2.map((e) => e['_value']).toList();
      }
    }

    if (flag != null) {
      final fieldJson3 = flag!.toJson();
      json['flag'] = fieldJson3['value'];
      if (fieldJson3['_value'] != null) {
        json['_flag'] = fieldJson3['_value'];
      }
    }

    if (deleted != null) {
      final fieldJson4 = deleted!.toJson();
      json['deleted'] = fieldJson4['value'];
      if (fieldJson4['_value'] != null) {
        json['_deleted'] = fieldJson4['_value'];
      }
    }

    if (date != null) {
      final fieldJson5 = date!.toJson();
      json['date'] = fieldJson5['value'];
      if (fieldJson5['_value'] != null) {
        json['_date'] = fieldJson5['_value'];
      }
    }

    final fieldJson6 = item.toJson();
    json['item'] = fieldJson6['value'];
    if (fieldJson6['_value'] != null) {
      json['_item'] = fieldJson6['_value'];
    }

    return json;
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
    FhirDateTime? date,
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
      date: date ?? this.date,
      item: item ?? this.item,
      userData: userData ?? this.userData,
      formatCommentsPre: formatCommentsPre ?? this.formatCommentsPre,
      formatCommentsPost: formatCommentsPost ?? this.formatCommentsPost,
      annotations: annotations ?? this.annotations,
      children: children ?? this.children,
      namedChildren: namedChildren ?? this.namedChildren,
    );
  }
}
