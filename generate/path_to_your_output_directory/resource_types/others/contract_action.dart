import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Contract_Action] Legally enforceable, formally recorded unilateral or
/// bilateral directive i.e., a policy or agreement.

@freezed
class Contract_Action with _$Contract_Action {
  const Contract_Action._();

  const factory Contract_Action({
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
/// [doNotPerform] True if the term prohibits the  action.

    @JsonKey(name: 'doNotPerform') FhirBoolean? doNotPerform,
/// [_doNotPerform] Extensions for doNotPerform

    @JsonKey(name: '_doNotPerform') PrimitiveElement? doNotPerformElement,
/// [type] Activity or service obligation to be done or not done, performed
/// or not performed, effectuated or not by this Contract term.

    @JsonKey(name: 'type') CodeableConcept? type,
/// [subject] Entity of the action.

    @JsonKey(name: 'subject') List<List<Contract_Subject>>? subject,
/// [intent] Reason or purpose for the action stipulated by this Contract
/// Provision.

    @JsonKey(name: 'intent') CodeableConcept? intent,
/// [linkId] Id [identifier??] of the clause or question text related to
/// this action in the referenced form or QuestionnaireResponse.

    @JsonKey(name: 'linkId') List<List<String>>? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') List<PrimitiveElement>? linkIdElement,
/// [status] Current state of the term action.

    @JsonKey(name: 'status') CodeableConcept? status,
/// [context] Encounter or Episode with primary association to the
/// specified term activity.

    @JsonKey(name: 'context') Reference? context,
/// [contextLinkId] Id [identifier??] of the clause or question text
/// related to the requester of this action in the referenced form or
/// QuestionnaireResponse.

    @JsonKey(name: 'contextLinkId') List<List<String>>? contextLinkId,
/// [_contextLinkId] Extensions for contextLinkId

    @JsonKey(name: '_contextLinkId') List<PrimitiveElement>? contextLinkIdElement,
/// [occurrenceDateTime] When action happens.

    @JsonKey(name: 'occurrenceDateTime') FhirDateTime? occurrenceDateTime,
/// [_occurrenceDateTime] Extensions for occurrenceDateTime

    @JsonKey(name: '_occurrenceDateTime') PrimitiveElement? occurrenceDateTimeElement,
/// [occurrencePeriod] When action happens.

    @JsonKey(name: 'occurrencePeriod') Period? occurrencePeriod,
/// [occurrenceTiming] When action happens.

    @JsonKey(name: 'occurrenceTiming') Timing? occurrenceTiming,
/// [requester] Who or what initiated the action and has responsibility for
/// its activation.

    @JsonKey(name: 'requester') List<List<Reference>>? requester,
/// [requesterLinkId] Id [identifier??] of the clause or question text
/// related to the requester of this action in the referenced form or
/// QuestionnaireResponse.

    @JsonKey(name: 'requesterLinkId') List<List<String>>? requesterLinkId,
/// [_requesterLinkId] Extensions for requesterLinkId

    @JsonKey(name: '_requesterLinkId') List<PrimitiveElement>? requesterLinkIdElement,
/// [performerType] The type of individual that is desired or required to
/// perform or not perform the action.

    @JsonKey(name: 'performerType') List<List<CodeableConcept>>? performerType,
/// [performerRole] The type of role or competency of an individual desired
/// or required to perform or not perform the action.

    @JsonKey(name: 'performerRole') CodeableConcept? performerRole,
/// [performer] Indicates who or what is being asked to perform (or not
/// perform) the ction.

    @JsonKey(name: 'performer') Reference? performer,
/// [performerLinkId] Id [identifier??] of the clause or question text
/// related to the reason type or reference of this  action in the referenced
/// form or QuestionnaireResponse.

    @JsonKey(name: 'performerLinkId') List<List<String>>? performerLinkId,
/// [_performerLinkId] Extensions for performerLinkId

    @JsonKey(name: '_performerLinkId') List<PrimitiveElement>? performerLinkIdElement,
/// [reason] Rationale for the action to be performed or not performed.
/// Describes why the action is permitted or prohibited. Either a coded
/// concept, or another resource whose existence justifies permitting or not
/// permitting this action.

    @JsonKey(name: 'reason') List<List<CodeableReference>>? reason,
/// [reasonLinkId] Id [identifier??] of the clause or question text related
/// to the reason type or reference of this  action in the referenced form or
/// QuestionnaireResponse.

    @JsonKey(name: 'reasonLinkId') List<List<String>>? reasonLinkId,
/// [_reasonLinkId] Extensions for reasonLinkId

    @JsonKey(name: '_reasonLinkId') List<PrimitiveElement>? reasonLinkIdElement,
/// [note] Comments made about the term action made by the requester,
/// performer, subject or other participants.

    @JsonKey(name: 'note') List<List<Annotation>>? note,
/// [securityLabelNumber] Security labels that protects the action.

    @JsonKey(name: 'securityLabelNumber') List<List<FhirUnsignedInt>>? securityLabelNumber,
/// [_securityLabelNumber] Extensions for securityLabelNumber

    @JsonKey(name: '_securityLabelNumber') List<PrimitiveElement>? securityLabelNumberElement,
  }) = _$Contract_Action;

  @override
  String get fhirType => 'Contract_Action';

  factory Contract_Action.fromJson(Map<String, dynamic> json) =>
      _$Contract_ActionFromJson(json);

  factory Contract_Action.fromYaml(dynamic yaml) => yaml is String
      ? Contract_Action.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Contract_Action.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Contract_Action cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Contract_Action.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Contract_ActionFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
