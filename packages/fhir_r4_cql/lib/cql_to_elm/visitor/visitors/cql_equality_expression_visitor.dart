import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';

class CqlEqualityExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlEqualityExpressionVisitor(super.library);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) {
    final int thisNode = getNextNode();
    String? equalityOperator;
    final operands = <CqlExpression>[];

    // 1) Parse out the two operands and the operator symbol
    for (final child in ctx.children ?? <ParseTree>[]) {
      if (child is TerminalNodeImpl) {
        equalityOperator = child.text;
      } else {
        final result = byContext(child);
        if (result is CqlExpression) {
          operands.add(result);
        } else if (result is String) {
          // figure out which statement this name refers to:
          final idx =
              library.statements?.def.indexWhere((d) => d.name == result);
          // get the declared return type from that statement
          final declaredTypes = (idx != null && idx != -1)
              // AFTER you’ve fixed Property.getReturnTypes, this will work:
              ? library.statements!.def[idx].expression!.getReturnTypes(library)
              : <String>[];
          // pick the first (there should only be one)
          final typeName =
              declaredTypes.isNotEmpty ? declaredTypes.first : null;

          operands.add(ExpressionRef(
            name: result,
            libraryName: library.identifier?.id,
            resultTypeName: typeName,
          ));
        }
      }
    }

    // 2) If we have exactly two operands, potentially rewrite list‐literals
    if (operands.length == 2) {
      for (var i = 0; i < 2; i++) {
        final expr = operands[i];
        if (expr is ListExpression) {
          // ───── Inject ToList for implicit flatten ─────
          final elements = expr.element ?? [];
          bool isOnlyLists = true;
          bool isSingletonReturn = false;
          if (elements.length > 1) {
            final newElements = <CqlExpression>[];
            if (elements.first is ListExpression) {
              for (final elt in elements) {
                if (elt is ListExpression) {
                  newElements.add(elt);
                } else {
                  isOnlyLists = false;
                  isSingletonReturn = true;
                  newElements.add(ToList(operand: elt));
                }
              }
            } else {
              isOnlyLists = false;
              newElements.addAll(elements);
            }
            expr.element = newElements;
          }

          // ───── Compute the three “needs Query” flags ─────

          // 1) flattenNeeded: list-of-lists + scalars
          final flattenNeeded = (expr.element?.isNotEmpty == true) &&
              (expr.element?.first is ListExpression) &&
              expr.element!.skip(1).any((e) => e is! ListExpression);

          // 2) setOpCast: sibling is a UNION that truly mixes element types
          final sibling = operands[1 - i];
          bool setOpCast = false;
          if (sibling is Union) {
            final seen = <String>{};
            for (final opNode in sibling.operand!) {
              // unwrap any As(ListExpression) around the list literal
              ListExpression? listExpr;
              if (opNode is ListExpression) {
                listExpr = opNode;
              } else if (opNode is As && opNode.operand is ListExpression) {
                listExpr = opNode.operand as ListExpression;
              }
              if (listExpr != null) {
                for (final inner in listExpr.element ?? <CqlExpression>[]) {
                  seen.addAll(inner.getReturnTypes(library));
                }
              }
            }
            // only cast if more than one element-type (e.g. Integer + String)
            setOpCast = seen.length > 1;
          }

          // 3) genericCast: declared element-type vs actual literal types differ
          final actualTypes = expr.element
                  ?.map((e) => e.getReturnTypes(library))
                  .expand((ts) => ts)
                  .toSet() ??
              {};
          final declaredTypes =
              expr.getReturnTypes(library).where((t) => t != 'List').toSet();
          final genericCast = declaredTypes.isNotEmpty &&
              !declaredTypes.containsAll(actualTypes);

          // ───── Wrap in Query if ANY of those is true ─────
          if ((flattenNeeded && !isOnlyLists) || setOpCast || genericCast) {
            if (flattenNeeded && isSingletonReturn) {
              _addDemoteWarning(ctx);
            }
            operands[i] = _buildQueryFromOperand(
                expr, flattenNeeded && isSingletonReturn);
          }
        }
      }

      // ───── Decimal promotion (unchanged) ─────
      if (_requiresDecimalPromotion(operands[0])) {
        if (operands[1] is LiteralInteger) {
          operands[1] = ToDecimal(operand: operands[1]);
        } else if (operands[1] is LiteralNull) {
          operands[1] = As(
            operand: operands[1],
            asType: QName.fromElmType('Decimal'),
          );
        }
      }
    }

