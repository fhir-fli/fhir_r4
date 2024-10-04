import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SubstanceDefinitionName {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final CodeableConcept type;
  final CodeableConcept status;
  final FhirBoolean preferred;
  final PrimitiveElement Preferred;
  final List<CodeableConcept> language;
  final List<CodeableConcept> domain;
  final List<CodeableConcept> jurisdiction;
  final List<SubstanceDefinitionName> synonym;
  final List<SubstanceDefinitionName> translation;
  final List<SubstanceDefinitionOfficial> official;
  final List<Reference> source;
  const SubstanceDefinitionName({
    this.id,
    this.extension,
    this.modifierExtension,
    this.name,
    this.Name,
    this.type,
    this.status,
    this.preferred,
    this.Preferred,
    this.language,
    this.domain,
    this.jurisdiction,
    this.synonym,
    this.translation,
    this.official,
    this.source,
  });
}
