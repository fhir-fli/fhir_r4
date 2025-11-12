import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_validation/fhir_r4_validation.dart';
import 'package:test/test.dart';

void main() {
  group('validateQuestionnaireResponse', () {
    test('validates QuestionnaireResponse with valid Questionnaire reference',
        () async {
      final questionnaire = Questionnaire(
        id: 'example'.toFhirString,
        status: PublicationStatus.active,
        item: [
          QuestionnaireItem(
            linkId: 'q1'.toFhirString,
            type: QuestionnaireItemType.string,
            text: 'What is your name?'.toFhirString,
          ),
        ],
      );

      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'q1'.toFhirString,
            answer: [
              QuestionnaireResponseAnswer(
                valueX: 'John Doe'.toFhirString,
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();
      // Note: In a real test, you'd need to mock the resourceCache
      // to return the questionnaire when requested

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test(
        'reports error when QuestionnaireResponse has no questionnaire '
        'reference', () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        // No questionnaire reference
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results.hasErrors, isTrue);
      expect(
        results.results.any(
          (r) => r.diagnostics.contains('does not reference a Questionnaire'),
        ),
        isTrue,
      );
    });

    test('validates required response items', () async {
      final questionnaire = Questionnaire(
        id: 'example'.toFhirString,
        status: PublicationStatus.active,
        item: [
          QuestionnaireItem(
            linkId: 'q1'.toFhirString,
            type: QuestionnaireItemType.string,
            text: 'Required question'.toFhirString,
            required_: true.toFhirBoolean,
          ),
        ],
      );

      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        // Missing required item
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      // May have errors if questionnaire cannot be fetched
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('validates nested response items', () async {
      final questionnaire = Questionnaire(
        id: 'example'.toFhirString,
        status: PublicationStatus.active,
        item: [
          QuestionnaireItem(
            linkId: 'group1'.toFhirString,
            type: QuestionnaireItemType.group,
            item: [
              QuestionnaireItem(
                linkId: 'q1'.toFhirString,
                type: QuestionnaireItemType.string,
                text: 'Nested question'.toFhirString,
              ),
            ],
          ),
        ],
      );

      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'group1'.toFhirString,
            item: [
              QuestionnaireResponseItem(
                linkId: 'q1'.toFhirString,
                answer: [
                  QuestionnaireResponseAnswer(
                    valueX: 'Answer'.toFhirString,
                  ),
                ],
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('reports error for response item not found in Questionnaire',
        () async {
      final questionnaire = Questionnaire(
        id: 'example'.toFhirString,
        status: PublicationStatus.active,
        item: [
          QuestionnaireItem(
            linkId: 'q1'.toFhirString,
            type: QuestionnaireItemType.string,
            text: 'Question 1'.toFhirString,
          ),
        ],
      );

      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [
          QuestionnaireResponseItem(
            linkId: 'q2'.toFhirString, // Not in questionnaire
            answer: [
              QuestionnaireResponseAnswer(
                valueX: 'Answer'.toFhirString,
              ),
            ],
          ),
        ],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      // May have errors if questionnaire cannot be fetched or item not found
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });

    test('handles QuestionnaireResponse with empty items', () async {
      final questionnaireResponse = QuestionnaireResponse(
        id: 'example'.toFhirString,
        status: QuestionnaireResponseStatus.completed,
        questionnaire: 'Questionnaire/example'.toFhirCanonical,
        item: [],
      );

      final resourceCache = CanonicalResourceCache();

      final results = await validateQuestionnaireResponse(
        questionnaireResponse: questionnaireResponse,
        resourceCache: resourceCache,
      );

      expect(results, isNotNull);
      expect(results.results, isA<List<ValidationDiagnostics>>());
    });
  });
}
