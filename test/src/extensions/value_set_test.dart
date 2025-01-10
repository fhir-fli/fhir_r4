import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4/src/fhir_path/java/java.dart';

Future<void> main() async {
  // Create a sample ValueSet with concepts
  final valueSet = ValueSet(
    status: PublicationStatus.active,
    compose: ValueSetCompose(
      include: [
        ValueSetInclude(
          system: FhirUri('http://example.com/system'),
          concept: [
            ValueSetConcept(
              code: FhirCode('example-code'),
              display: FhirString('Example Code'),
            ),
          ],
        ),
      ],
    ),
  );

  // Create a Coding to validate
  final coding = Coding(
    system: FhirUri('http://example.com/system'),
    code: FhirCode('example-code'),
  );

  // Create a context
  final context = WorkerContext();

  // Validate the code
  final result = await context.validateCodeWithCoding(
      ValidationOptions(), coding, valueSet,);

  // ignore: avoid_print
  print(result.message);
}
