import 'package:drift/drift.dart';
import 'package:fhir_r4/fhir_r4.dart' as fhir;
import 'package:fhir_r4_db/fhir_r4_db.dart';

/// Composite Search Parameter Table, R4B §3.1.1.4.17.
///
/// One row per element the composite is defined on (an
/// `Observation.component`, a `useContext`, a `Group.characteristic`, or
/// the resource itself) per combination of its components' values, so that
/// a `$`-joined search value is matched against values that sit on the SAME
/// element — "you need find a combination of key/value, not an intersection
/// of separate matches on key and value". Up to three components, each in
/// its own typed slot: what a token, quantity, number, date, string or
/// reference row would carry in its own table, reduced to five columns.
class CompositeSearchParameters extends Table {
  /// FHIR resource type name
  TextColumn get resourceType => text()();

  /// Resource logical id
  TextColumn get id => text()();

  /// When the resource was last updated
  IntColumn get lastUpdated => integer()();

  /// FHIRPath expression identifying the source element
  TextColumn get searchPath => text()();

  /// HTTP search parameter name (e.g., 'code-value-quantity')
  TextColumn get searchName => text().withDefault(const Constant(''))();

  /// Distinguishes the rows of one element and one parameter
  IntColumn get paramIndex => integer()();

  /// Component 1: its type (token, quantity, number, date, string,
  /// reference), then the same fields its own index table would hold.
  TextColumn get c1Type => text()();

  /// Token system, quantity system, reference resource type; else null.
  TextColumn get c1System => text().nullable()();

  /// Token code, quantity code, normalized string, reference id part.
  TextColumn get c1Value => text().nullable()();

  /// Reference as written, quantity unit; else null.
  TextColumn get c1Raw => text().nullable()();

  /// Inclusive low bound: number and quantity ranges, dates as seconds.
  RealColumn get c1Low => real().nullable()();

  /// Exclusive high bound; see [c1Low].
  RealColumn get c1High => real().nullable()();

  /// Component 2, as [c1Type].
  TextColumn get c2Type => text()();

  /// As [c1System].
  TextColumn get c2System => text().nullable()();

  /// As [c1Value].
  TextColumn get c2Value => text().nullable()();

  /// As [c1Raw].
  TextColumn get c2Raw => text().nullable()();

  /// As [c1Low].
  RealColumn get c2Low => real().nullable()();

  /// As [c1High].
  RealColumn get c2High => real().nullable()();

  /// Component 3, present on four MolecularSequence parameters; null type
  /// when the composite has two components.
  TextColumn get c3Type => text().nullable()();

  /// As [c1System].
  TextColumn get c3System => text().nullable()();

  /// As [c1Value].
  TextColumn get c3Value => text().nullable()();

  /// As [c1Raw].
  TextColumn get c3Raw => text().nullable()();

  /// As [c1Low].
  RealColumn get c3Low => real().nullable()();

  /// As [c1High].
  RealColumn get c3High => real().nullable()();

  @override

  /// searchName is part of the key: one FHIR path can back more than one
  /// search parameter — Observation.code serves both `code` and
  /// `combo-code` — and without it the second one collides with the first
  /// on insert, so only one of them could ever be indexed.
  @override
  Set<Column> get primaryKey =>
      {resourceType, id, searchPath, searchName, paramIndex};
}

/// One component's value, reduced to the slot columns.
class CompositeSlot {
  /// Creates a slot value.
  const CompositeSlot({
    required this.type,
    this.system,
    this.value,
    this.raw,
    this.low,
    this.high,
  });

  /// token | quantity | number | date | string | reference | uri.
  final String type;

  /// See [CompositeSearchParameters.c1System].
  final String? system;

  /// See [CompositeSearchParameters.c1Value].
  final String? value;

  /// See [CompositeSearchParameters.c1Raw].
  final String? raw;

  /// See [CompositeSearchParameters.c1Low].
  final double? low;

