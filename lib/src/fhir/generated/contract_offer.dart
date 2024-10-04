import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractOffer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final List<Identifier> identifier;
  final List<ContractParty> party;
  final Reference topic;
  final CodeableConcept type;
  final CodeableConcept decision;
  final List<CodeableConcept> decisionMode;
  final List<ContractAnswer> answer;
  final String text;
  final PrimitiveElement Text;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
  const ContractOffer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.party,
    this.topic,
    this.type,
    this.decision,
    this.decisionMode,
    this.answer,
    this.text,
    this.Text,
    this.linkId,
    this.LinkId,
    this.securityLabelNumber,
    this.SecurityLabelNumber,
  });
}
