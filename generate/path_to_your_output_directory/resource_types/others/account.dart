import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Account] A financial tool for tracking value accrued for a particular
/// purpose.  In the healthcare field, used to track charges for a patient,
/// cost centers, etc.

@freezed
class Account with _$Account {
  const Account._();

  const factory Account({
/// [resourceType] This is a Account resource

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
/// [identifier] Unique identifier used to reference the account.  Might or
/// might not be intended for human use (e.g. credit card number).

    @JsonKey(name: 'identifier') List<List<Identifier>>? identifier,
/// [status] Indicates whether the account is presently used/usable or not.

    @JsonKey(name: 'status') FhirCode? status,
/// [_status] Extensions for status

    @JsonKey(name: '_status') PrimitiveElement? statusElement,
/// [billingStatus] The BillingStatus tracks the lifecycle of the account
/// through the billing process. It indicates how transactions are treated when
/// they are allocated to the account.

    @JsonKey(name: 'billingStatus') CodeableConcept? billingStatus,
/// [type] Categorizes the account for reporting and searching purposes.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [name] Name used for the account when displaying it to humans in
/// reports, etc.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [subject] Identifies the entity which incurs the expenses. While the
/// immediate recipients of services or goods might be entities related to the
/// subject, the expenses were ultimately incurred by the subject of the
/// Account.

    @JsonKey(name: 'subject') List<List<Reference>>? subject,
/// [servicePeriod] The date range of services associated with this
/// account.

    @JsonKey(name: 'servicePeriod') Period? servicePeriod,
/// [covers] An account that collects the charges for a specific set of
/// services offered over a limited time period.  For example, a hospital
/// account might contain all charges related to a given admission, including
/// any inpatient appointments, and possibly re-admissions, of the billing for
/// those re-admissions should be grouped with the initial admission for the
/// purpose of claim submission.

    @JsonKey(name: 'covers') List<List<Reference>>? covers,
/// [coverage] The party(s) that are responsible for covering the payment
/// of this account, and what order should they be applied to the account.

    @JsonKey(name: 'coverage') List<List<Account_Coverage>>? coverage,
/// [owner] Indicates the service area, hospital, department, etc. with
/// responsibility for managing the Account.

    @JsonKey(name: 'owner') Reference? owner,
/// [description] Provides additional information about what the account
/// tracks and how it is used.

    @JsonKey(name: 'description') FhirMarkdown? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [guarantor] The parties responsible for balancing the account if other
/// payment options fall short.

    @JsonKey(name: 'guarantor') List<List<Account_Guarantor>>? guarantor,
/// [diagnosis] When using an account for billing a specific Encounter the
/// set of diagnoses that are relevant for billing are stored here on the
/// account where they are able to be sequenced appropriately prior to
/// processing to produce claim(s).

    @JsonKey(name: 'diagnosis') List<List<Account_Diagnosis>>? diagnosis,
/// [procedure] When using an account for billing a specific Encounter the
/// set of procedures that are relevant for billing are stored here on the
/// account where they are able to be sequenced appropriately prior to
/// processing to produce claim(s).

    @JsonKey(name: 'procedure') List<List<Account_Procedure>>? procedure,
/// [relatedAccount] Other associated accounts related to this account.

    @JsonKey(name: 'relatedAccount') List<List<Account_RelatedAccount>>? relatedAccount,
/// [currency] The default currency for the account.

    @JsonKey(name: 'currency') CodeableConcept? currency,
/// [balance] The calculated account balances - these are calculated and
/// processed by the finance system.The balances with a `term` that is not
/// current are usually generated/updated by an invoicing or similar process.

    @JsonKey(name: 'balance') List<List<Account_Balance>>? balance,
/// [calculatedAt] Time the balance amount was calculated.

    @JsonKey(name: 'calculatedAt') FhirInstant? calculatedAt,
/// [_calculatedAt] Extensions for calculatedAt

    @JsonKey(name: '_calculatedAt') PrimitiveElement? calculatedAtElement,
  }) = _$Account;

  @override
  String get fhirType => 'Account';

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);

  factory Account.fromYaml(dynamic yaml) => yaml is String
      ? Account.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Account.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Account cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Account.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$AccountFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
