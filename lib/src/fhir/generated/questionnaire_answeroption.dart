import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireAnswerOption {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueString;
  final PrimitiveElement ValueString;
  final Coding valueCoding;
  final Reference valueReference;
  final FhirBoolean initialSelected;
  final PrimitiveElement InitialSelected;
  const QuestionnaireAnswerOption({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueInteger,
    this.ValueInteger,
    this.valueDate,
    this.ValueDate,
    this.valueTime,
    this.ValueTime,
    this.valueString,
    this.ValueString,
    this.valueCoding,
    this.valueReference,
    this.initialSelected,
    this.InitialSelected,
  });
}