  /// See [CompositeSearchParameters.c1High].
  final double? high;
}

/// Evaluates the small FHIRPath subset a composite's component expressions
/// use — `code`, `value.as(Quantity)`, `(value as CodeableConcept) | (value
/// as boolean)`, `%resource.referenceSeq.chromosome`, `item.answer.value
/// .ofType(Reference)` — against an element, through [fhir.FhirBase]'s
/// dynamic child access. Public for its tests.
List<fhir.FhirBase> evaluateComponentPath(
  fhir.FhirBase element,
  String expression, {
  fhir.FhirBase? root,
}) {
  final results = <fhir.FhirBase>[];
  for (final member in _splitUnion(expression)) {
    var path = member.trim();
    while (path.startsWith('(') && path.endsWith(')')) {
      path = path.substring(1, path.length - 1).trim();
    }
    // `x as T` → `x.as(T)`.
    final infix = RegExp(r'^(.*?)\s+as\s+([A-Za-z]+)$').firstMatch(path);
    if (infix != null) {
      path = '${infix.group(1)}.as(${infix.group(2)})';
    }
    var nodes = <fhir.FhirBase>[element];
    if (path.startsWith('%resource')) {
      nodes = root == null ? const [] : [root];
      path = path.substring('%resource'.length);
      if (path.startsWith('.')) path = path.substring(1);
    }
    for (final segment in path.split('.').where((s) => s.isNotEmpty)) {
      final cast = RegExp(r'^(?:as|ofType)\((\w+)\)$').firstMatch(segment);
      if (cast != null) {
        final wanted = cast.group(1)!;
        nodes = nodes.where((n) => _isType(n, wanted)).toList();
        continue;
      }
      nodes = [
        for (final node in nodes) ...node.getChildrenByName(segment),
      ];
    }
    results.addAll(nodes);
  }
  return results;
}

/// Splits on `|` at parenthesis depth zero.
List<String> _splitUnion(String expression) {
  final members = <String>[];
  var depth = 0;
  var start = 0;
  for (var i = 0; i < expression.length; i++) {
    final c = expression[i];
    if (c == '(') depth++;
    if (c == ')') depth--;
    if (c == '|' && depth == 0) {
      members.add(expression.substring(start, i));
      start = i + 1;
    }
  }
  members.add(expression.substring(start));
  return members;
}

/// Whether [node] is of FHIR type [wanted], case-insensitively so that
/// `DateTime` in a definition matches the `dateTime` type name, and with
/// Quantity's specialisations (Age, Count, Distance, Duration) counting as
/// a Quantity, as `as(Quantity)` does in FHIRPath.
bool _isType(fhir.FhirBase node, String wanted) {
  if (node.fhirType.toLowerCase() == wanted.toLowerCase()) return true;
  if (wanted == 'Quantity' && node is fhir.Quantity) return true;
  return false;
}

