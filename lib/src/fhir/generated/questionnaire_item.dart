import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class QuestionnaireItem {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String linkId;
  final PrimitiveElement LinkId;
  final FhirUri definition;
  final PrimitiveElement Definition;
  final List<Coding> code;
  final String prefix;
  final PrimitiveElement Prefix;
  final String text;
  final PrimitiveElement Text;
  final FhirCode type;
  final PrimitiveElement Type;
  final List<QuestionnaireEnableWhen> enableWhen;
  final FhirCode enableBehavior;
  final PrimitiveElement EnableBehavior;
  final FhirBoolean required;
  final PrimitiveElement Required;
  final FhirBoolean repeats;
  final PrimitiveElement Repeats;
  final FhirBoolean readOnly;
  final PrimitiveElement ReadOnly;
  final FhirInteger maxLength;
  final PrimitiveElement MaxLength;
  final FhirCanonical answerValueSet;
  final List<QuestionnaireAnswerOption> answerOption;
  final List<QuestionnaireInitial> initial;
  final List<QuestionnaireItem> item;
  const QuestionnaireItem({
    this.id,
    this.extension,
    this.modifierExtension,
    this.linkId,
    this.LinkId,
    this.definition,
    this.Definition,
    this.code,
    this.prefix,
    this.Prefix,
    this.text,
    this.Text,
    this.type,
    this.Type,
    this.enableWhen,
    this.enableBehavior,
    this.EnableBehavior,
    this.required,
    this.Required,
    this.repeats,
    this.Repeats,
    this.readOnly,
    this.ReadOnly,
    this.maxLength,
    this.MaxLength,
    this.answerValueSet,
    this.answerOption,
    this.initial,
    this.item,
  });
}
