import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [Schedule] /// A container for slots of time that may be available for booking
/// appointments.
class Schedule extends DomainResource {
  Schedule({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    this.identifier,
    this.active,
    this.activeElement,
    this.serviceCategory,
    this.serviceType,
    this.specialty,
    required this.actor,
    this.planningHorizon,
    this.comment,
    this.commentElement,
  }) : super(resourceType: R4ResourceType.Schedule);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// External Ids for this item.
  final List<Identifier>? identifier;

  /// [active] /// Whether this schedule record is in active use or should not be used (such
  /// as was entered in error).
  final FhirBoolean? active;
  final Element? activeElement;

  /// [serviceCategory] /// A broad categorization of the service that is to be performed during this
  /// appointment.
  final List<CodeableConcept>? serviceCategory;

  /// [serviceType] /// The specific service that is to be performed during this appointment.
  final List<CodeableConcept>? serviceType;

  /// [specialty] /// The specialty of a practitioner that would be required to perform the
  /// service requested in this appointment.
  final List<CodeableConcept>? specialty;

  /// [actor] /// Slots that reference this schedule resource provide the availability
  /// details to these referenced resource(s).
  final List<Reference> actor;

  /// [planningHorizon] /// The period of time that the slots that reference this Schedule resource
  /// cover (even if none exist). These cover the amount of time that an
  /// organization's planning horizon; the interval for which they are currently
  /// accepting appointments. This does not define a "template" for planning
  /// outside these dates.
  final Period? planningHorizon;

  /// [comment] /// Comments on the availability to describe any extended information. Such as
  /// custom constraints on the slots that may be associated.
  final FhirString? comment;
  final Element? commentElement;
  @override
  Schedule clone() => throw UnimplementedError();
  Schedule copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<Identifier>? identifier,
    FhirBoolean? active,
    Element? activeElement,
    List<CodeableConcept>? serviceCategory,
    List<CodeableConcept>? serviceType,
    List<CodeableConcept>? specialty,
    List<Reference>? actor,
    Period? planningHorizon,
    FhirString? comment,
    Element? commentElement,
  }) {
    return Schedule(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      identifier: identifier ?? this.identifier,
      active: active ?? this.active,
      activeElement: activeElement ?? this.activeElement,
      serviceCategory: serviceCategory ?? this.serviceCategory,
      serviceType: serviceType ?? this.serviceType,
      specialty: specialty ?? this.specialty,
      actor: actor ?? this.actor,
      planningHorizon: planningHorizon ?? this.planningHorizon,
      comment: comment ?? this.comment,
      commentElement: commentElement ?? this.commentElement,
    );
  }
}
