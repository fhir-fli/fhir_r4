import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../r4.dart';
/// [Questionnaire_Item] A structured set of questions intended to guide
/// the collection of answers from end-users. Questionnaires provide detailed
/// control over order, presentation, phraseology and grouping to allow
/// coherent, consistent data collection.

@freezed
class Questionnaire_Item with _$Questionnaire_Item {
  const Questionnaire_Item._();

  const factory Questionnaire_Item({
/// [id] Unique id for the element within a resource (for internal
/// references). This may be any string value that does not contain spaces.

    @JsonKey(name: 'id') String? id,
/// [extension] May be used to represent additional information that is not
/// part of the basic definition of the element. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension.

    @JsonKey(name: 'extension') List<List<FhirExtension>>? extension,
/// [modifierExtension] May be used to represent additional information
/// that is not part of the basic definition of the element and that modifies
/// the understanding of the element in which it is contained and/or the
/// understanding of the containing element's descendants. Usually modifier
/// elements provide negation or qualification. To make the use of extensions
/// safe and managable, there is a strict set of governance applied to the
/// definition and use of extensions. Though any implementer can define an
/// extension, there is a set of requirements that SHALL be met as part of the
/// definition of the extension. Applications processing a resource are
/// required to check for modifier extensions.
///
/// Modifier extensions SHALL NOT change the meaning of any elements on
/// Resource or DomainResource (including cannot change the meaning of
/// modifierExtension itself).

    @JsonKey(name: 'modifierExtension') List<List<FhirExtension>>? modifierExtension,
/// [linkId] An identifier that is unique within the Questionnaire allowing
/// linkage to the equivalent item in a QuestionnaireResponse resource.

    @JsonKey(name: 'linkId') String? linkId,
/// [_linkId] Extensions for linkId

    @JsonKey(name: '_linkId') PrimitiveElement? linkIdElement,
/// [definition] This element is a URI that refers to an
/// [ElementDefinition](elementdefinition.html) or to an
/// [ObservationDefinition](observationdefinition.html) that provides
/// information about this item, including information that might otherwise be
/// included in the instance of the Questionnaire resource. A detailed
/// description of the construction of the URI is shown in
/// [Comments](questionnaire.html#definition), below.

    @JsonKey(name: 'definition') FhirUri? definition,
/// [_definition] Extensions for definition

    @JsonKey(name: '_definition') PrimitiveElement? definitionElement,
/// [code] A terminology code that corresponds to this group or question
/// (e.g. a code from LOINC, which defines many questions and answers).

    @JsonKey(name: 'code') List<List<Coding>>? code,
/// [prefix] A short label for a particular group, question or set of
/// display text within the questionnaire used for reference by the individual
/// completing the questionnaire.

    @JsonKey(name: 'prefix') String? prefix,
/// [_prefix] Extensions for prefix

    @JsonKey(name: '_prefix') PrimitiveElement? prefixElement,
/// [text] The name of a section, the text of a question or text content
/// for a display item.

    @JsonKey(name: 'text') String? text,
/// [_text] Extensions for text

    @JsonKey(name: '_text') PrimitiveElement? textElement,
/// [type] The type of questionnaire item this is - whether text for
/// display, a grouping of other items or a particular type of data to be
/// captured (string, integer, Coding, etc.).

    @JsonKey(name: 'type') FhirCode? type,
/// [_type] Extensions for type

    @JsonKey(name: '_type') PrimitiveElement? typeElement,
/// [enableWhen] A constraint indicating that this item should only be
/// enabled (displayed/allow answers to be captured) when the specified
/// condition is true.

    @JsonKey(name: 'enableWhen') List<List<Questionnaire_EnableWhen>>? enableWhen,
/// [enableBehavior] Controls how multiple enableWhen values are
/// interpreted -  whether all or any must be true.

    @JsonKey(name: 'enableBehavior') FhirCode? enableBehavior,
/// [_enableBehavior] Extensions for enableBehavior

    @JsonKey(name: '_enableBehavior') PrimitiveElement? enableBehaviorElement,
/// [disabledDisplay] Indicates if and how items that are disabled (because
/// enableWhen evaluates to 'false') should be displayed.

    @JsonKey(name: 'disabledDisplay') FhirCode? disabledDisplay,
/// [_disabledDisplay] Extensions for disabledDisplay

    @JsonKey(name: '_disabledDisplay') PrimitiveElement? disabledDisplayElement,
/// [required] An indication, if true, that the item must be present in a
/// "completed" QuestionnaireResponse.  If false, the item may be skipped when
/// answering the questionnaire.

    @JsonKey(name: 'required') FhirBoolean? required,
/// [_required] Extensions for required

    @JsonKey(name: '_required') PrimitiveElement? requiredElement,
/// [repeats] An indication, if true, that a QuestionnaireResponse for this
/// item may include multiple answers associated with a single instance of this
/// item (for question-type items) or multiple repetitions of the item (for
/// group-type items).

    @JsonKey(name: 'repeats') FhirBoolean? repeats,
/// [_repeats] Extensions for repeats

    @JsonKey(name: '_repeats') PrimitiveElement? repeatsElement,
/// [readOnly] An indication, when true, that the value cannot be changed
/// by a human respondent to the Questionnaire.

    @JsonKey(name: 'readOnly') FhirBoolean? readOnly,
/// [_readOnly] Extensions for readOnly

    @JsonKey(name: '_readOnly') PrimitiveElement? readOnlyElement,
/// [maxLength] The maximum number of characters that are permitted in the
/// answer to be considered a "valid" QuestionnaireResponse.

    @JsonKey(name: 'maxLength') FhirInteger? maxLength,
/// [_maxLength] Extensions for maxLength

    @JsonKey(name: '_maxLength') PrimitiveElement? maxLengthElement,
/// [answerConstraint] For items that have a defined set of allowed answers
/// (via answerOption or answerValueSet), indicates whether values *other* than
/// those specified can be selected.

    @JsonKey(name: 'answerConstraint') FhirCode? answerConstraint,
/// [_answerConstraint] Extensions for answerConstraint

    @JsonKey(name: '_answerConstraint') PrimitiveElement? answerConstraintElement,
/// [answerValueSet] A reference to a value set containing a list of values
/// representing permitted answers for a question.

    @JsonKey(name: 'answerValueSet') FhirCanonical? answerValueSet,
/// [answerOption] One of the permitted answers for the question.

    @JsonKey(name: 'answerOption') List<List<Questionnaire_AnswerOption>>? answerOption,
/// [initial] One or more values that should be pre-populated in the answer
/// when initially rendering the questionnaire for user input.

    @JsonKey(name: 'initial') List<List<Questionnaire_Initial>>? initial,
/// [item] Text, questions and other groups to be nested beneath a question
/// or group.

    @JsonKey(name: 'item') List<List<Questionnaire_Item>>? item,
  }) = _$Questionnaire_Item;

  @override
  String get fhirType => 'Questionnaire_Item';

  factory Questionnaire_Item.fromJson(Map<String, dynamic> json) =>
      _$Questionnaire_ItemFromJson(json);

  factory Questionnaire_Item.fromYaml(dynamic yaml) => yaml is String
      ? Questionnaire_Item.fromJson(
          jsonDecode(jsonEncode(loadYaml(yaml))) as Map<String, dynamic>)
      : yaml is YamlMap
          ? Questionnaire_Item.fromJson(jsonDecode(jsonEncode(yaml)) as Map<String, dynamic>)
          : throw ArgumentError(
              'Questionnaire_Item cannot be constructed from input provided,'
              ' it is neither a yaml string nor a yaml map.');

  factory Questionnaire_Item.fromJsonString(String source) {
    final dynamic json = jsonDecode(source);
    if (json is Map<String, dynamic>) {
      return _$Questionnaire_ItemFromJson(json);
    } else {
      throw FormatException('FormatException:\nYou passed $json\n'
          'This does not properly decode to a Map<String,dynamic>.');
    }
  }
  @override
  String toJsonString() => jsonEncode(toJson());
}
