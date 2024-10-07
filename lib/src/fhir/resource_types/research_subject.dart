import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [ResearchSubject] /// A physical entity which is the primary unit of operational and/or
/// administrative interest in a study.
class ResearchSubject extends DomainResource {
  ResearchSubject({
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
    required this.status,
    this.statusElement,
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.assignedArmElement,
    this.actualArm,
    this.actualArmElement,
    this.consent,
  }) : super(resourceType: R4ResourceType.ResearchSubject);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [identifier] /// Identifiers assigned to this research subject for a study.
  final List<Identifier>? identifier;

  /// [status] /// The current state of the subject.
  final FhirCode status;
  final Element? statusElement;

  /// [period] /// The dates the subject began and ended their participation in the study.
  final Period? period;

  /// [study] /// Reference to the study the subject is participating in.
  final Reference study;

  /// [individual] /// The record of the person or animal who is involved in the study.
  final Reference individual;

  /// [assignedArm] /// The name of the arm in the study the subject is expected to follow as part
  /// of this study.
  final FhirString? assignedArm;
  final Element? assignedArmElement;

  /// [actualArm] /// The name of the arm in the study the subject actually followed as part of
  /// this study.
  final FhirString? actualArm;
  final Element? actualArmElement;

  /// [consent] /// A record of the patient's informed agreement to participate in the study.
  final Reference? consent;
  @override
  ResearchSubject clone() => throw UnimplementedError();
  ResearchSubject copy({
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
    FhirCode? status,
    Element? statusElement,
    Period? period,
    Reference? study,
    Reference? individual,
    FhirString? assignedArm,
    Element? assignedArmElement,
    FhirString? actualArm,
    Element? actualArmElement,
    Reference? consent,
  }) {
    return ResearchSubject(
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
      status: status ?? this.status,
      statusElement: statusElement ?? this.statusElement,
      period: period ?? this.period,
      study: study ?? this.study,
      individual: individual ?? this.individual,
      assignedArm: assignedArm ?? this.assignedArm,
      assignedArmElement: assignedArmElement ?? this.assignedArmElement,
      actualArm: actualArm ?? this.actualArm,
      actualArmElement: actualArmElement ?? this.actualArmElement,
      consent: consent ?? this.consent,
    );
  }
}
