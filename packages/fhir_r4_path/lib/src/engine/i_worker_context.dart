// ignore_for_file: avoid_positional_boolean_parameters

import 'package:fhir_node/fhir_node.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:ucum/ucum.dart';

/// The engine-facing outcome of a terminology validation. The engine's
/// `memberOf` plumbing reads only success/failure; the binding's rich
/// `ValidationResult` implements this (covariant return), the same pattern
/// as `FhirBase implements FhirNode`.
abstract class IValidationOutcome {
  /// Whether the validation result is acceptable.
  bool get isOk;
}

/// The FHIRPath engine's contract for FHIR-version knowledge — type
/// metadata, terminology, and message formatting. Mirrors the Java
/// reference's `IWorkerContext` seam: the engine reaches runtime values only
/// through the [FhirNode] contract, and reads ALL type metadata through
/// these neutral queries, so one engine serves any FHIR version whose
/// binding supplies an implementation (the R4 binding's `WorkerContext` is
/// one). No member of this interface names a FHIR model type: resources
/// travel as opaque [FhirNode]s and structure knowledge travels as data
/// (names, URLs, ancestry pairs).
abstract class IWorkerContext {
  /// The binding's value factory — how the engine constructs the FHIR-typed
  /// values it yields as results.
  IFhirValueFactory get valueFactory;

  /// The UCUM service used for Quantity arithmetic/comparison canonicals.
  UcumService get ucumService;

  /// The FHIR publication version of the bound model (e.g. `'4.0.1'`).
  String getVersion();

  /// Formats the message-catalog entry [theMessage] with
  /// [theMessageArguments] (engine error texts).
  String formatMessage(String theMessage, List<dynamic> theMessageArguments);

  /// As [formatMessage], with a plural count.
  String formatMessagePlural(
    int pl,
    String theMessage,
    List<dynamic> theMessageArguments,
  );

  /// Whether [typeName] names a known type of the bound model.
  Future<bool> isKnownType(String typeName);

  /// Whether [type] is [superType] or inherits from it (the
  /// `baseDefinition` walk, WITHOUT a primitive-kind stop — see the type
  /// operators' walk asymmetry).
  Future<bool> isSubtypeOf(String type, String superType);

  /// The canonical URL of the type named [type], or null when unknown.
  Future<String?> typeCanonicalUrl(String type);

  /// The `StructureDefinition` resource with canonical URL [url] as an
  /// opaque node (handed back to [resolveContextTypeDetails]), or null.
  Future<FhirNode?> fetchTypeDefinitionByUrl(String url);

  /// The canonical-URL ancestry chain of the type at [uri]: this type, then
  /// each successive base, as `(url, typeName)` pairs.
  Future<List<(String, String)>> typeAncestry(String uri);

  /// Names of every specialization (non-logical) type of the bound model.
  Future<List<String>> specializedTypeNames();

  /// Names of the model's primitive types.
  Future<Set<String>> primitiveTypeNames();

  /// Accumulates into [result] the types reachable by navigating [name]
  /// from [type] (static type analysis).
  Future<void> getChildTypesByName(
    String? type,
    String name,
    TypeDetails result,
    ExpressionNode expr, {
    required bool allowPolymorphicNames,
  });

  /// Resolves the type details of element [context] within the
  /// StructureDefinition node [structureDefinition] (engine `check()` API).
  Future<TypeDetails?> resolveContextTypeDetails(
    FhirNode structureDefinition,
    String context,
    String abstractTypePrefix,
    ExpressionNode expr,
  );

  /// The FHIRPath type-membership test shared by the `is` operator and the
  /// `is()` function: does [node] belong to the type named [name] in
  /// namespace [ns] (`'System'` or `'FHIR'`)?
  Future<bool> isValueOfType(FhirNode node, String ns, String name);

  /// The `ofType()` type test (its subtype walk STOPS at primitive kinds,
  /// unlike [isValueOfType]'s).
  Future<bool> matchesOfType(FhirNode node, String tn);

  /// The `ValueSet` resource for [url] as an opaque node, or null.
  Future<FhirNode?> fetchValueSet(String? url);

  /// Validates a code-carrying value (a `Coding`, or a `code`/`string`/
  /// `uri` primitive) against the `ValueSet` node [valueSet].
  Future<IValidationOutcome> validateCodeForCodingValue(
    ValidationOptions options,
    FhirNode node,
    FhirNode? valueSet,
  );

  /// As [validateCodeForCodingValue], for a `CodeableConcept`-typed value.
  Future<IValidationOutcome> validateCodeForCodeableConceptValue(
    ValidationOptions options,
    FhirNode node,
    FhirNode valueSet,
  );
}
