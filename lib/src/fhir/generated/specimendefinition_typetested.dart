import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class SpecimenDefinitionTypeTested {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirBoolean isDerived;
  final PrimitiveElement IsDerived;
  final CodeableConcept type;
  final FhirCode preference;
  final PrimitiveElement Preference;
  final SpecimenDefinition_Container container;
  final String requirement;
  final PrimitiveElement Requirement;
  final FhirDuration retentionTime;
  final List<CodeableConcept> rejectionCriterion;
  final List<SpecimenDefinitionHandling> handling;
  const SpecimenDefinitionTypeTested({
    this.id,
    this.extension,
    this.modifierExtension,
    this.isDerived,
    this.IsDerived,
    this.type,
    this.preference,
    this.Preference,
    this.container,
    this.requirement,
    this.Requirement,
    this.retentionTime,
    this.rejectionCriterion,
    this.handling,
  });
}
