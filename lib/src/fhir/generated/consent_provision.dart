import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ConsentProvision {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final Period period;
  final List<ConsentActor> actor;
  final List<CodeableConcept> action;
  final List<Coding> securityLabel;
  final List<Coding> purpose;
  final List<Coding> class;
  final List<CodeableConcept> code;
  final Period dataPeriod;
  final List<ConsentData> data;
  final List<ConsentProvision> provision;
  const ConsentProvision({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.Type,
    this.period,
    this.actor,
    this.action,
    this.securityLabel,
    this.purpose,
    this.class,
    this.code,
    this.dataPeriod,
    this.data,
    this.provision,
  });
}
