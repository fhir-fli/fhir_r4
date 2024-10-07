import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final List<Identifier>? identifier;
  final CodeableConcept code;
  final Reference? subject;
  final FhirDate? created;
  final Element? createdElement;
  final Reference? author;
  @override
  Basic clone() => throw UnimplementedError();
}
