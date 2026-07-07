// Translate and execute CQL (Clinical Quality Language) with fhir_r4_cql.
//
// fhir_r4_cql is a thin R4B binding over the model-independent `cql` engine:
// `libraryFromCql` (CQL -> ELM) and `execute` come from `cql`, while
// `R4ModelResolver` supplies FHIR R4 data access for retrieves.
//
// Run: dart run example/main.dart
// ignore_for_file: avoid_print
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

Future<void> main() async {
  // A small library of pure expressions — no FHIR retrieves, so it runs with
  // an empty execution context.
  const source = '''
library Example version '1.0.0'

define "Greeting": 'Hello, CQL'
define "Sum": 1 + 2 + 3
define "IsAdult": 21 >= 18
define "Evens": (List{1, 2, 3, 4, 5, 6}) X where X mod 2 = 0
''';

  // 1. Translate CQL source to an executable ELM library. Translation
  //    problems are recorded on `library.annotation` (mirroring the reference
  //    translator) rather than thrown — inspect it before executing if you
  //    need to surface errors.
  final library = libraryFromCql(source);

  // 2. Execute the library. The R4ModelResolver wires in FHIR R4 data access;
  //    expressions that retrieve (e.g. [Patient], [Observation]) resolve
  //    through it. Pure expressions ignore it. `execute` returns the run
  //    context, keyed by define name (alongside internal engine keys).
  final results = await library.execute(
    <String, dynamic>{},
    const R4ModelResolver(),
  ) as Map<String, dynamic>;

  // 3. Read each define's result by name.
  for (final name in ['Greeting', 'Sum', 'IsAdult', 'Evens']) {
    print('$name: ${results[name]}');
  }
}
