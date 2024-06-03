import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [List_Entry] A List is a curated collection of resources, for things
/// such as problem lists, allergy lists, facility list, organization list,
/// etc.

@freezed
class List_Entry with _$List_Entry {
  const List_Entry._();

  const factory List_Entry({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [flag] The flag allows the system constructing the list to indicate the
/// role and significance of the item in the list.

    @JsonKey(name: 'flag') CodeableConcept? flag,
/// [deleted] True if this item is marked as deleted in the list.

    @JsonKey(name: 'deleted') FhirBoolean? deleted,
/// [_deleted] Extensions for deleted

    @JsonKey(name: '_deleted') PrimitiveElement? deletedElement,
/// [date] When this item was added to the list.

    @JsonKey(name: 'date') FhirDateTime? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [item] A reference to the actual resource from which data was derived.

    @JsonKey(name: 'item') Reference? item,
  }) = _$List_Entry;

  @override
  String get fhirType => 'List_Entry';

  factory List_Entry.fromJson(Map<String, dynamic> json) =>
      _$List_EntryFromJson(json);

  factory List_Entry.fromYaml(dynamic yaml) => yaml is String
      ? List_Entry.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? List_Entry.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'List_Entry cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory List_Entry.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$List_EntryFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
