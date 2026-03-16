import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:test/test.dart';

void main() {
  // ───────────────────────────────────────────────────────────────────────────
  // And
  // ───────────────────────────────────────────────────────────────────────────
  group('And', () {
    test('define "IsTrue": true and true', () async {
      final and = And(operand: [LiteralBoolean(true), LiteralBoolean(true)]);
      expect(await and.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": true and false', () async {
      final and = And(operand: [LiteralBoolean(true), LiteralBoolean(false)]);
      expect(await and.execute({}), FhirBoolean(false));
    });
    test('define "IsAlsoFalse": false and false', () async {
      final and = And(operand: [LiteralBoolean(false), LiteralBoolean(false)]);
      expect(await and.execute({}), FhirBoolean(false));
    });
    test('define "FalseAndNull": false and null', () async {
      final and = And(operand: [LiteralBoolean(false), LiteralNull()]);
      expect(await and.execute({}), FhirBoolean(false));
    });
    test('define "NullAndFalse": null and false', () async {
      final and = And(operand: [LiteralNull(), LiteralBoolean(false)]);
      expect(await and.execute({}), FhirBoolean(false));
    });
    test('define "TrueAndNull": true and null', () async {
      final and = And(operand: [LiteralBoolean(true), LiteralNull()]);
      expect(await and.execute({}), isNull);
    });
    test('define "NullAndTrue": null and true', () async {
      final and = And(operand: [LiteralNull(), LiteralBoolean(true)]);
      expect(await and.execute({}), isNull);
    });
    test('define "NullAndNull": null and null', () async {
      final and = And(operand: [LiteralNull(), LiteralNull()]);
      expect(await and.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Or
  // ───────────────────────────────────────────────────────────────────────────
  group('Or', () {
    test('define "IsTrue": true or false', () async {
      final or = Or(operand: [LiteralBoolean(true), LiteralBoolean(false)]);
      expect(await or.execute({}), FhirBoolean(true));
    });
    test('define "IsAlsoTrue": true or null', () async {
      final or = Or(operand: [LiteralBoolean(true), LiteralNull()]);
      expect(await or.execute({}), FhirBoolean(true));
    });
    test('define "NullOrTrue": null or true', () async {
      final or = Or(operand: [LiteralNull(), LiteralBoolean(true)]);
      expect(await or.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": false or false', () async {
      final or = Or(operand: [LiteralBoolean(false), LiteralBoolean(false)]);
      expect(await or.execute({}), FhirBoolean(false));
    });
    test('define "FalseOrNull": false or null', () async {
      final or = Or(operand: [LiteralBoolean(false), LiteralNull()]);
      expect(await or.execute({}), isNull);
    });
    test('define "NullOrFalse": null or false', () async {
      final or = Or(operand: [LiteralNull(), LiteralBoolean(false)]);
      expect(await or.execute({}), isNull);
    });
    test('define "NullOrNull": null or null', () async {
      final or = Or(operand: [LiteralNull(), LiteralNull()]);
      expect(await or.execute({}), isNull);
    });
    test('define "TrueOrTrue": true or true', () async {
      final or = Or(operand: [LiteralBoolean(true), LiteralBoolean(true)]);
      expect(await or.execute({}), FhirBoolean(true));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Not
  // ───────────────────────────────────────────────────────────────────────────
  group('Not', () {
    test('define "IsTrue": not false', () async {
      final not = Not(operand: LiteralBoolean(false));
      expect(await not.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": not true', () async {
      final not = Not(operand: LiteralBoolean(true));
      expect(await not.execute({}), FhirBoolean(false));
    });
    test('define "IsNull": not null', () async {
      final not = Not(operand: LiteralNull());
      expect(await not.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Xor
  // ───────────────────────────────────────────────────────────────────────────
  group('Xor', () {
    test('define "IsTrue": true xor false', () async {
      final xor = Xor(operand: [LiteralBoolean(true), LiteralBoolean(false)]);
      expect(await xor.execute({}), FhirBoolean(true));
    });
    test('define "IsAlsoTrue": false xor true', () async {
      final xor = Xor(operand: [LiteralBoolean(false), LiteralBoolean(true)]);
      expect(await xor.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": true xor true', () async {
      final xor = Xor(operand: [LiteralBoolean(true), LiteralBoolean(true)]);
      expect(await xor.execute({}), FhirBoolean(false));
    });
    test('define "IsAlsoFalse": false xor false', () async {
      final xor = Xor(operand: [LiteralBoolean(false), LiteralBoolean(false)]);
      expect(await xor.execute({}), FhirBoolean(false));
    });
    test('define "TrueXorNull": true xor null', () async {
      final xor = Xor(operand: [LiteralBoolean(true), LiteralNull()]);
      expect(await xor.execute({}), isNull);
    });
    test('define "NullXorNull": null xor null', () async {
      final xor = Xor(operand: [LiteralNull(), LiteralNull()]);
      expect(await xor.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Implies
  // ───────────────────────────────────────────────────────────────────────────
  group('Implies', () {
    test('define "TrueImpliesTrue": true implies true', () async {
      final implies =
          Implies(operand: [LiteralBoolean(true), LiteralBoolean(true)]);
      expect(await implies.execute({}), FhirBoolean(true));
    });
    test('define "TrueImpliesFalse": true implies false', () async {
      final implies =
          Implies(operand: [LiteralBoolean(true), LiteralBoolean(false)]);
      expect(await implies.execute({}), FhirBoolean(false));
    });
    test('define "FalseImpliesTrue": false implies true', () async {
      final implies =
          Implies(operand: [LiteralBoolean(false), LiteralBoolean(true)]);
      expect(await implies.execute({}), FhirBoolean(true));
    });
    test('define "FalseImpliesFalse": false implies false', () async {
      final implies =
          Implies(operand: [LiteralBoolean(false), LiteralBoolean(false)]);
      expect(await implies.execute({}), FhirBoolean(true));
    });
    test('define "TrueImpliesNull": true implies null', () async {
      final implies = Implies(operand: [LiteralBoolean(true), LiteralNull()]);
      expect(await implies.execute({}), isNull);
    });
    test('define "FalseImpliesNull": false implies null', () async {
      final implies = Implies(operand: [LiteralBoolean(false), LiteralNull()]);
      expect(await implies.execute({}), FhirBoolean(true));
    });
    test('define "NullImpliesTrue": null implies true', () async {
      final implies = Implies(operand: [LiteralNull(), LiteralBoolean(true)]);
      expect(await implies.execute({}), FhirBoolean(true));
    });
    test('define "NullImpliesNull": null implies null', () async {
      final implies = Implies(operand: [LiteralNull(), LiteralNull()]);
      expect(await implies.execute({}), isNull);
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // IsNull
  // ───────────────────────────────────────────────────────────────────────────
  group('IsNull', () {
    test('define "IsTrue": null is null', () async {
      final isNull = IsNull(operand: LiteralNull());
      expect(await isNull.execute({}), FhirBoolean(true));
    });
    test('define "IsFalse": true is null', () async {
      final isNull = IsNull(operand: LiteralBoolean(true));
      expect(await isNull.execute({}), FhirBoolean(false));
    });
    test('define "IntegerIsFalse": 5 is null', () async {
      final isNull = IsNull(operand: LiteralInteger(5));
      expect(await isNull.execute({}), FhirBoolean(false));
    });
    test('define "StringIsFalse": \'hello\' is null', () async {
      final isNull = IsNull(operand: LiteralString('hello'));
      expect(await isNull.execute({}), FhirBoolean(false));
    });
  });

  // ───────────────────────────────────────────────────────────────────────────
  // Coalesce
  // ───────────────────────────────────────────────────────────────────────────
  group('Coalesce', () {
    test('define "Coalesce15": Coalesce(null, 15, null)', () async {
      final coalesce = Coalesce.three(
        LiteralNull(),
        LiteralInteger(15),
        LiteralNull(),
      );
      expect(await coalesce.execute({}), FhirInteger(15));
    });
    test('define "CoalesceFirst": Coalesce(1, 2)', () async {
      final coalesce = Coalesce.two(LiteralInteger(1), LiteralInteger(2));
      expect(await coalesce.execute({}), FhirInteger(1));
    });
    test('define "IsNull": Coalesce(null, null, null)', () async {
      final coalesce = Coalesce.three(
        LiteralNull(),
        LiteralNull(),
        LiteralNull(),
      );
      expect(await coalesce.execute({}), isNull);
    });
    test('define "CoalesceString": Coalesce(null, \'hello\')', () async {
      final coalesce = Coalesce.two(LiteralNull(), LiteralString('hello'));
      expect(await coalesce.execute({}), 'hello');
    });
  });
}
