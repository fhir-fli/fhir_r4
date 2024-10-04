import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractTerm {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Identifier identifier;
  final FhirDateTime issued;
  final PrimitiveElement Issued;
  final Period applies;
  final CodeableConcept topicCodeableConcept;
  final Reference topicReference;
  final CodeableConcept type;
  final CodeableConcept subType;
  final String text;
  final PrimitiveElement Text;
  final List<ContractSecurityLabel> securityLabel;
  final Contract_Offer offer;
  final List<ContractAsset> asset;
  final List<ContractAction> action;
  final List<ContractTerm> group;
  const ContractTerm({
    this.id,
    this.extension,
    this.modifierExtension,
    this.identifier,
    this.issued,
    this.Issued,
    this.applies,
    this.topicCodeableConcept,
    this.topicReference,
    this.type,
    this.subType,
    this.text,
    this.Text,
    this.securityLabel,
    required this.offer,
    this.asset,
    this.action,
    this.group,
  });
}
