// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';

import 'package:fhir_r4/src/fhir_path/java/java.dart';

bool isWhitespace(dynamic value) {
  if (value is String) {
    return value.isWhiteSpace();
  } else if (value is int) {
    return value.isWhitespace();
  } else {
    return false;
  }
}

class FunctionDetails {
  FunctionDetails(this.description, this.minParameters, this.maxParameters);

  String description;
  int minParameters;
  int maxParameters;

  String getDescription() {
    return description;
  }

  int getMinParameters() {
    return minParameters;
  }

  int getMaxParameters() {
    return maxParameters;
  }
}

enum Equality {
  null_,
  true_,
  false_,
}

/// if the fhir path expressions are allowed to use constants beyond those
/// defined in the specification
/// the application can implement them by providing a constant resolver
abstract class IEvaluationContext {
  /// A constant reference - e.g. a reference to a name that must be resolved in
  /// context. The % will be removed from the constant name before this is
  /// invoked. Variables created with defineVariable will not be processed by
  /// resolveConstant (or resolveConstantType)
  ///
  /// This will also be called if the host invokes the FluentPath engine with a
  /// context of null
  ///
  /// @param appContext    - content passed into the fluent path engine
  /// @param name          - name reference to resolve
  /// @param beforeContext - whether this is being called before the name is
  ///                      resolved locally, or not
  /// @return the value of the reference (or null, if it's not valid, though can
  ///         throw an exception if desired)
  List<FhirBase> resolveConstant(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool beforeContext,
    bool explicitConstant,
  );

  TypeDetails resolveConstantType(
    FHIRPathEngine engine,
    Object appContext,
    String name,
    bool explicitConstant,
  );

  /// when the .log() function is called
  ///
  /// @param argument
  /// @param focus
  /// @return
  bool log(String argument, List<FhirBase> focus);

  // extensibility for functions
  ///
  /// @param functionName
  /// @return null if the function is not known
  FunctionDetails resolveFunction(FHIRPathEngine engine, String functionName);

  /// Check the function parameters, and throw an error if they are incorrect,
  /// or return the type for the function
  ///
  /// @param functionName
  /// @param parameters
  /// @return
  TypeDetails checkFunction(
    FHIRPathEngine engine,
    Object appContext,
    String functionName,
    TypeDetails focus,
    List<TypeDetails> parameters,
  );

  /// @param appContext
  /// @param functionName
  /// @param parameters
  /// @return
  List<FhirBase> executeFunction(
    FHIRPathEngine engine,
    Object appContext,
    List<FhirBase> focus,
    String functionName,
    List<List<FhirBase>> parameters,
  );

  /// Implementation of resolve() function. Passed a string, return matching
  /// resource, if one is known - else null
  ///
  /// @appContext - passed in by the host to the FHIRPathEngine
  /// @param url the reference (Reference.reference or the value of the
  /// canonical
  /// @return
  /// @throws FHIRException
  FhirBase resolveReference(
    FHIRPathEngine engine,
    Object appContext,
    String url,
    FhirBase refContext,
  );

  bool conformsToProfile(
    FHIRPathEngine engine,
    Object appContext,
    FhirBase item,
    String url,
  );

  /// return the value set referenced by the url, which has been used in
  /// memberOf()
  ValueSet resolveValueSet(
    FHIRPathEngine engine,
    Object appContext,
    String url,
  );
}

class ExpressionNodeWithOffset {
  ExpressionNodeWithOffset(this.offset, this.node);

  int offset;
  ExpressionNode node;

  int getOffset() {
    return offset;
  }

  ExpressionNode getNode() {
    return node;
  }
}

class ExecutionContext {
  ExecutionContext({
    this.appInfo,
    this.focusResource,
    this.rootResource,
    this.context,
    this.thisItem,
  }) : index = 0;

  ExecutionContext copyWith({
    Object? appInfo,
    FhirBase? focusResource,
    FhirBase? rootResource,
    FhirBase? context,
    FhirBase? thisItem,
    List<FhirBase>? total,
    int? index,
    Map<String, List<FhirBase>>? definedVariables,
  }) {
    return ExecutionContext(
      appInfo: appInfo ?? this.appInfo,
      focusResource: focusResource ?? this.focusResource,
      rootResource: rootResource ?? this.rootResource,
      context: context ?? this.context,
      thisItem: thisItem ?? this.thisItem,
    )
      ..total = total ?? this.total
      ..index = index ?? this.index
      ..definedVariables = definedVariables ?? this.definedVariables;
  }

  final Object? appInfo;
  final FhirBase? focusResource;
  final FhirBase? rootResource;
  final FhirBase? context;
  final FhirBase? thisItem;
  List<FhirBase>? total;
  int index = 0;
  Map<String, List<FhirBase>>? definedVariables;

  void next() {
    index++;
  }

  FhirInteger getIndex() => FhirInteger(index);

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  List<FhirBase> getDefinedVariable(String name) {
    return definedVariables == null
        ? <FhirBase>[]
        : definedVariables![name] ?? <FhirBase>[];
  }

  void setDefinedVariable(
    String name,
    List<FhirBase> value,
    IWorkerContext worker,
  ) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [name]),
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        worker.formatMessage('FHIRPATH_REDEFINE_VARIABLE', [
          name,
        ]),
      );
    }

    definedVariables![name] = value;
  }
}

class ExecutionTypeContext {
  ExecutionTypeContext(
    this.appInfo,
    this.resource,
    this.context,
    this.thisItem,
  );

  final Object appInfo;
  final String? resource;
  final TypeDetails? context;
  final TypeDetails? thisItem;
  TypeDetails? total;
  Map<String, TypeDetails>? definedVariables;

  bool hasDefinedVariable(String name) {
    return definedVariables != null && definedVariables!.containsKey(name);
  }

  TypeDetails? getDefinedVariable(String name) {
    return definedVariables?[name];
  }

  void setDefinedVariable(String name, TypeDetails value) {
    if (isSystemVariable(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables ??= {};
    if (definedVariables!.containsKey(name)) {
      throw PathEngineException(
        'Redefine of variable $name: FHIRPATH_REDEFINE_VARIABLE',
      );
    }

    definedVariables![name] = value;
  }
}

bool isSystemVariable(String name) {
  if (['sct', 'loinc', 'ucum', 'resource', 'rootResource', 'context']
      .contains(name)) {
    return true;
  }
  return false;
}

class ElementDefinitionMatch {
  ElementDefinitionMatch(this.definition, this.fixedType);

  ElementDefinition? definition;
  String? fixedType;
}

extension ElementDefinitionExtension on ElementDefinition {
  bool hasContentReference() {
    return contentReference != null &&
        (contentReference!.value?.toString().isNotEmpty ?? false);
  }
}
