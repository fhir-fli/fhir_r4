import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class Basic extends DomainResource {
  final List<Identifier>? identifier;
  final CodeableConcept code;
  final Reference? subject;
  final FhirDate? created;
  final Element? createdElement;
  final Reference? author;

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

  @override
  Basic clone() => throw UnimplementedError();
}
