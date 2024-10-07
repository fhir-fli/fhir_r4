import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class Basic extends DomainResource {
  Basic({
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
    required this.code,
    this.subject,
    this.created,
    this.createdElement,
    this.author,
  }) : super(resourceType: R4ResourceType.Basic);

  final List<Identifier>? identifier;
  final CodeableConcept code;
  final Reference? subject;
  final FhirDate? created;
  final Element? createdElement;
  final Reference? author;
  @override
  Basic clone() => throw UnimplementedError();
}
