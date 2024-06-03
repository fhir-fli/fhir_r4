import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [CoverageEligibilityResponse_Item] This resource provides eligibility
/// and plan details from the processing of an CoverageEligibilityRequest
/// resource.

@freezed
class CoverageEligibilityResponse_Item with _$CoverageEligibilityResponse_Item {
  const CoverageEligibilityResponse_Item._();

  const factory CoverageEligibilityResponse_Item({
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
/// [category] Code to identify the general type of benefits under which
/// products and services are provided.

    @JsonKey(name: 'category') CodeableConcept? category,
/// [productOrService] This contains the product, service, drug or other
/// billing code for the item.

    @JsonKey(name: 'productOrService') CodeableConcept? productOrService,
/// [modifier] Item typification or modifiers codes to convey additional
/// context for the product or service.

    @JsonKey(name: 'modifier') List<List<CodeableConcept>>? modifier,
/// [provider] The practitioner who is eligible for the provision of the
/// product or service.

    @JsonKey(name: 'provider') Reference? provider,
/// [excluded] True if the indicated class of service is excluded from the
/// plan, missing or False indicates the product or service is included in the
/// coverage.

    @JsonKey(name: 'excluded') FhirBoolean? excluded,
/// [_excluded] Extensions for excluded

    @JsonKey(name: '_excluded') PrimitiveElement? excludedElement,
/// [name] A short name or tag for the benefit.

    @JsonKey(name: 'name') String? name,
/// [_name] Extensions for name

    @JsonKey(name: '_name') PrimitiveElement? nameElement,
/// [description] A richer description of the benefit or services covered.

    @JsonKey(name: 'description') String? description,
/// [_description] Extensions for description

    @JsonKey(name: '_description') PrimitiveElement? descriptionElement,
/// [network] Is a flag to indicate whether the benefits refer to
/// in-network providers or out-of-network providers.

    @JsonKey(name: 'network') CodeableConcept? network,
/// [unit] Indicates if the benefits apply to an individual or to the
/// family.

    @JsonKey(name: 'unit') CodeableConcept? unit,
/// [term] The term or period of the values such as 'maximum lifetime
/// benefit' or 'maximum annual visits'.

    @JsonKey(name: 'term') CodeableConcept? term,
/// [benefit] Benefits used to date.

    @JsonKey(name: 'benefit') List<List<CoverageEligibilityResponse_Benefit>>? benefit,
/// [authorizationRequired] A boolean flag indicating whether a
/// preauthorization is required prior to actual service delivery.

    @JsonKey(name: 'authorizationRequired') FhirBoolean? authorizationRequired,
/// [_authorizationRequired] Extensions for authorizationRequired

    @JsonKey(name: '_authorizationRequired') PrimitiveElement? authorizationRequiredElement,
/// [authorizationSupporting] Codes or comments regarding information or
/// actions associated with the preauthorization.

    @JsonKey(name: 'authorizationSupporting') List<List<CodeableConcept>>? authorizationSupporting,
/// [authorizationUrl] A web location for obtaining requirements or
/// descriptive information regarding the preauthorization.

    @JsonKey(name: 'authorizationUrl') FhirUri? authorizationUrl,
/// [_authorizationUrl] Extensions for authorizationUrl

    @JsonKey(name: '_authorizationUrl') PrimitiveElement? authorizationUrlElement,
  }) = _$CoverageEligibilityResponse_Item;

  @override
  String get fhirType => 'CoverageEligibilityResponse_Item';

  factory CoverageEligibilityResponse_Item.fromJson(Map<String, dynamic> json) =>
      _$CoverageEligibilityResponse_ItemFromJson(json);

  factory CoverageEligibilityResponse_Item.fromYaml(dynamic yaml) => yaml is String
      ? CoverageEligibilityResponse_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? CoverageEligibilityResponse_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'CoverageEligibilityResponse_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory CoverageEligibilityResponse_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$CoverageEligibilityResponse_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
