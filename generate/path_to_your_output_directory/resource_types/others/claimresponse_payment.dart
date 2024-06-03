import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [ClaimResponse_Payment] This resource provides the adjudication details
/// from the processing of a Claim resource.

@freezed
class ClaimResponse_Payment with _$ClaimResponse_Payment {
  const ClaimResponse_Payment._();

  const factory ClaimResponse_Payment({
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
/// [type] Whether this represents partial or complete payment of the
/// benefits payable.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [adjustment] Total amount of all adjustments to this payment included
/// in this transaction which are not related to this claim's adjudication.

    @JsonKey(name: 'adjustment') Money? adjustment,
/// [adjustmentReason] Reason for the payment adjustment.

    @JsonKey(name: 'adjustmentReason') CodeableConcept? adjustmentReason,
/// [date] Estimated date the payment will be issued or the actual issue
/// date of payment.

    @JsonKey(name: 'date') FhirDate? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [amount] Benefits payable less any payment adjustment.

    @JsonKey(name: 'amount') Money? amount,
/// [identifier] Issuer's unique identifier for the payment instrument.

    @JsonKey(name: 'identifier') Identifier? identifier,
  }) = _$ClaimResponse_Payment;

  @override
  String get fhirType => 'ClaimResponse_Payment';

  factory ClaimResponse_Payment.fromJson(Map<String, dynamic> json) =>
      _$ClaimResponse_PaymentFromJson(json);

  factory ClaimResponse_Payment.fromYaml(dynamic yaml) => yaml is String
      ? ClaimResponse_Payment.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? ClaimResponse_Payment.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'ClaimResponse_Payment cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory ClaimResponse_Payment.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$ClaimResponse_PaymentFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
