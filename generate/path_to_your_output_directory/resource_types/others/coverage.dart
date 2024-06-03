import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Coverage] Financial instrument which may be used to reimburse or pay
/// for health care products and services. Includes both insurance and
/// self-payment.

@freezed
class Coverage with _$Coverage {
  const Coverage._();

  const factory Coverage({
/// [resourceType] This is a Coverage resource

    @JsonKey(name: 'resourceType') dynamic? resourceType,
/// [id] The logical id of the resource, as used in the URL for the
/// resource. Once assigned, this value never changes.

    @JsonKey(name: 'id') FhirId? id,
/// [meta] The metadata about the resource. This is content that is
/// maintained by the infrastructure. Changes to the content might not always
/// be associated with version changes to the resource.

    @JsonKey(name: 'meta') FhirMeta? meta,
/// [implicitRules] A reference to a set of rules that were followed when
/// the resource was constructed, and which must be understood when processing
/// the content. Often, this is a reference to an implementation guide that
/// defines the special rules along with other profiles etc.

    @JsonKey(name: 'implicitRules') FhirUri? implicitRules,
/// [_implicitRules] Extensions for implicitRules

    @JsonKey(name: '_implicitRules') PrimitiveElement? implicitRulesElement,
/// [language] The base language in which the resource is written.

    @JsonKey(name: 'language') FhirCode? language,
/// [_language] Extensions for language

    @JsonKey(name: '_language') PrimitiveElement? languageElement,
/// [text] A human-readable narrative that contains a summary of the
/// resource and can be used to represent the content of the resource to a
/// human. The narrative need not encode all the structured data, but is
/// required to contain sufficient detail to make it "clinically safe" for a
/// human to just read the narrative. Resource definitions may define what
/// content should be represented in the narrative to ensure clinical safety.

    @JsonKey(name: 'text') Narrative? text,
/// [contained] These resources do not have an independent existence apart
/// from the resource that contains them - they cannot be identified
/// independently, nor can they have their own independent transaction scope.
/// This is allowed to be a Parameters resource if and only if it is referenced
/// by a resource that provides context/meaning.

    @JsonKey(name: 'contained') List<List<ResourceList>>? contained,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the resource. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the resource and that modifies
/// the understanding of the element that contains it and/or the understanding
/// of the containing element's descendants. Usually modifier elements provide
/// negation or qualification. To make the use of extensions safe and
/// managable, there is a strict set of governance applied to the definition
/// and use of extensions. Though any implementer is allowed to define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.

Modifier extensions SHALL NOT
/// change the meaning of any elements on Resource or DomainResource (including
/// cannot change the meaning of modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [identifier] The identifier of the coverage as issued by the insurer.

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] The status of the resource instance.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [kind] The nature of the coverage be it insurance, or cash payment such
/// as self-pay.

    @JsonKey(name: 'kind') FhirCode? kind,
/// [_kind] Extensions for kind

    @JsonKey(name: '_kind') PrimitiveElement? kindElement,
/// [paymentBy] Link to the paying party and optionally what specifically
/// they will be responsible to pay.

    @JsonKey(name: 'paymentBy') List<List<Coverage_PaymentBy>>? paymentBy,
/// [type] The type of coverage: social program, medical plan, accident
/// coverage (workers compensation, auto), group health or payment by an
/// individual or organization.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [policyHolder] The party who 'owns' the insurance policy.

    @JsonKey(name: 'policyHolder') Reference? policyHolder,
/// [subscriber] The party who has signed-up for or 'owns' the contractual
/// relationship to the policy or to whom the benefit of the policy for
/// services rendered to them or their family is due.

    @JsonKey(name: 'subscriber') Reference? subscriber,
/// [subscriberId] The insurer assigned ID for the Subscriber.

    @JsonKey(name: 'subscriberId') List<List<Identifier>>? subscriberId,
/// [beneficiary] The party who benefits from the insurance coverage; the
/// patient when products and/or services are provided.

    @JsonKey(name: 'beneficiary') Reference? beneficiary,
/// [dependent] A designator for a dependent under the coverage.

    @JsonKey(name: 'dependent') String? dependent,
/// [_dependent] Extensions for dependent

    @JsonKey(name: '_dependent') PrimitiveElement? dependentElement,
/// [relationship] The relationship of beneficiary (patient) to the
/// subscriber.

    @JsonKey(name: 'relationship') CodeableConcept? relationship,
/// [period] Time period during which the coverage is in force. A missing
/// start date indicates the start date isn't known, a missing end date means
/// the coverage is continuing to be in force.

    @JsonKey(name: 'period') Period? period,
/// [insurer] The program or plan underwriter, payor, insurance company.

    @JsonKey(name: 'insurer') Reference? insurer,
/// [class] A suite of underwriter specific classifiers.

    @JsonKey(name: 'class') List<List<Coverage_Class>>? class,
/// [order] The order of applicability of this coverage relative to other
/// coverages which are currently in force. Note, there may be gaps in the
/// numbering and this does not imply primary, secondary etc. as the specific
/// positioning of coverages depends upon the episode of care. For example; a
/// patient might have (0) auto insurance (1) their own health insurance and
/// (2) spouse's health insurance. When claiming for treatments which were not
/// the result of an auto accident then only coverages (1) and (2) above would
/// be applicatble and would apply in the order specified in parenthesis.

    @JsonKey(name: 'order') FhirPositiveInt? order,
/// [_order] Extensions for order

    @JsonKey(name: '_order') PrimitiveElement? orderElement,
/// [network] The insurer-specific identifier for the insurer-defined
/// network of providers to which the beneficiary may seek treatment which will
/// be covered at the 'in-network' rate, otherwise 'out of network' terms and
/// conditions apply.

    @JsonKey(name: 'network') String? network,
/// [_network] Extensions for network

    @JsonKey(name: '_network') PrimitiveElement? networkElement,
/// [costToBeneficiary] A suite of codes indicating the cost category and
/// associated amount which have been detailed in the policy and may have been
/// included on the health card.

    @JsonKey(name: 'costToBeneficiary') List<List<Coverage_CostToBeneficiary>>? costToBeneficiary,
/// [subrogation] When 'subrogation=true' this insurance instance has been
/// included not for adjudication but to provide insurers with the details to
/// recover costs.

    @JsonKey(name: 'subrogation') FhirBoolean? subrogation,
/// [_subrogation] Extensions for subrogation

    @JsonKey(name: '_subrogation') PrimitiveElement? subrogationElement,
/// [contract] The policy(s) which constitute this insurance coverage.

    @JsonKey(name: 'contract') List<List<Reference>>? contract,
/// [insurancePlan] The insurance plan details, benefits and costs, which
/// constitute this insurance coverage.

    @JsonKey(name: 'insurancePlan') Reference? insurancePlan,
  }) = _$Coverage;

  @override
  String get fhirType => 'Coverage';

  factory Coverage.fromJson(Map<String, dynamic> json) =>
      _$CoverageFromJson(json);

  factory Coverage.fromYaml(dynamic yaml) => yaml is String
      ? Coverage.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Coverage.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Coverage cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Coverage.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
