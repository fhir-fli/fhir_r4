import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireEnableWhen {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String question;
  final PrimitiveElement Question;
  final FhirCode operator;
  final PrimitiveElement Operator;
  final bool answerBoolean;
  final PrimitiveElement AnswerBoolean;
  final double answerDecimal;
  final PrimitiveElement AnswerDecimal;
  final double answerInteger;
  final PrimitiveElement AnswerInteger;
  final String answerDate;
  final PrimitiveElement AnswerDate;
  final String answerDateTime;
  final PrimitiveElement AnswerDateTime;
  final String answerTime;
  final PrimitiveElement AnswerTime;
  final String answerString;
  final PrimitiveElement AnswerString;
  final Coding answerCoding;
  final Quantity answerQuantity;
  final Reference answerReference;
  const QuestionnaireEnableWhen({
    this.id,
    this.extension,
    this.modifierExtension,
    this.question,
    this.Question,
    this.operator,
    this.Operator,
    this.answerBoolean,
    this.AnswerBoolean,
    this.answerDecimal,
    this.AnswerDecimal,
    this.answerInteger,
    this.AnswerInteger,
    this.answerDate,
    this.AnswerDate,
    this.answerDateTime,
    this.AnswerDateTime,
    this.answerTime,
    this.AnswerTime,
    this.answerString,
    this.AnswerString,
    this.answerCoding,
    this.answerQuantity,
    this.answerReference,
  });
}
