/// FHIR R4 implementation of `cql`'s [ModelResolver].
///
/// This package (`fhir_r4_cql`) is the FHIR R4 binding for the
/// model-independent `cql` engine — the analogue of cqframework's
/// `engine.fhir` / `cql-exec-fhir`. The engine never imports `fhir_r4`;
/// that coupling lives here and in [R4TerminologyProvider].
///
/// Mirrors the canonical pattern from
/// [cqframework R4FhirModelResolver](https://github.com/cqframework/clinical_quality_language/blob/main/Src/java/engine-fhir/src/main/kotlin/org/opencds/cqf/cql/engine/fhir/model/R4FhirModelResolver.kt).
library;

import 'package:cql/cql.dart';
import 'package:fhir_r4/fhir_r4.dart' as r4;
import 'package:fhir_r4_path/fhir_r4_path.dart'
    show FHIRPathEngine, WorkerContext;
import 'package:ucum/fhir/validated_quantity.dart' show ValidatedQuantity;
import 'package:ucum/fhir/validated_ratio.dart' show ValidatedRatio;

/// Concrete [ModelResolver] for FHIR R4 data.
///
/// Engine code consumes this via the [ModelResolver] interface; the engine
/// never references `r4.FhirCode` (etc.) directly. Construct one at engine
/// instantiation:
///
/// ```dart
/// final engine = CqlEngine(modelResolver: R4ModelResolver());
/// ```
class R4ModelResolver implements ModelResolver {
  /// Const constructor — the resolver carries no per-instance state.
  const R4ModelResolver();

  @override
  String get fhirVersion => '4.0.1';

  @override
  List<String> get packageNames => const [
        'http://hl7.org/fhir',
        'http://hl7.org/fhir/r4',
      ];

  // ===========================================================================
  // is_ — the answer to `value is FHIR.<typeName>` and `value is System.<typeName>`
  // ===========================================================================

  @override
  bool? is_(dynamic value, String typeName) {
    // CQL System types are checked first (CQL-namespace `is`).
    final systemResult = _isSystem(value, typeName);
    if (systemResult != null) return systemResult;

    // Fall through to FHIR R4 primitives + composites.
    return _isFhirR4(value, typeName);
  }

  bool? _isSystem(dynamic value, String typeName) {
    switch (typeName) {
      case 'Boolean':
        return value is CqlBoolean;
      case 'Integer':
        return value is CqlInteger;
      case 'Long':
        return value is CqlLong;
      case 'Decimal':
        return value is CqlDecimal;
      case 'String':
        return value is CqlString;
      case 'DateTime':
        return value is CqlDateTime;
      case 'Date':
        return value is CqlDate;
      case 'Time':
        return value is CqlTime;
      case 'Any':
        return value != null;
      // Composite System types (live in lib/engine/types/) — kept as a hook
      // for the engine to extend. Returning null delegates to the caller.
      case 'Code':
      case 'Concept':
      case 'Quantity':
      case 'Ratio':
      case 'Interval':
      case 'List':
      case 'Tuple':
        return null;
      default:
        return null;
    }
  }

  bool? _isFhirR4(dynamic value, String typeName) {
    switch (typeName) {
      // FHIR primitive types
      case 'boolean':
        return value is r4.FhirBoolean;
      case 'integer':
        return value is r4.FhirInteger;
      case 'integer64':
        return value is r4.FhirInteger64;
      case 'decimal':
        return value is r4.FhirDecimal;
      case 'string':
        // FhirCode, FhirMarkdown, FhirId all extend FhirString — caught here.
        return value is r4.FhirString;
      case 'uri':
        // FhirCanonical, FhirUrl, FhirUuid, FhirOid extend FhirUri.
        return value is r4.FhirUri;
      case 'code':
        return value is r4.FhirCode;
      case 'date':
        return value is r4.FhirDate;
      case 'dateTime':
        return value is r4.FhirDateTime;
      case 'time':
        return value is r4.FhirTime;
      case 'instant':
        return value is r4.FhirInstant;
      case 'base64Binary':
        return value is r4.FhirBase64Binary;
      case 'id':
        return value is r4.FhirId;
      case 'markdown':
        return value is r4.FhirMarkdown;
      case 'positiveInt':
        return value is r4.FhirPositiveInt;
      case 'unsignedInt':
        return value is r4.FhirUnsignedInt;
      case 'oid':
        return value is r4.FhirOid;
      case 'uuid':
        return value is r4.FhirUuid;
      case 'canonical':
        return value is r4.FhirCanonical;
      case 'url':
        return value is r4.FhirUrl;

      // FHIR complex/composite datatypes (most-common subset; extend as needed)
      case 'Coding':
        return value is r4.Coding;
      case 'CodeableConcept':
        return value is r4.CodeableConcept;
      case 'Quantity':
        return value is r4.Quantity;
      case 'Ratio':
        return value is r4.Ratio;
      case 'Range':
        return value is r4.Range;
      case 'Period':
        return value is r4.Period;
      case 'Identifier':
        return value is r4.Identifier;
      case 'HumanName':
        return value is r4.HumanName;
      case 'Address':
        return value is r4.Address;
      case 'ContactPoint':
        return value is r4.ContactPoint;
      case 'Reference':
        return value is r4.Reference;
      case 'Attachment':
        return value is r4.Attachment;
      case 'Annotation':
        return value is r4.Annotation;
      case 'Duration':
        return value is r4.FhirDuration;
      case 'Money':
        return value is r4.Money;
      case 'SampledData':
        return value is r4.SampledData;
      case 'Signature':
        return value is r4.Signature;
      case 'Timing':
        return value is r4.Timing;
      case 'Meta':
        return value is r4.FhirMeta;
      case 'Narrative':
        return value is r4.Narrative;
      case 'Extension':
        return value is r4.FhirExtension;

      default:
        // Resource type checks — fall back to dynamic type name match.
        if (value is r4.Resource) {
          return value.resourceType.toString() == typeName;
        }
        return null;
    }
  }

