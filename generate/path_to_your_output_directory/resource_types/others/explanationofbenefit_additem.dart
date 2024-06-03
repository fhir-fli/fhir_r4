import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ExplanationOfBenefit_AddItem] This resource provides: the claim
/// details; adjudication details from the processing of a Claim; and
/// optionally account balance information, for informing the subscriber of the
/// benefits provided.

@freezed
class ExplanationOfBenefit_AddItem with _$ExplanationOfBenefit_AddItem {
  const ExplanationOfBenefit_AddItem._();

  const factory ExplanationOfBenefit_AddItem({
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
/// [itemSequence] Claim items which this service line is intended to
/// replace.

    @JsonKey(name: 'itemSequence') List<List<FhirPositiveInt>>? itemSequence,
/// [_itemSequence] Extensions for itemSequence

    @JsonKey(name: '_itemSequence') List<PrimitiveElement>? itemSequenceElement,
/// [detailSequence] The sequence number of the details within the claim
/// item which this line is intended to replace.

    @JsonKey(name: 'detailSequence') List<List<FhirPositiveInt>>? detailSequence,
/// [_detailSequence] Extensions for detailSequence

    @JsonKey(name: '_detailSequence') List<PrimitiveElement>? detailSequenceElement,
/// [subDetailSequence] The sequence number of the sub-details woithin the
/// details within the claim item which this line is intended to replace.

    @JsonKey(name: 'subDetailSequence') List<List<FhirPositiveInt>>? subDetailSequence,
/// [_subDetailSequence] Extensions for subDetailSequence

    @JsonKey(name: '_subDetailSequence') List<PrimitiveElement>? subDetailSequenceElement,
/// [traceNumber] Trace number for tracking purposes. May be defined at the
/// jurisdiction level or between trading partners.

    @JsonKey(name: 'traceNumber') List<List<Identifier>>? traceNumber,
/// [provider] The providers who are authorized for the services rendered
/// to the patient.

    @JsonKey(name: 'provider') List<List<Reference>>? provider,
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
/// [request] Request or Referral for Goods or Service to be rendered.

    @JsonKey(name: 'request') List<List<Reference>>? request,
/// [modifier] Item typification or modifiers codes to convey additional
/// context for the product or service.

    @JsonKey(name: 'modifier') List<List<CodeableConcept>>? modifier,
/// [programCode] Identifies the program under which this may be recovered.

    @JsonKey(name: 'programCode') List<List<CodeableConcept>>? programCode,
/// [servicedDate] The date or dates when the service or product was
/// supplied, performed or completed.

    @JsonKey(name: 'servicedDate') FhirDate? servicedDate,
/// [_servicedDate] Extensions for servicedDate

    @JsonKey(name: '_servicedDate') PrimitiveElement? servicedDateElement,
/// [servicedPeriod] The date or dates when the service or product was
/// supplied, performed or completed.

    @JsonKey(name: 'servicedPeriod') Period? servicedPeriod,
/// [locationCodeableConcept] Where the product or service was provided.

    @JsonKey(name: 'locationCodeableConcept') CodeableConcept? locationCodeableConcept,
/// [locationAddress] Where the product or service was provided.

    @JsonKey(name: 'locationAddress') Address? locationAddress,
/// [locationReference] Where the product or service was provided.

    @JsonKey(name: 'locationReference') Reference? locationReference,
/// [patientPaid] The amount paid by the patient, in total at the claim
/// claim level or specifically for the item and detail level, to the provider
/// for goods and services.

    @JsonKey(name: 'patientPaid') Money? patientPaid,
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
/// [net] The total amount claimed for the group (if a grouper) or the
/// addItem. Net = unit price * quantity * factor.

    @JsonKey(name: 'net') Money? net,
/// [bodySite] Physical location where the service is performed or applies.

    @JsonKey(name: 'bodySite') List<List<ExplanationOfBenefit_BodySite1>>? bodySite,
/// [noteNumber] The numbers associated with notes below which apply to the
/// adjudication of this item.

    @JsonKey(name: 'noteNumber') List<List<FhirPositiveInt>>? noteNumber,
/// [_noteNumber] Extensions for noteNumber

    @JsonKey(name: '_noteNumber') List<PrimitiveElement>? noteNumberElement,
/// [reviewOutcome] The high-level results of the adjudication if
/// adjudication has been performed.

    @JsonKey(name: 'reviewOutcome') ExplanationOfBenefit_ReviewOutcome? reviewOutcome,
/// [adjudication] The adjudication results.

    @JsonKey(name: 'adjudication') List<List<ExplanationOfBenefit_Adjudication>>? adjudication,
/// [detail] The second-tier service adjudications for payor added
/// services.

    @JsonKey(name: 'detail') List<List<ExplanationOfBenefit_Detail1>>? detail,
  }) = _$ExplanationOfBenefit_AddItem;

  @override
  String get fhirType => 'ExplanationOfBenefit_AddItem';

  factory ExplanationOfBenefit_AddItem.fromJson(Map<String, dynamic> json) =>
      _$ExplanationOfBenefit_AddItemFromJson(json);

  factory ExplanationOfBenefit_AddItem.fromYaml(dynamic yaml) => yaml is String
      ? ExplanationOfBenefit_AddItem.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ExplanationOfBenefit_AddItem.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ExplanationOfBenefit_AddItem cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ExplanationOfBenefit_AddItem.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ExplanationOfBenefit_AddItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
