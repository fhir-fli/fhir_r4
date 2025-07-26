import 'package:fhir_r4/fhir_r4.dart'
    show CodeableConcept, FhirBoolean, FhirCode, ValueSet;
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart'
    show
        CanonicalResourceCache,
        OnlineResourceCache,
        ValidationOptions,
        ValueSetChecker,
        WorkerContext;

/// The InValueSet operator returns true if the given code is in the given value
/// set.
///
/// The first argument is expected to be a String, Code, or Concept.
///
/// Note that this operator explicitly requires a ValueSetRef as its valueset
/// argument. This allows for both static analysis of the value set references
/// within an artifact, as well as the implementation of value set membership by
/// the target environment as a service call to a terminology server, if desired.
class InValueSet extends OperatorExpression {
  final CqlExpression code;
  final ValueSetRef? valueset;
  final CqlExpression? valuesetExpression;

  InValueSet({
    required this.code,
    this.valueset,
    this.valuesetExpression,
    super.annotation,
    super.localId,
    super.locator,
    super.resultTypeName,
    super.resultTypeSpecifier,
  });

  factory InValueSet.fromJson(Map<String, dynamic> json) {
    return InValueSet(
      code: CqlExpression.fromJson(json['code']!),
      valueset: json['valueset'] == null
          ? null
          : ValueSetRef.fromJson(json['valueset']!),
      valuesetExpression: json['valuesetExpression'] == null
          ? null
          : CqlExpression.fromJson(json['valuesetExpression']!),
      annotation: json['annotation'] != null
          ? (json['annotation'] as List)
              .map((e) => CqlToElmBase.fromJson(e))
              .toList()
          : null,
      localId: json['localId'],
      locator: json['locator'],
      resultTypeName: json['resultTypeName'],
      resultTypeSpecifier: json['resultTypeSpecifier'] != null
          ? TypeSpecifierExpression.fromJson(json['resultTypeSpecifier'])
          : null,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> json = {
      'type': type,
      'code': code.toJson(),
    };

    if (valueset != null) {
      final valueSetMap = valueset!.toJson();
      valueSetMap
          .removeWhere((key, value) => key == 'type' && value == 'ValueSetRef');
      json['valueset'] = valueSetMap;
    }

    if (valuesetExpression != null) {
      json['valuesetExpression'] = valuesetExpression!.toJson();
    }

    if (annotation != null) {
      json['annotation'] = annotation!.map((e) => e.toJson()).toList();
    }

    if (localId != null) {
      json['localId'] = localId;
    }

    if (locator != null) {
      json['locator'] = locator;
    }

    if (resultTypeName != null) {
      json['resultTypeName'] = resultTypeName;
    }

    if (resultTypeSpecifier != null) {
      json['resultTypeSpecifier'] = resultTypeSpecifier!.toJson();
    }

    return json;
  }

  @override
  String toString() => toJson().toString();

  @override
  String get type => 'InValueSet';

  @override
  List<String> getReturnTypes(CqlLibrary library) => const ['Boolean'];

  @override
  Future<FhirBoolean?> execute(Map<String, dynamic> context) async {
    // Retrieve the CqlLibrary from the context
    var library = context['library'];
    if (library == null || library is! CqlLibrary) {
      throw ArgumentError('CqlLibrary not found in context');
    }
    CqlValueSet? valueSetRef = await valueset?.execute(context);
    valueSetRef ??= await valuesetExpression?.execute(context);
    if (valueSetRef == null) {
      throw ArgumentError('ValueSet not found in context');
    }
    final resourceCache = context['resourceCache'] ?? OnlineResourceCache();

    final valueSet = await (resourceCache as CanonicalResourceCache)
        .getCanonicalResource<ValueSet>(valueSetRef.id, valueSetRef.version);

    if (valueSet == null) {
      throw ArgumentError('ValueSet not found in context');
    }

    final workerContext = WorkerContext(resourceCache: resourceCache);
    context['workerContext'] = workerContext;
    final checker = ValueSetChecker(
      context: workerContext,
      options: ValidationOptions(),
      valueSet: valueSet,
    );
    final codeValue = await code.execute(context);

    switch (codeValue) {
      case String _:
        return FhirBoolean(
            (await checker.codeInValueSet(null, codeValue, null)) ?? false);
      case CqlCode _:
        return FhirBoolean((await checker.codeInValueSet(
                codeValue.system, codeValue.code, null)) ??
            false);
      case FhirCode _:
        return FhirBoolean(
            (await checker.codeInValueSet(null, codeValue.valueString, null)) ??
                false);
      case CqlConcept _:
        if (codeValue.codes.isEmpty) {
          return null;
        }
        for (final code in codeValue.codes) {
          final inValueSet =
              (await checker.codeInValueSet(code.system, code.code, null)) ??
                  false;
          if (inValueSet) {
            return FhirBoolean(true);
          }
        }
        return FhirBoolean(false);
      case CodeableConcept _:
        if (codeValue.coding == null || codeValue.coding!.isEmpty) {
          return null;
        }
        for (final coding in codeValue.coding!) {
          final inValueSet = (await checker.codeInValueSet(
                  coding.system?.valueString,
                  coding.code?.valueString,
                  null)) ??
              false;
          if (inValueSet) {
            return FhirBoolean(true);
          }
        }
        return FhirBoolean(false);
      default:
        throw ArgumentError('Invalid code type');
    }
  }
}