  // ===========================================================================
  // as_ — the CQL `as` operator
  // ===========================================================================

  @override
  dynamic as_(dynamic value, String typeName, {bool isStrict = false}) {
    final matches = is_(value, typeName) ?? false;
    if (matches) return value;
    if (isStrict) {
      throw StateError(
        'as_: $value (${value.runtimeType}) is not assignable to $typeName',
      );
    }
    return null;
  }

  // ===========================================================================
  // Type discovery — stub. Full implementation requires the R4 modelinfo
  // (System.Code ↔ r4.FhirCode etc.) which we'll wire up alongside the
  // engine refactor.
  // ===========================================================================

  @override
  Type? resolveType(String typeName) {
    // TODO(r4-resolver): map typeName → concrete Type by walking r4 model
    // info. For now used only by createInstance; engine refactor doesn't
    // require it yet.
    return null;
  }

  @override
  String? resolveTypeOf(dynamic value) {
    if (value == null) return null;

    // CQL System types
    if (value is CqlBoolean) return 'Boolean';
    if (value is CqlInteger) return 'Integer';
    if (value is CqlLong) return 'Long';
    if (value is CqlDecimal) return 'Decimal';
    if (value is CqlString) return 'String';
    if (value is CqlDateTime) return 'DateTime';
    if (value is CqlDate) return 'Date';
    if (value is CqlTime) return 'Time';

    // FHIR R4 primitives (most specific first; subclasses before bases)
    if (value is r4.FhirCanonical) return 'canonical';
    if (value is r4.FhirUrl) return 'url';
    if (value is r4.FhirUuid) return 'uuid';
    if (value is r4.FhirOid) return 'oid';
    if (value is r4.FhirId) return 'id';
    if (value is r4.FhirCode) return 'code';
    if (value is r4.FhirMarkdown) return 'markdown';
    if (value is r4.FhirString) return 'string';
    if (value is r4.FhirUri) return 'uri';
    if (value is r4.FhirInstant) return 'instant';
    if (value is r4.FhirDateTime) return 'dateTime';
    if (value is r4.FhirDate) return 'date';
    if (value is r4.FhirTime) return 'time';
    if (value is r4.FhirBoolean) return 'boolean';
    if (value is r4.FhirPositiveInt) return 'positiveInt';
    if (value is r4.FhirUnsignedInt) return 'unsignedInt';
    if (value is r4.FhirInteger) return 'integer';
    if (value is r4.FhirInteger64) return 'integer64';
    if (value is r4.FhirDecimal) return 'decimal';
    if (value is r4.FhirBase64Binary) return 'base64Binary';

    // Resources
    if (value is r4.Resource) return value.resourceType.toString();

    return null;
  }

  @override
  ({String type, bool isList})? resolveTypePath(String path) {
    final field = r4.resolveSimplePath(path);
    if (field == null) return null;
    return (type: field.type, isList: field.isList);
  }

  // ===========================================================================
  // Property access — runtime FHIRPath resolution against R4 data. This is the
  // single place the engine's `Property` operator routes FHIR navigation; it
  // uses the modern FHIRPathEngine entry point (never the legacy walkFhirPath).
  // ===========================================================================

