import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class ResearchSubject extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode? status;
  final Element? statusElement;
  final Period? period;
  final Reference study;
  final Reference individual;
  final FhirString? assignedArm;
  final Element? assignedArmElement;
  final FhirString? actualArm;
  final Element? actualArmElement;
  final Reference? consent;

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
    this.status,
    this.statusElement,
    this.period,
    required this.study,
    required this.individual,
    this.assignedArm,
    this.assignedArmElement,
    this.actualArm,
    this.actualArmElement,
    this.consent,
  }): super(resourceType: R4ResourceType.ResearchSubject);

@override
ResearchSubject clone() => this;

}



