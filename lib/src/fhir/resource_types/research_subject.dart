import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final Period? period;
  final Reference study;
  final Reference individual;
  final FhirString? assignedArm;
  final Element? assignedArmElement;
  final FhirString? actualArm;
  final Element? actualArmElement;
  final Reference? consent;
  @override
  ResearchSubject clone() => throw UnimplementedError();
}