  @override
  Future<dynamic> resolvePath(dynamic source, String path) async {
    if (source == null) return null;

    // Coerce the source into a FHIR object the FHIRPathEngine can walk.
    final r4.FhirBase? fhirContext;
    if (source is r4.FhirBase) {
      fhirContext = source;
    } else if (source is Map<String, dynamic>) {
      fhirContext = r4.Resource.fromJson(source);
    } else if (source is List &&
        source.length == 1 &&
        source.first is Map<String, dynamic>) {
      fhirContext = r4.Resource.fromJson(source.first as Map<String, dynamic>);
    } else if (source is ValidatedQuantity) {
      fhirContext = r4.Quantity(
        value: r4.FhirDecimal.tryParse(source.value.asUcumDecimal()),
        unit: r4.FhirString(source.unit),
      );
    } else {
      fhirContext = null;
    }
    if (fhirContext == null) return null;

    try {
      final engine = await FHIRPathEngine.create(WorkerContext());
      final ast = engine.parse(path);
      var result = await engine.evaluate(fhirContext, ast);
      // Fallback for choice types (e.g. value[x]) the path didn't resolve.
      if (result.isEmpty) {
        final child = fhirContext.getChildByName(path);
        if (child != null) {
          result = [child];
        }
      }
      if (result.length == 1) return result.first;
      return result;
    } catch (_) {
      return null;
    }
  }

  @override
  dynamic setValue(dynamic target, String path, dynamic value) {
    // TODO(r4-resolver): implement set-on-typed-FHIR. Map-shaped fallback
    // works for the JSON-only engine path.
    if (target is Map<String, dynamic>) {
      target[path] = value;
      return target;
    }
    throw UnimplementedError('setValue on non-Map targets not yet supported');
  }

  @override
  String? resolveId(dynamic target) {
    if (target is r4.Resource) return target.id?.valueString;
    if (target is Map<String, dynamic>) return target['id'] as String?;
    return null;
  }

  @override
  String? getContextPath(String? contextType, String? targetType) {
    // TODO(r4-resolver): populate the context-path table from R4 modelinfo.
    // The hardcoded common ones below cover the cases most measure logic uses.
    if (contextType == null || targetType == null) return null;
    if (contextType == targetType) return 'id';
    if (contextType == 'Patient') {
      switch (targetType) {
        case 'Encounter':
        case 'Observation':
        case 'Condition':
        case 'Procedure':
        case 'MedicationRequest':
        case 'MedicationStatement':
        case 'MedicationAdministration':
        case 'AllergyIntolerance':
        case 'DiagnosticReport':
        case 'ServiceRequest':
        case 'CarePlan':
        case 'Goal':
          return 'subject';
        case 'Immunization':
          return 'patient';
      }
    }
    return null;
  }

  @override
  dynamic createInstance(String typeName) {
    // TODO(r4-resolver): wire up typed instance construction. Most engine
    // paths only need this for CQL Tuple/List, which the engine handles
    // directly without involving the resolver.
    throw UnimplementedError(
      'createInstance(\$typeName) not yet implemented — '
      'extend R4ModelResolver if your CQL uses typed instance construction.',
    );
  }

  // ===========================================================================
  // Equality
  // ===========================================================================

  @override
  bool? objectEqual(dynamic left, dynamic right) {
    if (left == null || right == null) return null;
    if (identical(left, right)) return true;
    return left == right;
  }

  @override
  bool? objectEquivalent(dynamic left, dynamic right) {
    if (left == null && right == null) return true;
    if (left == null || right == null) return false;
    // TODO(r4-resolver): full FHIR-type-aware equivalence (Quantity unit
    // canonicalization, Period boundary semantics, etc.). Fallback to `==`
    // is correct for primitives and structurally-equal composites.
    return left == right;
  }

  // ===========================================================================
  // System-type conversion (the boundary contract)
  // ===========================================================================

