import 'test_questionnaire.dart';

/// What stays in the binding is what is specific to R4: the Questionnaire
/// resource walk here, and terminology membership in member_of_test.dart.
///
/// The engine's own semantics — parsing, operators, functions, type
/// operators, date/time arithmetic and the official HL7 suite — moved to the
/// `fhir_path` package, which is where the code being tested lives. It runs
/// them against this binding, so nothing is tested against a stub.
Future<void> main() async {
  await testQuestionnaire();
}
