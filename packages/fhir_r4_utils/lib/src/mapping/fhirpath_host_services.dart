import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:fhir_r4_utils/fhir_r4_utils.dart';

/// FHIRPath host services for evaluating FHIRPath expressions.
class FHIRPathHostServices extends IEvaluationContext {
  @override
  List<FhirBase> resolveConstant(
    FHIRPathEngine? engine,
    Object? appContext,
    String? name,
    bool beforeContext,
    bool explicitConstant,
  ) {
    final vars = appContext is MappingVariables ? appContext : null;
    final list = <FhirBase>[];
    final res = vars?.get(MappingVariableMode.INPUT, name) ??
        vars?.get(MappingVariableMode.OUTPUT, name);
    if (res != null) {
      list.add(res.fromBuilder());
    }
    return list;
  }

  @override
  TypeDetails resolveConstantType(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool explicitConstant,
  ) {
    if (appContext is! VariablesForProfiling) {
      throw Exception(
          "Internal Logic Error (wrong type '${appContext.runtimeType}' "
          'in resolveConstantType)');
    }
    final vars = appContext;
    final v = vars.get(null, name);
    if (v == null) {
      throw PathEngineException(
        "Unknown variable '$name' from variables ${vars.summary()}",
      );
    }
    return v.property.types;
  }

  @override
  TypeDetails checkFunction(
    FHIRPathEngine engine,
    Object appContext,
    String functionName,
    TypeDetails focus,
    List<TypeDetails> parameters,
  ) {
    throw UnimplementedError();
  }

  @override
  bool conformsToProfile(
    FHIRPathEngine engine,
    Object appContext,
    FhirBase item,
    String url,
  ) {
    throw UnimplementedError();
  }

  @override
  List<FhirBase> executeFunction(
    FHIRPathEngine engine,
    Object? appContext,
    List<FhirBase> focus,
    String? functionName,
    List<List<FhirBase>> parameters,
  ) {
    throw UnimplementedError();
  }

  @override
  bool fpLog(String argument, List<FhirBase> focus) {
    throw UnimplementedError();
  }

  @override
  FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName) {
    throw UnimplementedError();
  }

  @override
  FhirBase resolveReference(
    FHIRPathEngine engine,
    Object appContext,
    String url,
    FhirBase refContext,
  ) {
    throw UnimplementedError();
  }

  @override
  ValueSet resolveValueSet(
    FHIRPathEngine engine,
    Object? appContext,
    String url,
  ) {
    throw UnimplementedError();
  }
}