  @override
  dynamic toCqlSystemType(dynamic value) {
    if (value == null) return null;

    // Already a CQL System type — pass through.
    if (value is CqlType) return value;

    // R4 primitives → CQL System primitives
    if (value is r4.FhirBoolean) return CqlBoolean(value.valueBoolean);
    if (value is r4.FhirInteger) return CqlInteger(value.valueInt);
    if (value is r4.FhirPositiveInt) return CqlInteger(value.valueInt);
    if (value is r4.FhirUnsignedInt) return CqlInteger(value.valueInt);
    if (value is r4.FhirInteger64) return CqlLong(value.valueString);
    if (value is r4.FhirDecimal) return CqlDecimal(value.valueString);
    // All FHIR string-flavored primitives (code, markdown, id, oid, uuid,
    // canonical, url, uri, string) collapse to CqlString per CQL spec.
    if (value is r4.FhirString) return CqlString(value.valueString);
    if (value is r4.FhirUri) return CqlString(value.valueString);
    if (value is r4.FhirDateTime) {
      return value.valueString == null
          ? null
          : CqlDateTime.fromString(value.valueString!);
    }
    if (value is r4.FhirInstant) {
      // Instant collapses to DateTime per CQL spec — no separate type.
      return value.valueString == null
          ? null
          : CqlDateTime.fromString(value.valueString!);
    }
    if (value is r4.FhirDate) {
      return value.valueString == null
          ? null
          : CqlDate.fromString(value.valueString!);
    }
    if (value is r4.FhirTime) {
      return value.valueString == null ? null : CqlTime(value.valueString);
    }

    // R4 composites → CQL System composites (the boundary conversions the
    // reference implementations declare in the modelinfo: Coding →
    // System.Code, CodeableConcept → System.Concept, Quantity →
    // System.Quantity, Ratio → System.Ratio, Period →
    // Interval<System.DateTime>, Range → Interval<System.Quantity>).
    if (value is r4.Coding) return _codingToCqlCode(value);
    if (value is r4.CodeableConcept) {
      return CqlConcept(
        codes: [
          for (final coding in value.coding ?? <r4.Coding>[])
            _codingToCqlCode(coding),
        ],
        display: value.text?.valueString,
      );
    }
    if (value is r4.Quantity) return _quantityToValidated(value);
    if (value is r4.Ratio) {
      final numerator = _quantityToValidated(value.numerator);
      final denominator = _quantityToValidated(value.denominator);
      if (numerator == null || denominator == null) return null;
      return ValidatedRatio(numerator: numerator, denominator: denominator);
    }
    if (value is r4.Period) {
      return CqlInterval<CqlDateTime>(
        low: value.start?.valueString == null
            ? null
            : CqlDateTime.fromString(value.start!.valueString!),
        high: value.end?.valueString == null
            ? null
            : CqlDateTime.fromString(value.end!.valueString!),
        lowClosed: true,
        highClosed: true,
      );
    }
    if (value is r4.Range) {
      return CqlInterval<ValidatedQuantity>(
        low: _quantityToValidated(value.low),
        high: _quantityToValidated(value.high),
        lowClosed: true,
        highClosed: true,
      );
    }

    // No System equivalent — pass through opaquely.
    return value;
  }

  CqlCode _codingToCqlCode(r4.Coding coding) => CqlCode(
        code: coding.code?.valueString,
        system: coding.system?.valueString,
        version: coding.version?.valueString,
        display: coding.display?.valueString,
      );

  ValidatedQuantity? _quantityToValidated(r4.Quantity? quantity) {
    if (quantity == null) return null;
    final num? value = quantity.value?.valueNum;
    if (value == null) return null;
    final unit =
        quantity.code?.valueString ?? quantity.unit?.valueString ?? '1';
    return ValidatedQuantity.fromNumber(value, unit: unit);
  }

  @override
  dynamic fromCqlSystemType(dynamic value, [String? fhirTypeName]) {
    if (value == null) return null;
    if (value is CqlBoolean) return r4.FhirBoolean(value.valueBoolean);
    if (value is CqlInteger) return r4.FhirInteger(value.valueInt);
    if (value is CqlLong) return r4.FhirInteger64(value.valueString);
    if (value is CqlDecimal) return r4.FhirDecimal(value.valueString);
    if (value is CqlString) {
      switch (fhirTypeName) {
        case 'code':
          return r4.FhirCode(value.valueString);
        case 'markdown':
          return r4.FhirMarkdown(value.valueString);
        case 'id':
          return r4.FhirId(value.valueString);
        case 'uri':
          return r4.FhirUri(value.valueString);
        case 'url':
          return r4.FhirUrl(value.valueString);
        case 'oid':
          return r4.FhirOid(value.valueString);
        case 'uuid':
          return r4.FhirUuid(value.valueString);
        case 'canonical':
          return r4.FhirCanonical(value.valueString);
        default:
          return r4.FhirString(value.valueString);
      }
    }
    if (value is CqlDateTime) {
      return value.valueString == null
          ? null
          : r4.FhirDateTime.fromString(value.valueString!);
    }
    if (value is CqlDate) {
      return value.valueString == null
          ? null
          : r4.FhirDate.fromString(value.valueString!);
    }
    if (value is CqlTime) return r4.FhirTime(value.valueString);
    return value;
  }

  @override
  Map<String, dynamic>? toElementMap(dynamic value) {
    // Typed FHIR objects (resources, datatypes, backbone elements) decompose
    // to their FHIR-JSON element map. Raw Maps are already in this form and
    // are handled by the caller, not here.
    if (value is r4.FhirBase) return value.toJson();
    return null;
  }
}
