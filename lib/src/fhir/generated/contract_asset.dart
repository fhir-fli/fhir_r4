import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ContractAsset {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final CodeableConcept scope;
  final List<CodeableConcept> type;
  final List<Reference> typeReference;
  final List<CodeableConcept> subtype;
  final Coding relationship;
  final List<ContractContext> context;
  final String condition;
  final PrimitiveElement Condition;
  final List<CodeableConcept> periodType;
  final List<Period> period;
  final List<Period> usePeriod;
  final String text;
  final PrimitiveElement Text;
  final List<String> linkId;
  final List<PrimitiveElement> LinkId;
  final List<ContractAnswer> answer;
  final List<FhirUnsignedInt> securityLabelNumber;
  final List<PrimitiveElement> SecurityLabelNumber;
  final List<ContractValuedItem> valuedItem;
  const ContractAsset({
    this.id,
    this.extension,
    this.modifierExtension,
    this.scope,
    this.type,
    this.typeReference,
    this.subtype,
    this.relationship,
    this.context,
    this.condition,
    this.Condition,
    this.periodType,
    this.period,
    this.usePeriod,
    this.text,
    this.Text,
    this.linkId,
    this.LinkId,
    this.answer,
    this.securityLabelNumber,
    this.SecurityLabelNumber,
    this.valuedItem,
  });
}