/// Extension on [fhir.FhirBase] to extract composite search parameters.
extension CompositeSearchParametersExtension on fhir.FhirBase {
  /// The composite rows for this element, one per combination of its
  /// components' values. [searchName] names the composite, whose
  /// components come from the generated definitions; [root] is the
  /// resource, for a component written from `%resource`.
  ///
  /// Each component's value goes through the extractor of its own type, so
  /// a token component reads a CodeableConcept exactly as the token index
  /// would (codings as codes, text as display and not a code), a quantity
  /// component carries the same range, and so on.
  List<CompositeSearchParametersCompanion> toCompositeSearchParameter(
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
    int? paramIndex, {
    String searchName = '',
    fhir.FhirBase? root,
  }) {
    final definition = searchParameterFor(resourceType, searchName);
    if (definition == null || definition.components.isEmpty) return const [];

    final perComponent = <List<CompositeSlot>>[];
    for (final component in definition.components) {
      final values =
          evaluateComponentPath(this, component.expression, root: root);
      final slots = <CompositeSlot>[];
      for (final value in values) {
        slots.addAll(
          _slotsFor(
            value,
            component.type,
            resourceType,
            id,
            lastUpdated,
            searchPath,
          ),
        );
      }
      // An element missing one component cannot match a composite value.
      if (slots.isEmpty) return const [];
      perComponent.add(slots);
    }

    // Every combination of the components' values on this element.
    var combinations = <List<CompositeSlot>>[[]];
    for (final slots in perComponent) {
      combinations = [
        for (final prefix in combinations)
          for (final slot in slots) [...prefix, slot],
      ];
    }
    final rows = <CompositeSearchParametersCompanion>[];
    for (final (n, combination) in combinations.indexed) {
      final c1 = combination[0];
      final c2 = combination[1];
      final c3 = combination.length > 2 ? combination[2] : null;
      rows.add(
        CompositeSearchParametersCompanion(
          resourceType: Value(resourceType),
          id: Value(id),
          lastUpdated: Value(lastUpdated),
          searchPath: Value(searchPath),
          searchName: Value(searchName),
          paramIndex: Value((paramIndex ?? 0) * 1000 + n),
          c1Type: Value(c1.type),
          c1System: Value(c1.system),
          c1Value: Value(c1.value),
          c1Raw: Value(c1.raw),
          c1Low: Value(c1.low),
          c1High: Value(c1.high),
          c2Type: Value(c2.type),
          c2System: Value(c2.system),
          c2Value: Value(c2.value),
          c2Raw: Value(c2.raw),
          c2Low: Value(c2.low),
          c2High: Value(c2.high),
          c3Type: Value(c3?.type),
          c3System: Value(c3?.system),
          c3Value: Value(c3?.value),
          c3Raw: Value(c3?.raw),
          c3Low: Value(c3?.low),
          c3High: Value(c3?.high),
        ),
      );
    }
    return rows;
  }

  /// The slot values one component value yields, through the extractor of
  /// its type.
  List<CompositeSlot> _slotsFor(
    fhir.FhirBase value,
    String type,
    String resourceType,
    String id,
    int lastUpdated,
    String searchPath,
  ) {
    switch (type) {
      case 'token':
        return [
          for (final row in value.toTokenSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            // A text-only row (CodeableConcept.text as display) has no
            // code and is not a token value.
            if (row.tokenValue.value.isNotEmpty)
              CompositeSlot(
                type: type,
                system: row.tokenSystem.value,
                value: row.tokenValue.value,
              ),
        ];
      case 'quantity':
        return [
          for (final row in value.toQuantitySearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(
              type: type,
              system: row.quantitySystem.value,
              value: row.quantityCode.value,
              raw: row.quantityUnit.value,
              low: row.quantityLow.value,
              high: row.quantityHigh.value,
            ),
        ];
      case 'number':
        return [
          for (final row in value.toNumberSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(
              type: type,
              low: row.numberLow.value,
              high: row.numberHigh.value,
            ),
        ];
      case 'date':
        return [
          for (final row in value.toDateSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(
              type: type,
              low: row.dateValue.value == null
                  ? null
                  : row.dateValue.value!.millisecondsSinceEpoch / 1000,
              high: row.dateValueEnd.value == null
                  ? null
                  : row.dateValueEnd.value!.millisecondsSinceEpoch / 1000,
            ),
        ];
      case 'string':
        return [
          for (final row in value.toStringSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(
              type: type,
              value: row.stringValue.value,
              raw: row.exactValue.value,
            ),
        ];
      case 'reference':
        return [
          for (final row in value.toReferenceSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(
              type: type,
              system: row.referenceResourceType.value,
              value: row.referenceIdPart.value,
              raw: row.referenceValue.value,
            ),
        ];
      case 'uri':
        return [
          for (final row in value.toUriSearchParameter(
            resourceType,
            id,
            lastUpdated,
            searchPath,
            0,
          ))
            CompositeSlot(type: type, value: row.uriValue.value),
        ];
      default:
        return const [];
    }
  }
}