    // ───── Choice type Case expression generation ─────
    // When a choice-typed property (e.g. Extension.value) is compared to a
    // string literal, generate a Case expression with branches for each
    // string-convertible choice alternative.
    if (operands.length == 2 &&
        (equalityOperator == '=' || equalityOperator == '!=')) {
      for (int i = 0; i < 2; i++) {
        final other = operands[1 - i];
        if (other is LiteralString && operands[i] is Property) {
          final caseExpr = _buildChoiceCaseForString(operands[i] as Property);
          if (caseExpr != null) {
            operands[i] = caseExpr;
          }
        }
      }
    }

    // ───── Inject FHIRHelpers wrappers ─────
    if (operands.length == 2 && equalityOperator != null) {
      final left = operands[0];
      final right = operands[1];

      final leftTypes =
          left.getReturnTypes(library).map((t) => t.toLowerCase()).toList();
      final rightTypes =
          right.getReturnTypes(library).map((t) => t.toLowerCase()).toList();

      final leftIsCode =
          leftTypes.any((t) => t.endsWith('code') || t.endsWith('codeenum'));
      final rightIsCode =
          rightTypes.any((t) => t.endsWith('code') || t.endsWith('codeenum'));
      final leftIsConcept = leftTypes.any((t) => t.endsWith('concept'));
      final rightIsConcept = rightTypes.any((t) => t.endsWith('concept'));

      final leftIsLiteralString = left is LiteralString;
      final rightIsLiteralString = right is LiteralString;

      // 1) Under =/!= only, wrap codes → strings
      if (equalityOperator == '=' || equalityOperator == '!=') {
        if (leftIsCode && rightIsLiteralString) {
          operands[0] = FunctionRef(
            name: 'ToString',
            libraryName: 'FHIRHelpers',
            operand: [left],
          );
        } else if (rightIsCode && leftIsLiteralString) {
          operands[1] = FunctionRef(
            name: 'ToString',
            libraryName: 'FHIRHelpers',
            operand: [right],
          );
        }
      }

      // 2) Check FHIR concept properties compared with Code-type operands.
      //    When a FHIR property like .code is compared with a CodeRef,
      //    wrap the FHIR side with FHIRHelpers.ToConcept and the Code with ToConcept.
      //    When both sides are FHIR concept properties, no wrapping needed.
      final leftIsFhirConceptProp = _isFhirConceptProperty(left);
      final rightIsFhirConceptProp = _isFhirConceptProperty(right);
      bool conceptHandled = false;

      if (leftIsFhirConceptProp &&
          !rightIsFhirConceptProp &&
          _isCodeType(right)) {
        operands[0] = FunctionRef(
          name: 'ToConcept',
          libraryName: 'FHIRHelpers',
          operand: [operands[0]],
        );
        operands[1] = ToConcept(operand: operands[1]);
        conceptHandled = true;
      } else if (rightIsFhirConceptProp &&
          !leftIsFhirConceptProp &&
          _isCodeType(left)) {
        operands[1] = FunctionRef(
          name: 'ToConcept',
          libraryName: 'FHIRHelpers',
          operand: [operands[1]],
        );
        operands[0] = ToConcept(operand: operands[0]);
        conceptHandled = true;
      }

      // 3) For *any* concept comparison (both =/!= and ~/!~), wrap *both* sides
      //    (only if not already handled by the FHIR property check above)
      if (!conceptHandled && (leftIsConcept || rightIsConcept)) {
        if (leftIsConcept) {
          operands[0] = FunctionRef(
            name: 'ToConcept',
            libraryName: 'FHIRHelpers',
            operand: [operands[0]],
          );
        } else {
          operands[0] = ToConcept(operand: operands[0]);
        }
        if (rightIsConcept) {
          operands[1] = FunctionRef(
            name: 'ToConcept',
            libraryName: 'FHIRHelpers',
            operand: [operands[1]],
          );
        } else {
          operands[1] = ToConcept(operand: operands[1]);
        }
      }
    }

