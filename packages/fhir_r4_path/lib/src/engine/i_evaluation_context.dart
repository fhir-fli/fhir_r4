// ignore_for_file: public_member_api_docs, avoid_positional_boolean_parameters

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

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
    FHIRPathEngine? engine,
    Object? appContext,
    String? name,
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
  bool fpLog(String argument, List<FhirBase> focus);

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
    Object? appContext,
    List<FhirBase> focus,
    String? functionName,
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
    Object? appContext,
    String url,
  );
}
