import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Contract_Asset] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Asset with _$Contract_Asset {
  const Contract_Asset._();

  const factory Contract_Asset({
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
/// [scope] Differentiates the kind of the asset .

    @JsonKey(name: 'scope') CodeableConcept? scope,
/// [type] Target entity type about which the term may be concerned.

    @JsonKey(name: 'type') List<List<CodeableConcept>>? type,
/// [typeReference] Associated entities.

    @JsonKey(name: 'typeReference') List<List<Reference>>? typeReference,
/// [subtype] May be a subtype or part of an offered asset.

    @JsonKey(name: 'subtype') List<List<CodeableConcept>>? subtype,
/// [relationship] Specifies the applicability of the term to an asset
/// resource instance, and instances it refers to or instances that refer to
/// it, and/or are owned by the offeree.

    @JsonKey(name: 'relationship') Coding? relationship,
/// [context] Circumstance of the asset.

    @JsonKey(name: 'context') List<List<Contract_Context>>? context,
/// [condition] Description of the quality and completeness of the asset
/// that may be a factor in its valuation.

    @JsonKey(name: 'condition') String? condition,
/// [_condition] Extensions for condition

    @JsonKey(name: '_condition') PrimitiveElement? conditionElement,
/// [periodType] Type of Asset availability for use or ownership.

    @JsonKey(name: 'periodType') List<List<CodeableConcept>>? periodType,
/// [period] Asset relevant contractual time period.

    @JsonKey(name: 'period') List<List<Period>>? period,
/// [usePeriod] Time period of asset use.

    @JsonKey(name: 'usePeriod') List<List<Period>>? usePeriod,
/// [text] Clause or question text (Prose Object) concerning the asset in a
/// linked form, such as a QuestionnaireResponse used in the formation of the
/// contract.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
/// [linkId] Id [identifier??] of the clause or question text about the
/// asset in the referenced form or QuestionnaireResponse.

    @JsonKey(name: 'linkId') List<List<String>>? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,
/// [answer] Response to assets.

    @JsonKey(name: 'answer') List<List<Contract_Answer>>? answer,
/// [securityLabelNumber] Security labels that protects the asset.

    @JsonKey(name: 'securityLabelNumber') List<List<FhirUnsignedInt>>? securityLabelNumber,
/// [_securityLabelNumber] Extensions for securityLabelNumber

    @JsonKey(name: '_securityLabelNumber') List<PrimitiveElement>? securityLabelNumberElement,
/// [valuedItem] Contract Valued Item List.

    @JsonKey(name: 'valuedItem') List<List<Contract_ValuedItem>>? valuedItem,
  }) = _$Contract_Asset;

  @override
  String get fhirType => 'Contract_Asset';

  factory Contract_Asset.fromJson(Map<String, dynamic> json) =>
      _$Contract_AssetFromJson(json);

  factory Contract_Asset.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Asset.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Asset.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Asset cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Asset.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_AssetFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
