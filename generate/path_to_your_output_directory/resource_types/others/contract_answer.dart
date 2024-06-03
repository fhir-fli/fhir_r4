import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Contract_Answer] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Answer with _$Contract_Answer {
  const Contract_Answer._();

  const factory Contract_Answer({
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
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [valueBoolean] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueBoolean') FhirBoolean? valueBoolean,
/// [_valueBoolean] Extensions for valueBoolean

    @JsonKey(name: '_valueBoolean') PrimitiveElement? valueBooleanElement,
/// [valueDecimal] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueDecimal') FhirDecimal? valueDecimal,
/// [_valueDecimal] Extensions for valueDecimal

    @JsonKey(name: '_valueDecimal') PrimitiveElement? valueDecimalElement,
/// [valueInteger] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueInteger') FhirInteger? valueInteger,
/// [_valueInteger] Extensions for valueInteger

    @JsonKey(name: '_valueInteger') PrimitiveElement? valueIntegerElement,
/// [valueDate] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueDate') FhirDate? valueDate,
/// [_valueDate] Extensions for valueDate

    @JsonKey(name: '_valueDate') PrimitiveElement? valueDateElement,
/// [valueDateTime] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueDateTime') FhirDateTime? valueDateTime,
/// [_valueDateTime] Extensions for valueDateTime

    @JsonKey(name: '_valueDateTime') PrimitiveElement? valueDateTimeElement,
/// [valueTime] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueTime') FhirTime? valueTime,
/// [_valueTime] Extensions for valueTime

    @JsonKey(name: '_valueTime') PrimitiveElement? valueTimeElement,
/// [valueString] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueString') String? valueString,
/// [_valueString] Extensions for valueString

    @JsonKey(name: '_valueString') PrimitiveElement? valueStringElement,
/// [valueUri] Response to an offer clause or question text,  which enables
/// selection of values to be agreed to, e.g., the period of participation, the
/// date of occupancy of a rental, warranty duration, or whether biospecimen
/// may be used for further research.

    @JsonKey(name: 'valueUri') FhirUri? valueUri,
/// [_valueUri] Extensions for valueUri

    @JsonKey(name: '_valueUri') PrimitiveElement? valueUriElement,
/// [valueAttachment] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueAttachment') Attachment? valueAttachment,
/// [valueCoding] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueCoding') Coding? valueCoding,
/// [valueQuantity] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueQuantity') Quantity? valueQuantity,
/// [valueReference] Response to an offer clause or question text,  which
/// enables selection of values to be agreed to, e.g., the period of
/// participation, the date of occupancy of a rental, warranty duration, or
/// whether biospecimen may be used for further research.

    @JsonKey(name: 'valueReference') Reference? valueReference,
  }) = _$Contract_Answer;

  @override
  String get fhirType => 'Contract_Answer';

  factory Contract_Answer.fromJson(Map<String, dynamic> json) =>
      _$Contract_AnswerFromJson(json);

  factory Contract_Answer.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Answer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Answer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Answer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Answer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_AnswerFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
