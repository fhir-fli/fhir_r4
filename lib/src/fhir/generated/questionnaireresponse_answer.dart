import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireResponseAnswer {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final bool valueBoolean;
  final PrimitiveElement ValueBoolean;
  final double valueDecimal;
  final PrimitiveElement ValueDecimal;
  final double valueInteger;
  final PrimitiveElement ValueInteger;
  final String valueDate;
  final PrimitiveElement ValueDate;
  final String valueDateTime;
  final PrimitiveElement ValueDateTime;
  final String valueTime;
  final PrimitiveElement ValueTime;
  final String valueString;
  final PrimitiveElement ValueString;
  final String valueUri;
  final PrimitiveElement ValueUri;
  final Attachment valueAttachment;
  final Coding valueCoding;
  final Quantity valueQuantity;
  final Reference valueReference;
  final List<QuestionnaireResponseItem> item;
  const QuestionnaireResponseAnswer({
    this.id,
    this.extension,
    this.modifierExtension,
    this.valueBoolean,
    this.ValueBoolean,
    this.valueDecimal,
    this.ValueDecimal,
    this.valueInteger,
    this.ValueInteger,
    this.valueDate,
    this.ValueDate,
    this.valueDateTime,
    this.ValueDateTime,
    this.valueTime,
    this.ValueTime,
    this.valueString,
    this.ValueString,
    this.valueUri,
    this.ValueUri,
    this.valueAttachment,
    this.valueCoding,
    this.valueQuantity,
    this.valueReference,
    this.item,
  });
}
