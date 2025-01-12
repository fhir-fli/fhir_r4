// ignore_for_file: missing_whitespace_between_adjacent_strings

import 'package:fhir_r4/fhir_r4.dart';
import 'package:test/test.dart';

import 'test_data.dart';

void testQuestionnaire() {
  group('Questionnaire Logic', () {
    final response = questionnaireResponse3;
    test('Partial Score', () {
      expect(
        walkFhirPath(
          context: response,
          pathExpression: "QuestionnaireResponse.item.where(linkId = '1.1')."
              'answer.valueCoding.extension.valueDecimal + '
              "QuestionnaireResponse.item.where(linkId = '1.2').answer."
              'valueCoding.extension.valueDecimal+ '
              "QuestionnaireResponse.item.where(linkId = '1.3').answer."
              'valueCoding.extension.valueDecimal',
          resource: response,
        ),
        [13.toFhirDecimal],
      );
      expect(
        walkFhirPath(
          context: response,
          pathExpression: "(QuestionnaireResponse.item.where(linkId = '1.1')."
              'answer.valueCoding.extension.valueDecimal + '
              "QuestionnaireResponse.item.where(linkId = '1.2')."
              'answer.valueCoding.extension.valueDecimal+ '
              "QuestionnaireResponse.item.where(linkId = '1.3')."
              'answer.valueCoding.extension.valueDecimal) < 12',
          resource: response,
        ),
        [false.toFhirBoolean],
      );
      expect(
        walkFhirPath(
          context: response,
          pathExpression: "QuestionnaireResponse.item.where(linkId = '1.1')."
              'answer.valueCoding.extension.value + '
              "QuestionnaireResponse.item.where(linkId = '1.2')."
              'answer.valueCoding.extension.value + '
              "QuestionnaireResponse.item.where(linkId = '1.3')."
              'answer.valueCoding.extension.value',
          resource: response,
        ),
        [13.toFhirDecimal],
      );
      expect(
        walkFhirPath(
          context: response,
          pathExpression: "(QuestionnaireResponse.item.where(linkId = '1.1')."
              'answer.valueCoding.extension.value + '
              "QuestionnaireResponse.item.where(linkId = '1.2')."
              'answer.valueCoding.extension.value + '
              "QuestionnaireResponse.item.where(linkId = '1.3')."
              'answer.valueCoding.extension.value) < 12',
          resource: response,
        ),
        [false.toFhirBoolean],
      );
    });
    test('Total Score Aggregate', () {
      expect(
        walkFhirPath(
          context: response,
          pathExpression:
              'QuestionnaireResponse.item.answer.valueCoding.extension.'
              r'valueDecimal.aggregate($this + $total, 0)',
          resource: response,
        ),
        [13.toFhirDecimal],
      );
      expect(
        walkFhirPath(
          context: response,
          pathExpression:
              'QuestionnaireResponse.item.answer.valueCoding.extension.value'
              r'.aggregate($this + $total, 0)',
          resource: response,
        ),
        [13.toFhirDecimal],
      );
    });
  });
  group('Faiadashu', () {
    test('EnableWhen with specific polymorphic items', () {
      expect(
        walkFhirPath(
          context: questionnaireResponse2,
          pathExpression: "%resource.repeat(item).where(linkId='4.2.b.1')."
              'answer.valueCoding.code '
              '='
              "'female' "
              'and'
              ' today().toString().substring(0, 4).toInteger() '
              '-'
              " %resource.repeat(item).where(linkId='4.2.b.5')."
              'answer.valueDate.toString().substring(0, 4).toInteger() '
              '>='
              ' 40',
          resource: questionnaireResponse2,
        ),
        [false.toFhirBoolean],
      );
    });
    test('EnableWhen using generic value polymorphic type', () {
      expect(
        walkFhirPath(
          context: questionnaireResponse2,
          pathExpression: "%resource.repeat(item).where(linkId='4.2.b.1')."
              'answer.value.code '
              '='
              "'female' "
              'and'
              ' today().toString().substring(0, 4).toInteger() '
              '-'
              " %resource.repeat(item).where(linkId='4.2.b.5')."
              'answer.value.toString().substring(0, 4).toInteger() '
              '>='
              ' 40',
          resource: questionnaireResponse2,
        ),
        [false.toFhirBoolean],
      );
    });

    test('EnableWhen using a defined polymorphic type', () {
      expect(
        walkFhirPath(
          context: questionnaireResponse2,
          pathExpression: "%resource.repeat(item).where(linkId='4.2.b.1')."
              'answer.(value as Coding).code '
              '='
              "'female' "
              'and'
              ' today().toString().substring(0, 4).toInteger() '
              '-'
              " %resource.repeat(item).where(linkId='4.2.b.5')."
              'answer.(value as Date).toString().substring(0, 4).toInteger() '
              '>='
              ' 40',
          resource: questionnaireResponse2,
        ),
        [false.toFhirBoolean],
      );
    });
  });

  group('More Complicated Responses', () {
    test('Contains on more than one item', () {
      expect(
        walkFhirPath(
          context: questionnaireResponse1,
          pathExpression:
              "item.where(linkId.contains('/psc/preschool/routines/inflexibility'))",
        ).map((e) => e.toJson()).toList(),
        [
          {'linkId': '/psc/preschool/routines/inflexibility/fidgety'},
          {'linkId': '/psc/preschool/routines/inflexibility/angry'},
        ],
      );
    });
    test('Fuckin a sums scores', () {
      expect(
        walkFhirPath(
          context: questionnaireResponse1,
          pathExpression: 'item.answer.valueCoding.extension.valueDecimal.'
              r'aggregate($this + $total, 0)',
          resource: questionnaireResponse1,
        ),
        [2.toFhirDecimal],
      );
      expect(
        walkFhirPath(
          context: questionnaireResponse1,
          pathExpression: 'item.answer.valueCoding.extension.value.'
              r'aggregate($this + $total, 0)',
          resource: questionnaireResponse1,
        ),
        [2.toFhirDecimal],
      );
    });
  
    test('Risk scoring', () {
      expect(
        walkFhirPath(
          context: null,
          pathExpression: 'iif(%allQuestionsAnswered, '
              "iif(%gender = 'Male', "
              'iif(%age>70, 1 - (0.9402).power((52.00961  * '
              '(%age.ln() - 3.8926095) + 20.014077 * '
              '(%tChol.ln() - 5.3441475) - 0.905964  * (%hdl.ln() - 3.7731132) '
              '+ 1.305784  * (%systolic.ln() - 4.8618212) + 0.241549  * '
              '(%antihypert - 0.1180474) + 12.096316 * (%smokes - 0.335602) - '
              '4.605038  * (%age.ln() * %tChol.ln() - 20.8111562) - 2.84367   '
              '* (70.ln() * %smokes  - 1.2890301) - 2.93323   * (%age.ln() * '
              '%age.ln() - 15.2144965)).exp()), {}), {}), {})',
          environment: {
            'allQuestionsAnswered': [true.toFhirBoolean],
            'gender': ['Male'.toFhirString],
            'age': [75.toFhirDecimal],
            'tChol': [8.toFhirDecimal],
            'hdl': [0.2.toFhirDecimal],
            'systolic': [180.toFhirDecimal],
            'antihypert': [0.toFhirDecimal],
            'smokes': [1.toFhirDecimal],
          },
          resource: questionnaireResponse3,
        ),
        [0.9999999999988963.toFhirDecimal],
      );
    });
  });
}