    // 4) Build the final Equal/Not/Equivalent node
    if (operands.length == 2 && equalityOperator != null) {
      switch (equalityOperator) {
        case '=':
          return Equal(operand: translateOperand(operands));
        case '!=':
          return Not(operand: Equal(operand: translateOperand(operands)));
        case '~':
          return Equivalent(
              operand: translateOperand(_wrapCodeRefsAsConcept(operands)));
        case '!~':
          return Not(
              operand: Equivalent(
                  operand: translateOperand(_wrapCodeRefsAsConcept(operands))));
      }
    }

    throw ArgumentError(
        '$thisNode Invalid EqualityExpression: operands=${operands.length}, operator=$equalityOperator');
  }

  /// Wrap any CodeRef operands in ToConcept for equivalence comparisons.
  /// The reference translator promotes Code to Concept when used in ~.
  List<CqlExpression> _wrapCodeRefsAsConcept(List<CqlExpression> operands) {
    return operands.map((op) {
      if (op is CodeRef) {
        return ToConcept(operand: op);
      }
      return op;
    }).toList();
  }

  bool _requiresDecimalPromotion(CqlExpression expression) {
    final returnTypes = expression.getReturnTypes(library);
    return returnTypes.any((e) => e.toLowerCase().endsWith('decimal'));
  }

  /// Builds a Query from an operand when required
  Query _buildQueryFromOperand(CqlExpression operand, bool isSingletonReturn) {
    const alias = 'X';
    final query = Query(
      source: [
        RelationshipClause(
          alias: alias,
          expression: operand,
        ),
      ],
      returnClause: ReturnClause(
        distinct: false,
        expression: isSingletonReturn
            ? SingletonFrom(operand: AliasRef(name: alias))
            : As(
                operand: AliasRef(name: alias),
                asTypeSpecifier: _buildChoiceTypeFromOperand(operand),
              ),
      ),
    );

    return query;
  }

  /// Builds a ChoiceTypeSpecifier from an operand
  ChoiceTypeSpecifier _buildChoiceTypeFromOperand(CqlExpression operand) {
    if (operand is ListExpression) {
      final elementTypes = operand.element
          ?.map((e) => e.getReturnTypes(library))
          .expand((types) => types)
          .toSet();

      if (elementTypes == null || elementTypes.isEmpty) {
        throw ArgumentError('Operand must have at least one valid type.');
      }

      final choices = elementTypes.map((type) {
        return NamedTypeSpecifier(
          namespace: QName.elmCoreTypes.contains(type)
              ? QName.fromElmType(type)
              : QName.fhirTypes.contains(type)
                  ? QName.fromFhirType(type)
                  : QName(localPart: type),
        );
      }).toList();

      final choiceTypeSpecifier = ChoiceTypeSpecifier(choice: choices);

      return choiceTypeSpecifier;
    }
    throw ArgumentError('Expected a ListExpression for ChoiceTypeSpecifier.');
  }

  /// Checks if an expression is a scoped Property accessing a known FHIR
  /// CodeableConcept field (code, category, type, etc.).
  bool _isFhirConceptProperty(CqlExpression expr) {
    if (expr is Property && expr.scope != null) {
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

  /// Checks if an expression is a CQL Code type (CodeRef or ConceptRef).
  bool _isCodeType(CqlExpression expr) {
    return expr is CodeRef || expr is ConceptRef;
  }

  void _addDemoteWarning(ParserRuleContext ctx) {
    library.annotation ??= <CqlToElmBase>[];
    library.annotation!.add(
      CqlToElmError(
        libraryId: library.identifier?.id,
        startLine: ctx.start?.line,
        startChar: ctx.start?.charPositionInLine,
        endLine: ctx.stop?.line,
        endChar: ctx.stop?.charPositionInLine,
        message: 'List-valued expression was demoted to a singleton.',
        errorType: ErrorType.semantic,
        errorSeverity: ErrorSeverity.warning,
      ),
    );
  }

  /// The FHIR types whose values can be converted to string via ToString.
  /// Each entry is (choiceTypeName, fhirBaseType). The base type is used for
  /// Is/As checks because FHIR subtypes like 'code' extend 'string'.
  static const _stringConvertibleTypes = [
    ('base64Binary', 'base64Binary'),
    ('canonical', 'uri'),
    ('code', 'string'),
    ('id', 'string'),
    ('markdown', 'string'),
    ('oid', 'uri'),
    ('string', 'string'),
    ('uri', 'uri'),
    ('url', 'uri'),
    ('uuid', 'uri'),
  ];

  /// Build a Case expression for a choice-typed Property compared to a string.
  /// Returns null if the property is not on a choice field.
  ///
  /// For Extension.value[x] compared to 'M', generates:
  /// ```
  /// Case {
  ///   when Is({fhir}base64Binary, value) then ToString(As({fhir}base64Binary, value))
  ///   when Is({fhir}uri, value) then ToString(As({fhir}uri, value))  // for canonical
  ///   when Is({fhir}string, value) then ToString(As({fhir}string, value))  // for code
  ///   ...
  ///   else null
  /// }
  /// ```
  CqlExpression? _buildChoiceCaseForString(Property property) {
    // Try to find the choice type element info
    ClassInfoElement? element;

    // First try to resolve the class from the property
    final className = _resolvePropertyClassName(property);
    if (className != null) {
      element = getElementInfo(className, property.path);
    }

    // Fallback: search all FHIR types for a choice-typed element with this path
    if (element == null || !CqlBaseVisitor.isChoiceType(element)) {
      element = _findChoiceElementByPath(property.path);
    }

    if (element == null || !CqlBaseVisitor.isChoiceType(element)) return null;

    // Get the choice alternatives
    final choiceTypes = CqlBaseVisitor.getChoiceTypes(element);

    // Filter to string-convertible types that exist in the choice alternatives
    final matchingTypes = <(String, String)>[];
    for (final (choiceName, baseType) in _stringConvertibleTypes) {
      // Check if this choice type or its FHIR-prefixed version exists
      if (choiceTypes.any((c) =>
          c == choiceName ||
          c == 'FHIR.$choiceName' ||
          c == '{http://hl7.org/fhir}$choiceName')) {
        matchingTypes.add((choiceName, baseType));
      }
    }

    if (matchingTypes.isEmpty) return null;

    // Build Case items
    final caseItems = <CaseItem>[];
    for (final (_, baseType) in matchingTypes) {
      final fhirQName = QName(
        namespaceURI: 'http://hl7.org/fhir',
        localPart: baseType,
      );

      caseItems.add(CaseItem(
        when_: Is(
          isType: fhirQName,
          operand: property,
        ),
        then: FunctionRef(
          name: 'ToString',
          libraryName: 'FHIRHelpers',
          operand: [
            As(
              asType: fhirQName,
              operand: property,
            ),
          ],
        ),
      ));
    }

    return Case(
      caseItem: caseItems,
      elseExpr: LiteralNull(),
    );
  }

  /// Try to resolve the FHIR class name for a Property expression.
  String? _resolvePropertyClassName(Property property) {
    if (property.scope != null) {
      return _classNameFromScope(property.scope!);
    }
    if (property.source != null) {
      return _classNameFromSource(property.source!);
    }
    return null;
  }

  String? _classNameFromScope(String alias) {
    for (final def in library.statements?.def ?? const <ExpressionDef>[]) {
      final expr = def.expression;
      if (expr is Query) {
        for (final src in expr.source) {
          if (src.alias == alias) {
            return _classNameFromSource(src.expression);
          }
        }
      }
    }
    return null;
  }

  String? _classNameFromSource(CqlExpression expr) {
    if (expr is Retrieve) return expr.dataType.localPart;
    if (expr is SingletonFrom && expr.operand is Retrieve) {
      return (expr.operand as Retrieve).dataType.localPart;
    }
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
    return null;
  }

  /// Search all FHIR types in model info for a choice-typed element
  /// with the given property path name. Returns the element with the most
  /// choice alternatives (to prefer Extension over narrower types).
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
