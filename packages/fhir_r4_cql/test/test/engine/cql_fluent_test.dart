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
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestAddOne'], equals(CqlInteger(6)));
    });

    test('same-library function with two params: Add(3, 4) = 7', () async {
      const cql = '''
library TestLocalFunction2 version '1.0.0'

using FHIR version '4.0.1'

define function Add(a Integer, b Integer): a + b

define TestAdd: Add(3, 4)
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestAdd'], equals(CqlInteger(7)));
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
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestDouble'], equals(CqlInteger(10)));
    });

    test('fluent function on expression: (2 + 3).double() = 10', () async {
      const cql = '''
library TestFluentExpr version '1.0.0'

using FHIR version '4.0.1'

define fluent function double(x Integer): x * 2

define TestExprDouble: (2 + 3).double()
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestExprDouble'], equals(CqlInteger(10)));
    });

    test('fluent function chained: 3.double().double() = 12', () async {
      const cql = '''
library TestFluentChain version '1.0.0'

using FHIR version '4.0.1'

define fluent function double(x Integer): x * 2

define TestChain: 3.double().double()
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestChain'], equals(CqlInteger(12)));
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

  group('function overload resolution by arity', () {
    test('overloaded functions resolve by operand count', () async {
      const cql = '''
library TestOverload version '1.0.0'

using FHIR version '4.0.1'

define function Greet(name String): 'Hello ' + name
define function Greet(first String, last String): 'Hello ' + first + ' ' + last

define TestOne: Greet('World')
define TestTwo: Greet('John', 'Doe')
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestOne'], equals('Hello World'));
      expect(result['TestTwo'], equals('Hello John Doe'));
    });

    test('overloaded fluent functions resolve by arity', () async {
      const cql = '''
library TestFluentOverload version '1.0.0'

using FHIR version '4.0.1'

define fluent function describe(x Integer): 'Number: ' + ToString(x)
define fluent function describe(x Integer, label String): label + ': ' + ToString(x)

define TestOne: (42).describe()
define TestTwo: (42).describe('Value')
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestOne'], equals('Number: 42'));
      expect(result['TestTwo'], equals('Value: 42'));
    });

    test('single function with unique name still resolves', () async {
      const cql = '''
library TestSingleFunc version '1.0.0'

using FHIR version '4.0.1'

define function AddOne(x Integer): x + 1

define TestResult: AddOne(10)
''';
      final library = parseAndBuildLibrary(cql);
      final result = await library.execute({}, const R4ModelResolver());
      expect(result['TestResult'], equals(CqlInteger(11)));
    });
  });
}
