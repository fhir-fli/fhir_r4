import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Flag extends DomainResource {
  final List<Identifier>? identifier;
  final FhirCode status;
  final Element? statusElement;
  final List<CodeableConcept>? category;
  final CodeableConcept code;
  final Reference subject;
  final Period? period;
  final Reference? encounter;
  final Reference? author;

  Flag({
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
    this.category,
    required this.code,
    required this.subject,
    this.period,
    this.encounter,
    this.author,
  }) : super(resourceType: R4ResourceType.Flag);

@override
Flag clone() => throw UnimplementedError();
}

