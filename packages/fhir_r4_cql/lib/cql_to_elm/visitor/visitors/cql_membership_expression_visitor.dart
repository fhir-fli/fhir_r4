import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlMembershipExpressionVisitor extends CqlBaseVisitor<dynamic> {
  CqlMembershipExpressionVisitor(super.library);

  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    bool inContains = true;
    CqlDateTimePrecision? dateTimePrecisionSpecifier;
    final List<CqlExpression> operand = <CqlExpression>[];
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        inContains = child.text == 'in' ? true : false;
      } else if (child is DateTimePrecisionSpecifierContext) {
        dateTimePrecisionSpecifier = CqlDateTimePrecisionExtension.fromJson(
            visitDateTimePrecisionSpecifier(child));
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operand.add(result);
        }
      }
    }
    if (operand.length == 2) {
      if (!inContains) {
        // For `list.value contains CodeRef` where value is a choice type,
        // transform the collection operand into a Query with type narrowing.
        final containsResult =
            _handleContainsWithChoiceType(operand, dateTimePrecisionSpecifier);
        if (containsResult != null) return containsResult;
        return Contains(
            operand: operand, precision: dateTimePrecisionSpecifier);
      } else {
        if (operand[1] is ValueSetRef) {
          // For InValueSet, wrap CodeableConcept properties with
          // FHIRHelpers.ToConcept() to convert FHIR type to CQL type
          var code = operand[0];
          if (_isFhirConceptProperty(code)) {
            code = FunctionRef(
              name: 'ToConcept',
              libraryName: 'FHIRHelpers',
              operand: [code],
            );
          }
          return InValueSet(
            code: code,
            valueset: operand[1] as ValueSetRef,
          );
        } else if (operand[1] is CodeSystemRef) {
          return InCodeSystem(
            code: operand[0],
            codesystem: operand[1] as CodeSystemRef,
          );
        }
        return In(operand: operand, precision: dateTimePrecisionSpecifier);
      }
    }
    throw ArgumentError('$thisNode Invalid MembershipExpression');
  }

  /// Checks if an expression is a scoped Property accessing a known FHIR
  /// CodeableConcept field.
  bool _isFhirConceptProperty(CqlExpression expr) {
    if (expr is Property && expr.scope != null) {
      // Check model info for CodeableConcept type
      final className = _classNameFromScope(expr.scope!);
      if (className != null) {
        final element = getElementInfo(className, expr.path);
        if (element != null) {
          // Check if the element type is CodeableConcept
          if (element.elementType == 'FHIR.CodeableConcept') return true;
          // Also check named type specifier
          final spec = element.elementTypeSpecifier;
          if (spec is NamedTypeSpecifierModel &&
              spec.name == 'CodeableConcept') {
            return true;
          }
        }
      }
      // Fallback to well-known property names
      return const [
        'code',
        'category',
        'type',
        'medicationCodeableConcept',
        'vaccineCode',
        'maritalStatus',
      ].contains(expr.path);
    }
    return false;
  }

  String? _classNameFromScope(String alias) {
    for (final def in library.statements?.def ?? const <ExpressionDef>[]) {
      final expr = def.expression;
      if (expr is Query) {
        for (final src in expr.source ?? <RelationshipClause>[]) {
          if (src.alias == alias) {
            return _classNameFromExpression(src.expression);
          }
        }
      }
    }
    return null;
  }

  String? _classNameFromExpression(CqlExpression expr) {
    if (expr is ExpressionRef) {
      ExpressionDef? refDef;
      for (final d in library.statements?.def ?? const <ExpressionDef>[]) {
        if (d.name == expr.name) {
          refDef = d;
          break;
        }
      }
      if (refDef?.expression is SingletonFrom) {
        final sf = refDef!.expression as SingletonFrom;
        if (sf.operand is Retrieve) {
          return (sf.operand as Retrieve).dataType.localPart;
        }
      }
    }
    if (expr is Retrieve) return expr.dataType.localPart;
    if (expr is SingletonFrom && expr.operand is Retrieve) {
      return (expr.operand as Retrieve).dataType.localPart;
    }
    return null;
  }

  /// Handle `collection.value contains CodeRef` where `value` is a choice type.
  /// Generates:
  /// ```
  /// Contains(
  ///   Query(X from Query($this from collection,
  ///                       where Not(IsNull($this.value)),
  ///                       return $this.value),
  ///         return FHIRHelpers.ToCode(As({fhir}Coding, X))),
  ///   CodeRef
  /// )
  /// ```
  CqlExpression? _handleContainsWithChoiceType(
      List<CqlExpression> operand, CqlDateTimePrecision? precision) {
    // The collection is operand[0], the element is operand[1]
    final collection = operand[0];
    final element = operand[1];

    // Only handle: collection is Property, element is CodeRef
    if (collection is! Property || element is! CodeRef) return null;

    // Check if the property path is a choice type
    ClassInfoElement? choiceElement;
    final className = _resolvePropertyClassName(collection);
    if (className != null) {
      final el = getElementInfo(className, collection.path);
      if (el != null && CqlBaseVisitor.isChoiceType(el)) {
        choiceElement = el;
      }
    }
    choiceElement ??= _findChoiceElementByPath(collection.path);
    if (choiceElement == null || !CqlBaseVisitor.isChoiceType(choiceElement)) {
      return null;
    }

    // Check if the choice types include Coding (needed for Code comparison)
    final choiceTypes = CqlBaseVisitor.getChoiceTypes(choiceElement);
    final hasCoding =
        choiceTypes.any((c) => c == 'Coding' || c == 'FHIR.Coding');
    if (!hasCoding) return null;

    // Build the inner Query: $this from source, where $this.value is not null
    final source = collection.source ?? AliasRef(name: collection.scope!);
    final innerQuery = Query(
      source: [
        RelationshipClause(
          alias: r'$this',
          expression: source,
        ),
      ],
      where: Not(
        operand: IsNull(
          operand: Property(
            path: collection.path,
            source: AliasRef(name: r'$this'),
          ),
        ),
      ),
      returnClause: ReturnClause(
        distinct: false,
        expression: Property(
          path: collection.path,
          source: AliasRef(name: r'$this'),
        ),
      ),
    );

    // Build the outer Query: X from innerQuery, return ToCode(As(Coding, X))
    final outerQuery = Query(
      source: [
        RelationshipClause(
          alias: 'X',
          expression: innerQuery,
        ),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: FunctionRef(
          name: 'ToCode',
          libraryName: 'FHIRHelpers',
          operand: [
            As(
              asType: QName(
                namespaceURI: 'http://hl7.org/fhir',
                localPart: 'Coding',
              ),
              operand: AliasRef(name: 'X'),
            ),
          ],
        ),
      ),
    );

    return Contains(
      operand: [outerQuery, element],
      precision: precision,
    );
  }

  /// Try to resolve the FHIR class name for a Property expression.
  String? _resolvePropertyClassName(Property property) {
    if (property.scope != null) {
      return _classNameFromScope(property.scope!);
    }
    if (property.source != null) {
      return _classNameFromExpression(property.source!);
    }
    return null;
  }

  /// Search all FHIR types in model info for a choice-typed element.
  /// Returns the element with the most choice alternatives.
  ClassInfoElement? _findChoiceElementByPath(String path) {
    ClassInfoElement? best;
    int bestCount = 0;
    for (final model in library.usings?.def ?? <UsingDef>[]) {
      if (model.localIdentifier == null) continue;
      final modelInfo = modelInfoProvider.load(
          ModelIdentifier(id: model.localIdentifier!, version: model.version));
      if (modelInfo == null) continue;
      for (final ti in modelInfo.typeInfo) {
        if (ti is ClassInfo) {
          for (final el in ti.element ?? <ClassInfoElement>[]) {
            if (el.name == path && CqlBaseVisitor.isChoiceType(el)) {
              final count = CqlBaseVisitor.getChoiceTypes(el).length;
              if (count > bestCount) {
                best = el;
                bestCount = count;
              }
            }
          }
        }
      }
    }
    return best;
  }
}
