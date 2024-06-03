/// /// [Contract_Term] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Term with _$Contract_Term {
  const Contract_Term._();

  const factory Contract_Term({
/// /// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// /// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// /// [modifierExtension] May be used to represent additional information
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
/// /// [identifier] Unique identifier for this particular Contract Provision.

    @JsonKey(name: 'identifier') Identifier? identifier,
/// /// [issued] When this Contract Provision was issued.

    @JsonKey(name: 'issued') FhirDateTime? issued,
/// /// [_issued] Extensions for issued

    @JsonKey(name: '_issued') FhirElement? issuedElement,
/// /// [applies] Relevant time or time-period when this Contract Provision is
/// applicable.

    @JsonKey(name: 'applies') Period? applies,
/// /// [topicCodeableConcept] The entity that the term applies to.

    @JsonKey(name: 'topicCodeableConcept') CodeableConcept? topicCodeableConcept,
/// /// [topicReference] The entity that the term applies to.

    @JsonKey(name: 'topicReference') Reference? topicReference,
/// /// [type] A legal clause or condition contained within a contract that
/// requires one or both parties to perform a particular requirement by some
/// specified time or prevents one or both parties from performing a particular
/// requirement by some specified time.

    @JsonKey(name: 'type') CodeableConcept? type,
/// /// [subType] A specialized legal clause or condition based on overarching
/// contract type.

    @JsonKey(name: 'subType') CodeableConcept? subType,
/// /// [text] Statement of a provision in a policy or a contract.

    @JsonKey(name: 'text') String? text,
/// /// [_text] Extensions for text

    @JsonKey(name: '_text') FhirElement? textElement,
/// /// [securityLabel] Security labels that protect the handling of
/// information about the term and its elements, which may be specifically
/// identified.

    @JsonKey(name: 'securityLabel') List<List<Contract_SecurityLabel>>? securityLabel,
/// /// [offer] The matter of concern in the context of this provision of the
/// agrement.

    @JsonKey(name: 'offer') Contract_Offer? offer,
/// /// [asset] Contract Term Asset List.

    @JsonKey(name: 'asset') List<List<Contract_Asset>>? asset,
/// /// [action] An actor taking a role in an activity for which it can be
/// assigned some degree of responsibility for the activity taking place.

    @JsonKey(name: 'action') List<List<Contract_Action>>? action,
/// /// [group] Nested group of Contract Provisions.

    @JsonKey(name: 'group') List<List<Contract_Term>>? group,
  }) = _$Contract_Term;

  @override
  String get fhirType => 'Contract_Term';

  factory Contract_Term.fromJson(Map<String, dynamic> json) =>
      _$Contract_TermFromJson(json);

  factory Contract_Term.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Term.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Term.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Term cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Term.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_TermFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
