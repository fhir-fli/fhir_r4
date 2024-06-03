import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse_Item] This resource provides the adjudication details
/// from the processing of a Claim resource.

@freezed
class ClaimResponse_Item with _$ClaimResponse_Item {
  const ClaimResponse_Item._();

  const factory ClaimResponse_Item({
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
/// [itemSequence] A number to uniquely reference the claim item entries.

    @JsonKey(name: 'itemSequence') FhirPositiveInt? itemSequence,
/// [_itemSequence] Extensions for itemSequence

    @JsonKey(name: '_itemSequence') PrimitiveElement? itemSequenceElement,
/// [traceNumber] Trace number for tracking purposes. May be defined at the
/// jurisdiction level or between trading partners.

    @JsonKey(name: 'traceNumber') List<List<Identifier>>? traceNumber,
/// [noteNumber] The numbers associated with notes below which apply to the
/// adjudication of this item.

    @JsonKey(name: 'noteNumber') List<List<FhirPositiveInt>>? noteNumber,
/// [_noteNumber] Extensions for noteNumber

    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
/// [reviewOutcome] The high-level results of the adjudication if
/// adjudication has been performed.

    @JsonKey(name: 'reviewOutcome') ClaimResponse_ReviewOutcome? reviewOutcome,
/// [adjudication] If this item is a group then the values here are a
/// summary of the adjudication of the detail items. If this item is a simple
/// product or service then this is the result of the adjudication of this
/// item.

    @JsonKey(name: 'adjudication') List<List<ClaimResponse_Adjudication>>? adjudication,
/// [detail] A claim detail. Either a simple (a product or service) or a
/// 'group' of sub-details which are simple items.

    @JsonKey(name: 'detail') List<List<ClaimResponse_Detail>>? detail,
  }) = _$ClaimResponse_Item;

  @override
  String get fhirType => 'ClaimResponse_Item';

  factory ClaimResponse_Item.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_ItemFromJson(json);

  factory ClaimResponse_Item.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
