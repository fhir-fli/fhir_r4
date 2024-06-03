import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [QuestionnaireResponse_Item] A structured set of questions and their
/// answers. The questions are ordered and grouped into coherent subsets,
/// corresponding to the structure of the grouping of the questionnaire being
/// responded to.

@freezed
class QuestionnaireResponse_Item with _$QuestionnaireResponse_Item {
  const QuestionnaireResponse_Item._();

  const factory QuestionnaireResponse_Item({
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
/// [linkId] The item from the Questionnaire that corresponds to this item
/// in the QuestionnaireResponse resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [definition] A reference to an
/// [ElementDefinition](elementdefinition.html) that provides the details for
/// the item.

    @JsonKey(name: 'definition') FhirUri? definition,
/// [_definition] Extensions for definition

    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
/// [text] Text that is displayed above the contents of the group or as the
/// text of the question being answered.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
/// [answer] The respondent's answer(s) to the question.

    @JsonKey(name: 'answer') List<List<QuestionnaireResponse_Answer>>? answer,
/// [item] Sub-questions, sub-groups or display items nested beneath a
/// group.

    @JsonKey(name: 'item') List<List<QuestionnaireResponse_Item>>? item,
  }) = _$QuestionnaireResponse_Item;

  @override
  String get fhirType => 'QuestionnaireResponse_Item';

  factory QuestionnaireResponse_Item.fromJson(Map<String, dynamic> json) =>
      _$QuestionnaireResponse_ItemFromJson(json);

  factory QuestionnaireResponse_Item.fromYaml(dynamic yaml) => yaml is String
      ? QuestionnaireResponse_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? QuestionnaireResponse_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'QuestionnaireResponse_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory QuestionnaireResponse_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$QuestionnaireResponse_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
