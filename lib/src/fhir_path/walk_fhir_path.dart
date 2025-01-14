import 'package:fhir_r4/fhir_r4.dart';

/// Start here! This is where the fun begins. This is a bit confusing, so we'll
/// explain the arguments that can be passed.
///
/// The FHIRPath specification defines the following inputs:
///
/// **context**
///
/// [context](https://hl7.org/fhirpath/#environment-variables)
/// Is the original node that was passed to the evaluation engine before
/// starting evaluation.
///
/// Should always be passed in through the [context] parameter.
///
///
/// **resource**
///
/// [resource](https://www.hl7.org/fhir/fhirpath.html#variables)
/// the resource that contains the original node that is in %context
///
/// May be passed in either through an entry in the [environment] map,
/// named "%resource", or through the dedicated parameter.
/// A non-null dedicated parameter takes precedence.
///
///
/// **rootResource**
///
/// [rootResource](https://www.hl7.org/fhir/fhirpath.html#variables)
/// the container resource for the resource identified by %resource
///
/// May be passed in either through an entry in the [environment] map,
/// named "%rootResource", or through the dedicated parameter.
/// A non-null dedicated parameter takes precedence.
///
/// **environment variables / resources**
///
/// [environment] - arbitrary named environment variables.
/// These should be passed in as a map, where each key has the format
/// "%variable-name".
///
/// ```json
/// {
///   "%pi": 3.1415927,
///   "%myname": "Grey"
/// }
/// ```
///
/// *** Lazy-loading ***
/// Instead of a static value, the [environment] may map keys to functions
/// which return the actual value. These functions will only be evaluated when
/// the variable is accessed. This lazy evaluation may boost performance, for
/// instance when iif is used to determine which of two expensive objects is to
/// be used.
///
/// The lazy-loading mechanism is currently only supported through the
/// [environment] map, not for explicitly passed-in parameters.
List<FhirBase> walkFhirPath({
  required FhirBase? context,
  required String pathExpression,
  Resource? resource,
  Resource? rootResource,
  Map<String, dynamic>? environment,
}) {
  final ast = parseFhirPath(pathExpression);
  // print('*************************************');
  // ast.printExpressionTree();
  // print('*************************************');
  return executeFhirPath(
    context: context,
    parsedFhirPath: ast,
    pathExpression: pathExpression,
    resource: resource,
    rootResource: rootResource,
    environment: environment,
  );
}

/// The FHIRPath engine.
final fhirPathEngine = FHIRPathEngine(WorkerContext());

/// Parse a FHIRPath for repeated use with different inputs later.
ExpressionNode parseFhirPath(String pathExpression) {
  return fhirPathEngine.parse(pathExpression);
}

/// Execute the FHIRPath as pre-parsed by [parseFhirPath].
///
/// May be invoked repeatedly on the same parsed FHIRPath,
/// resulting in a performance gain over [walkFhirPath].
///
/// All parameters have the same meaning as for [walkFhirPath].
List<FhirBase> executeFhirPath({
  required FhirBase? context,
  required ExpressionNode parsedFhirPath,
  required String pathExpression,
  Resource? resource,
  Resource? rootResource,
  Map<String, dynamic>? environment,
}) {
  if (environment != null) {
    // Prepare the environment map
    final passedEnvironment = <String, dynamic>{
      if (resource != null) 'focusResource': [resource],
      if (rootResource != null) 'rootResource': [rootResource],
      ...environment,
    };

    try {
      // Evaluate the FHIRPath expression
      return fhirPathEngine.evaluateWithContext(
        null,
        resource,
        rootResource,
        context,
        parsedFhirPath,
        environment: passedEnvironment,
      );
    } catch (error, st) {
      if (error is PathEngineException) {
        rethrow;
      } else if (error is Error) {
        throw PathEngineError(
          'Unable to execute FHIRPath expression',
          expression: pathExpression,
          cause: error,
          stackTrace: st,
        );
      } else {
        throw PathEngineException(
          'Unable to execute FHIRPath expression',
          expression: pathExpression,
          cause: error as Exception,
          stackTrace: st,
        );
      }
    }
  } else {
    try {
      // Evaluate the FHIRPath expression
      return fhirPathEngine.evaluate(context, parsedFhirPath);
    } catch (error, st) {
      if (error is PathEngineException) {
        rethrow;
      } else if (error is Error) {
        throw PathEngineError(
          'Unable to execute FHIRPath expression',
          expression: pathExpression,
          cause: error,
          stackTrace: st,
        );
      } else {
        throw PathEngineException(
          'Unable to execute FHIRPath expression',
          expression: pathExpression,
          cause: error as Exception,
          stackTrace: st,
        );
      }
    }
  }
}

/// The FHIRPath engine's [inContext] function.
extension FhirPathResourceExtension on Map<String, dynamic> {
  /// The FHIRPath engine's [inContext] function.
  static const String contextKey = 'context';

  /// The FHIRPath engine's [focus] function.
  static const String resourceKey = 'resource';

  /// The FHIRPath engine's [atEntry] function.
  static const String rootResourceKey = 'rootResource';

  /// The FHIRPath engine's [atEntry] function.
  dynamic get context => this[contextKey];

  set context(dynamic context) => this[contextKey] = context;

  /// The FHIRPath engine's [focus] function.
  bool get hasNoContext => context == null;

  set resource(Map<String, dynamic>? resource) {
    if (resource != null) {
      this[resourceKey] = resource;
    }
  }

  set rootResource(Map<String, dynamic>? rootResource) {
    if (rootResource != null) {
      this[resourceKey] = rootResource;
    }
  }
}
