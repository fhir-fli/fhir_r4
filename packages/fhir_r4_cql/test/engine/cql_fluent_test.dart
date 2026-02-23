import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

import '../test_helpers/cql_test_helpers.dart';

void main() {
  group('local function calls', () {
    test('same-library function: AddOne(5) = 6', () async {
      const cql = '''
library TestLocalFunction version '1.0.0'

using FHIR version '4.0.1'

define function AddOne(x Integer): x + 1

define TestAddOne: AddOne(5)
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute();
      expect(result['TestAddOne'], equals(FhirInteger(6)));
    });

    test('same-library function with two params: Add(3, 4) = 7', () async {
      const cql = '''
library TestLocalFunction2 version '1.0.0'

using FHIR version '4.0.1'

define function Add(a Integer, b Integer): a + b

define TestAdd: Add(3, 4)
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute();
      expect(result['TestAdd'], equals(FhirInteger(7)));
    });
  });

  group('fluent function calls', () {
    test('fluent function: 5.double() = 10', () async {
      const cql = '''
library TestFluent version '1.0.0'

using FHIR version '4.0.1'

define fluent function double(x Integer): x * 2

define TestDouble: 5.double()
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute();
      expect(result['TestDouble'], equals(FhirInteger(10)));
    });

    test('fluent function on expression: (2 + 3).double() = 10', () async {
      const cql = '''
library TestFluentExpr version '1.0.0'

using FHIR version '4.0.1'

define fluent function double(x Integer): x * 2

define TestExprDouble: (2 + 3).double()
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute();
      expect(result['TestExprDouble'], equals(FhirInteger(10)));
    });

    test('fluent function chained: 3.double().double() = 12', () async {
      const cql = '''
library TestFluentChain version '1.0.0'

using FHIR version '4.0.1'

define fluent function double(x Integer): x * 2

define TestChain: 3.double().double()
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute();
      expect(result['TestChain'], equals(FhirInteger(12)));
    });

    test('fluent function serializes fluent flag in JSON', () {
      const cql = '''
library TestFluentJson version '1.0.0'

using FHIR version '4.0.1'

define fluent function myFunc(x Integer): x + 1
''';
      final library = parseAndBuildLibrary(cql);
      final funcDef = library.statements?.def
          .whereType<FunctionDef>()
          .firstWhere((f) => f.name == 'myFunc');
      expect(funcDef, isNotNull);
      expect(funcDef!.fluent, isTrue);
      final json = funcDef.toJson();
      expect(json['fluent'], isTrue);
    });
  });
}
