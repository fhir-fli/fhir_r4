import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Contract_Offer] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Offer with _$Contract_Offer {
  const Contract_Offer._();

  const factory Contract_Offer({
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
/// [identifier] Unique identifier for this particular Contract Provision.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [party] Offer Recipient.

    @JsonKey(name: 'party') List<List<Contract_Party>>? party,
/// [topic] The owner of an asset has the residual control rights over the
/// asset: the right to decide all usages of the asset in any way not
/// inconsistent with a prior contract, custom, or law (Hart, 1995, p. 30).

    @JsonKey(name: 'topic') Reference? topic,
/// [type] Type of Contract Provision such as specific requirements,
/// purposes for actions, obligations, prohibitions, e.g. life time maximum
/// benefit.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [decision] Type of choice made by accepting party with respect to an
/// offer made by an offeror/ grantee.

    @JsonKey(name: 'decision') CodeableConcept? decision,
/// [decisionMode] How the decision about a Contract was conveyed.

    @JsonKey(name: 'decisionMode') List<List<CodeableConcept>>? decisionMode,
/// [answer] Response to offer text.

    @JsonKey(name: 'answer') List<List<Contract_Answer>>? answer,
/// [text] Human readable form of this Contract Offer.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
/// [linkId] The id of the clause or question text of the offer in the
/// referenced questionnaire/response.

    @JsonKey(name: 'linkId') List<List<String>>? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,
/// [securityLabelNumber] Security labels that protects the offer.

    @JsonKey(name: 'securityLabelNumber') List<List<FhirUnsignedInt>>? securityLabelNumber,
/// [_securityLabelNumber] Extensions for securityLabelNumber

    @JsonKey(name: '_securityLabelNumber') List<PrimitiveElement>? securityLabelNumberElement,
  }) = _$Contract_Offer;

  @override
  String get fhirType => 'Contract_Offer';

  factory Contract_Offer.fromJson(Map<String, dynamic> json) =>
      _$Contract_OfferFromJson(json);

  factory Contract_Offer.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Offer.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Offer.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Offer cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Offer.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_OfferFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
