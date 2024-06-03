import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse_SubDetail1] This resource provides the adjudication
/// details from the processing of a Claim resource.

@freezed
class ClaimResponse_SubDetail1 with _$ClaimResponse_SubDetail1 {
  const ClaimResponse_SubDetail1._();

  const factory ClaimResponse_SubDetail1({
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
/// [traceNumber] Trace number for tracking purposes. May be defined at the
/// jurisdiction level or between trading partners.

    @JsonKey(name: 'traceNumber') List<List<Identifier>>? traceNumber,
/// [revenue] The type of revenue or cost center providing the product
/// and/or service.

    @JsonKey(name: 'revenue') CodeableConcept? revenue,
/// [productOrService] When the value is a group code then this item
/// collects a set of related item details, otherwise this contains the
/// product, service, drug or other billing code for the item. This element may
/// be the start of a range of .productOrService codes used in conjunction with
/// .productOrServiceEnd or it may be a solo element where .productOrServiceEnd
/// is not used.

    @JsonKey(name: 'productOrService') CodeableConcept? productOrService,
/// [productOrServiceEnd] This contains the end of a range of product,
/// service, drug or other billing codes for the item. This element is not used
/// when the .productOrService is a group code. This value may only be present
/// when a .productOfService code has been provided to convey the start of the
/// range. Typically this value may be used only with preauthorizations and not
/// with claims.

    @JsonKey(name: 'productOrServiceEnd') CodeableConcept? productOrServiceEnd,
/// [modifier] Item typification or modifiers codes to convey additional
/// context for the product or service.

    @JsonKey(name: 'modifier') List<List<CodeableConcept>>? modifier,
/// [quantity] The number of repetitions of a service or product.

    @JsonKey(name: 'quantity') Quantity? quantity,
/// [unitPrice] If the item is not a group then this is the fee for the
/// product or service, otherwise this is the total of the fees for the details
/// of the group.

    @JsonKey(name: 'unitPrice') Money? unitPrice,
/// [factor] A real number that represents a multiplier used in determining
/// the overall value of services delivered and/or goods received. The concept
/// of a Factor allows for a discount or surcharge multiplier to be applied to
/// a monetary amount.

    @JsonKey(name: 'factor') FhirDecimal? factor,
/// [_factor] Extensions for factor

    @JsonKey(name: '_factor') PrimitiveElement? factorElement,
/// [tax] The total of taxes applicable for this product or service.

    @JsonKey(name: 'tax') Money? tax,
/// [net] The total amount claimed for the addItem.detail.subDetail. Net =
/// unit price * quantity * factor.

    @JsonKey(name: 'net') Money? net,
/// [noteNumber] The numbers associated with notes below which apply to the
/// adjudication of this item.

    @JsonKey(name: 'noteNumber') List<List<FhirPositiveInt>>? noteNumber,
/// [_noteNumber] Extensions for noteNumber

    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
/// [reviewOutcome] The high-level results of the adjudication if
/// adjudication has been performed.

    @JsonKey(name: 'reviewOutcome') ClaimResponse_ReviewOutcome? reviewOutcome,
/// [adjudication] The adjudication results.

    @JsonKey(name: 'adjudication') List<List<ClaimResponse_Adjudication>>? adjudication,
  }) = _$ClaimResponse_SubDetail1;

  @override
  String get fhirType => 'ClaimResponse_SubDetail1';

  factory ClaimResponse_SubDetail1.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_SubDetail1FromJson(json);

  factory ClaimResponse_SubDetail1.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_SubDetail1.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_SubDetail1.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_SubDetail1 cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_SubDetail1.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_SubDetail1FromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
