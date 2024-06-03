import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [PaymentReconciliation_Allocation] This resource provides the details
/// including amount of a payment and allocates the payment items being paid.

@freezed
class PaymentReconciliation_Allocation with _$PaymentReconciliation_Allocation {
  const PaymentReconciliation_Allocation._();

  const factory PaymentReconciliation_Allocation({
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
/// [identifier] Unique identifier for the current payment item for the
/// referenced payable.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// [predecessor] Unique identifier for the prior payment item for the
/// referenced payable.

    @JsonKey(name: 'predecessor') Identifier? predecessor,
/// [target] Specific resource to which the payment/adjustment/advance
/// applies.

    @JsonKey(name: 'target') Reference? target,
/// [targetItemString]  Identifies the claim line item, encounter or other
/// sub-element being paid. Note payment may be partial, that is not match the
/// then outstanding balance or amount incurred.

    @JsonKey(name: 'targetItemString') String? targetItemString,
/// [_targetItemString] Extensions for targetItemString

    @JsonKey(name: '_targetItemString') PrimitiveElement? targetItemStringElement,
/// [targetItemIdentifier]  Identifies the claim line item, encounter or
/// other sub-element being paid. Note payment may be partial, that is not
/// match the then outstanding balance or amount incurred.

    @JsonKey(name: 'targetItemIdentifier') Identifier? targetItemIdentifier,
/// [targetItemPositiveInt]  Identifies the claim line item, encounter or
/// other sub-element being paid. Note payment may be partial, that is not
/// match the then outstanding balance or amount incurred.

    @JsonKey(name: 'targetItemPositiveInt') FhirPositiveInt? targetItemPositiveInt,
/// [_targetItemPositiveInt] Extensions for targetItemPositiveInt

    @JsonKey(name: '_targetItemPositiveInt') PrimitiveElement? targetItemPositiveIntElement,
/// [encounter] The Encounter to which this payment applies, may be
/// completed by the receiver, used for search.

    @JsonKey(name: 'encounter') Reference? encounter,
/// [account] The Account to which this payment applies, may be completed
/// by the receiver, used for search.

    @JsonKey(name: 'account') Reference? account,
/// [type] Code to indicate the nature of the payment.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [submitter] The party which submitted the claim or financial
/// transaction.

    @JsonKey(name: 'submitter') Reference? submitter,
/// [response] A resource, such as a ClaimResponse, which contains a
/// commitment to payment.

    @JsonKey(name: 'response') Reference? response,
/// [date] The date from the response resource containing a commitment to
/// pay.

    @JsonKey(name: 'date') FhirDate? date,
/// [_date] Extensions for date

    @JsonKey(name: '_date') PrimitiveElement? dateElement,
/// [responsible] A reference to the individual who is responsible for
/// inquiries regarding the response and its payment.

    @JsonKey(name: 'responsible') Reference? responsible,
/// [payee] The party which is receiving the payment.

    @JsonKey(name: 'payee') Reference? payee,
/// [amount] The monetary amount allocated from the total payment to the
/// payable.

    @JsonKey(name: 'amount') Money? amount,
  }) = _$PaymentReconciliation_Allocation;

  @override
  String get fhirType => 'PaymentReconciliation_Allocation';

  factory PaymentReconciliation_Allocation.fromJson(Map<String, dynamic> json) =>
      _$PaymentReconciliation_AllocationFromJson(json);

  factory PaymentReconciliation_Allocation.fromYaml(dynamic yaml) => yaml is String
      ? PaymentReconciliation_Allocation.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? PaymentReconciliation_Allocation.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'PaymentReconciliation_Allocation cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory PaymentReconciliation_Allocation.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$PaymentReconciliation_AllocationFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
