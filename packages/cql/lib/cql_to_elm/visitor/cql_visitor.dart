// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import '../antlr/cql_parser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [cqlParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class CqlVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [cqlParser.library].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLibrary(LibraryContext ctx);

  /// Visit a parse tree produced by [cqlParser.definition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDefinition(DefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.libraryDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLibraryDefinition(LibraryDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.usingDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitUsingDefinition(UsingDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.includeDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIncludeDefinition(IncludeDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.localIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLocalIdentifier(LocalIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.accessModifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAccessModifier(AccessModifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.parameterDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitParameterDefinition(ParameterDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.codesystemDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodesystemDefinition(CodesystemDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.valuesetDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitValuesetDefinition(ValuesetDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.codesystems].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodesystems(CodesystemsContext ctx);

  /// Visit a parse tree produced by [cqlParser.codesystemIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodesystemIdentifier(CodesystemIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.libraryIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLibraryIdentifier(LibraryIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.codeDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeDefinition(CodeDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.conceptDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.codeIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeIdentifier(CodeIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.codesystemId].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodesystemId(CodesystemIdContext ctx);

  /// Visit a parse tree produced by [cqlParser.valuesetId].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitValuesetId(ValuesetIdContext ctx);

  /// Visit a parse tree produced by [cqlParser.versionSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitVersionSpecifier(VersionSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.codeId].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeId(CodeIdContext ctx);

  /// Visit a parse tree produced by [cqlParser.typeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTypeSpecifier(TypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.namedTypeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.modelIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitModelIdentifier(ModelIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.listTypeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitListTypeSpecifier(ListTypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.intervalTypeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIntervalTypeSpecifier(IntervalTypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.tupleTypeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.tupleElementDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTupleElementDefinition(TupleElementDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.choiceTypeSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitChoiceTypeSpecifier(ChoiceTypeSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.statement].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitStatement(StatementContext ctx);

  /// Visit a parse tree produced by [cqlParser.expressionDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitExpressionDefinition(ExpressionDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.contextDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitContextDefinition(ContextDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.functionDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitFunctionDefinition(FunctionDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.operandDefinition].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitOperandDefinition(OperandDefinitionContext ctx);

  /// Visit a parse tree produced by [cqlParser.functionBody].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitFunctionBody(FunctionBodyContext ctx);

  /// Visit a parse tree produced by [cqlParser.querySource].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQuerySource(QuerySourceContext ctx);

  /// Visit a parse tree produced by [cqlParser.aliasedQuerySource].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAliasedQuerySource(AliasedQuerySourceContext ctx);

  /// Visit a parse tree produced by [cqlParser.alias].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAlias(AliasContext ctx);

  /// Visit a parse tree produced by [cqlParser.queryInclusionClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.withClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitWithClause(WithClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.withoutClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitWithoutClause(WithoutClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.retrieve].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitRetrieve(RetrieveContext ctx);

  /// Visit a parse tree produced by [cqlParser.contextIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitContextIdentifier(ContextIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.codePath].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodePath(CodePathContext ctx);

  /// Visit a parse tree produced by [cqlParser.codeComparator].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeComparator(CodeComparatorContext ctx);

  /// Visit a parse tree produced by [cqlParser.terminology].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTerminology(TerminologyContext ctx);

  /// Visit a parse tree produced by [cqlParser.qualifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifier(QualifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.query].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQuery(QueryContext ctx);

  /// Visit a parse tree produced by [cqlParser.sourceClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSourceClause(SourceClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.letClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLetClause(LetClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.letClauseItem].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLetClauseItem(LetClauseItemContext ctx);

  /// Visit a parse tree produced by [cqlParser.whereClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitWhereClause(WhereClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.returnClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitReturnClause(ReturnClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.aggregateClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAggregateClause(AggregateClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.startingClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitStartingClause(StartingClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.sortClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSortClause(SortClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.sortDirection].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSortDirection(SortDirectionContext ctx);

  /// Visit a parse tree produced by [cqlParser.sortByItem].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSortByItem(SortByItemContext ctx);

  /// Visit a parse tree produced by [cqlParser.qualifiedIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifiedIdentifier(QualifiedIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.qualifiedIdentifierExpression].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifiedIdentifierExpression(
      QualifiedIdentifierExpressionContext ctx);

  /// Visit a parse tree produced by [cqlParser.qualifierExpression].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifierExpression(QualifierExpressionContext ctx);

  /// Visit a parse tree produced by the {@code simplePathIndexer}
  /// labeled alternative in {@link cqlParser#simplePath}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSimplePathIndexer(SimplePathIndexerContext ctx);

  /// Visit a parse tree produced by the {@code simplePathQualifiedIdentifier}
  /// labeled alternative in {@link cqlParser#simplePath}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSimplePathQualifiedIdentifier(
      SimplePathQualifiedIdentifierContext ctx);

  /// Visit a parse tree produced by the {@code simplePathReferentialIdentifier}
  /// labeled alternative in {@link cqlParser#simplePath}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSimplePathReferentialIdentifier(
      SimplePathReferentialIdentifierContext ctx);

  /// Visit a parse tree produced by the {@code simpleStringLiteral}
  /// labeled alternative in {@link cqlParser#simpleLiteral}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSimpleStringLiteral(SimpleStringLiteralContext ctx);

  /// Visit a parse tree produced by the {@code simpleNumberLiteral}
  /// labeled alternative in {@link cqlParser#simpleLiteral}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx);

  /// Visit a parse tree produced by the {@code durationBetweenExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDurationBetweenExpression(DurationBetweenExpressionContext ctx);

  /// Visit a parse tree produced by the {@code inFixSetExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInFixSetExpression(InFixSetExpressionContext ctx);

  /// Visit a parse tree produced by the {@code retrieveExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitRetrieveExpression(RetrieveExpressionContext ctx);

  /// Visit a parse tree produced by the {@code timingExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTimingExpression(TimingExpressionContext ctx);

  /// Visit a parse tree produced by the {@code queryExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQueryExpression(QueryExpressionContext ctx);

  /// Visit a parse tree produced by the {@code notExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitNotExpression(NotExpressionContext ctx);

  /// Visit a parse tree produced by the {@code booleanExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitBooleanExpression(BooleanExpressionContext ctx);

  /// Visit a parse tree produced by the {@code orExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitOrExpression(OrExpressionContext ctx);

  /// Visit a parse tree produced by the {@code castExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCastExpression(CastExpressionContext ctx);

  /// Visit a parse tree produced by the {@code andExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAndExpression(AndExpressionContext ctx);

  /// Visit a parse tree produced by the {@code betweenExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitBetweenExpression(BetweenExpressionContext ctx);

  /// Visit a parse tree produced by the {@code membershipExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitMembershipExpression(MembershipExpressionContext ctx);

  /// Visit a parse tree produced by the {@code differenceBetweenExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDifferenceBetweenExpression(
      DifferenceBetweenExpressionContext ctx);

  /// Visit a parse tree produced by the {@code inequalityExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInequalityExpression(InequalityExpressionContext ctx);

  /// Visit a parse tree produced by the {@code equalityExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitEqualityExpression(EqualityExpressionContext ctx);

  /// Visit a parse tree produced by the {@code existenceExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitExistenceExpression(ExistenceExpressionContext ctx);

  /// Visit a parse tree produced by the {@code impliesExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx);

  /// Visit a parse tree produced by the {@code termExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTermExpression(TermExpressionContext ctx);

  /// Visit a parse tree produced by the {@code typeExpression}
  /// labeled alternative in {@link cqlParser#expression}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTypeExpression(TypeExpressionContext ctx);

  /// Visit a parse tree produced by [cqlParser.dateTimePrecision].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDateTimePrecision(DateTimePrecisionContext ctx);

  /// Visit a parse tree produced by [cqlParser.dateTimeComponent].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDateTimeComponent(DateTimeComponentContext ctx);

  /// Visit a parse tree produced by [cqlParser.pluralDateTimePrecision].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx);

  /// Visit a parse tree produced by the {@code additionExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAdditionExpressionTerm(AdditionExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code indexedExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code widthExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitWidthExpressionTerm(WidthExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code setAggregateExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSetAggregateExpressionTerm(
      SetAggregateExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code timeUnitExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code ifThenElseExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code timeBoundaryExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTimeBoundaryExpressionTerm(
      TimeBoundaryExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code elementExtractorExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitElementExtractorExpressionTerm(
      ElementExtractorExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code conversionExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitConversionExpressionTerm(ConversionExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code typeExtentExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code predecessorExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitPredecessorExpressionTerm(PredecessorExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code pointExtractorExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code multiplicationExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitMultiplicationExpressionTerm(
      MultiplicationExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code aggregateExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitAggregateExpressionTerm(AggregateExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code durationExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDurationExpressionTerm(DurationExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code differenceExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDifferenceExpressionTerm(DifferenceExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code caseExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCaseExpressionTerm(CaseExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code powerExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code successorExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code polarityExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitPolarityExpressionTerm(PolarityExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code termExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx);

  /// Visit a parse tree produced by the {@code invocationExpressionTerm}
  /// labeled alternative in {@link cqlParser#expressionTerm}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInvocationExpressionTerm(InvocationExpressionTermContext ctx);

  /// Visit a parse tree produced by [cqlParser.caseExpressionItem].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCaseExpressionItem(CaseExpressionItemContext ctx);

  /// Visit a parse tree produced by [cqlParser.dateTimePrecisionSpecifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDateTimePrecisionSpecifier(
      DateTimePrecisionSpecifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.relativeQualifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitRelativeQualifier(RelativeQualifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.offsetRelativeQualifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.exclusiveRelativeQualifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitExclusiveRelativeQualifier(
      ExclusiveRelativeQualifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.quantityOffset].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQuantityOffset(QuantityOffsetContext ctx);

  /// Visit a parse tree produced by [cqlParser.temporalRelationship].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTemporalRelationship(TemporalRelationshipContext ctx);

  /// Visit a parse tree produced by the {@code concurrentWithIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitConcurrentWithIntervalOperatorPhrase(
      ConcurrentWithIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code includesIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIncludesIntervalOperatorPhrase(
      IncludesIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code includedInIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIncludedInIntervalOperatorPhrase(
      IncludedInIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code beforeOrAfterIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitBeforeOrAfterIntervalOperatorPhrase(
      BeforeOrAfterIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code withinIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitWithinIntervalOperatorPhrase(
      WithinIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code meetsIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitMeetsIntervalOperatorPhrase(
      MeetsIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code overlapsIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitOverlapsIntervalOperatorPhrase(
      OverlapsIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code startsIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitStartsIntervalOperatorPhrase(
      StartsIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code endsIntervalOperatorPhrase}
  /// labeled alternative in {@link cqlParser#intervalOperatorPhrase}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitEndsIntervalOperatorPhrase(
      EndsIntervalOperatorPhraseContext ctx);

  /// Visit a parse tree produced by the {@code invocationTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInvocationTerm(InvocationTermContext ctx);

  /// Visit a parse tree produced by the {@code literalTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLiteralTerm(LiteralTermContext ctx);

  /// Visit a parse tree produced by the {@code externalConstantTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx);

  /// Visit a parse tree produced by the {@code intervalSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIntervalSelectorTerm(IntervalSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code tupleSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code instanceSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInstanceSelectorTerm(InstanceSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code listSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitListSelectorTerm(ListSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code codeSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code conceptSelectorTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitConceptSelectorTerm(ConceptSelectorTermContext ctx);

  /// Visit a parse tree produced by the {@code parenthesizedTerm}
  /// labeled alternative in {@link cqlParser#term}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx);

  /// Visit a parse tree produced by the {@code qualifiedMemberInvocation}
  /// labeled alternative in {@link cqlParser#qualifiedInvocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx);

  /// Visit a parse tree produced by the {@code qualifiedFunctionInvocation}
  /// labeled alternative in {@link cqlParser#qualifiedInvocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx);

  /// Visit a parse tree produced by [cqlParser.qualifiedFunction].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQualifiedFunction(QualifiedFunctionContext ctx);

  /// Visit a parse tree produced by the {@code memberInvocation}
  /// labeled alternative in {@link cqlParser#invocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitMemberInvocation(MemberInvocationContext ctx);

  /// Visit a parse tree produced by the {@code functionInvocation}
  /// labeled alternative in {@link cqlParser#invocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx);

  /// Visit a parse tree produced by the {@code thisInvocation}
  /// labeled alternative in {@link cqlParser#invocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitThisInvocation(ThisInvocationContext ctx);

  /// Visit a parse tree produced by the {@code indexInvocation}
  /// labeled alternative in {@link cqlParser#invocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIndexInvocation(IndexInvocationContext ctx);

  /// Visit a parse tree produced by the {@code totalInvocation}
  /// labeled alternative in {@link cqlParser#invocation}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTotalInvocation(TotalInvocationContext ctx);

  /// Visit a parse tree produced by [cqlParser.function].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitFunction(FunctionContext ctx);

  /// Visit a parse tree produced by [cqlParser.ratio].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitRatio(RatioContext ctx);

  /// Visit a parse tree produced by the {@code booleanLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitBooleanLiteral(BooleanLiteralContext ctx);

  /// Visit a parse tree produced by the {@code nullLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitNullLiteral(NullLiteralContext ctx);

  /// Visit a parse tree produced by the {@code stringLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitStringLiteral(StringLiteralContext ctx);

  /// Visit a parse tree produced by the {@code numberLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitNumberLiteral(NumberLiteralContext ctx);

  /// Visit a parse tree produced by the {@code longNumberLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitLongNumberLiteral(LongNumberLiteralContext ctx);

  /// Visit a parse tree produced by the {@code dateTimeLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDateTimeLiteral(DateTimeLiteralContext ctx);

  /// Visit a parse tree produced by the {@code dateLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDateLiteral(DateLiteralContext ctx);

  /// Visit a parse tree produced by the {@code timeLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTimeLiteral(TimeLiteralContext ctx);

  /// Visit a parse tree produced by the {@code quantityLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQuantityLiteral(QuantityLiteralContext ctx);

  /// Visit a parse tree produced by the {@code ratioLiteral}
  /// labeled alternative in {@link cqlParser#literal}.
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitRatioLiteral(RatioLiteralContext ctx);

  /// Visit a parse tree produced by [cqlParser.intervalSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIntervalSelector(IntervalSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.tupleSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTupleSelector(TupleSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.tupleElementSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTupleElementSelector(TupleElementSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.instanceSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInstanceSelector(InstanceSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.instanceElementSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitInstanceElementSelector(InstanceElementSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.listSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitListSelector(ListSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.displayClause].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitDisplayClause(DisplayClauseContext ctx);

  /// Visit a parse tree produced by [cqlParser.codeSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitCodeSelector(CodeSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.conceptSelector].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitConceptSelector(ConceptSelectorContext ctx);

  /// Visit a parse tree produced by [cqlParser.keyword].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitKeyword(KeywordContext ctx);

  /// Visit a parse tree produced by [cqlParser.reservedWord].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitReservedWord(ReservedWordContext ctx);

  /// Visit a parse tree produced by [cqlParser.keywordIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.obsoleteIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.functionIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitFunctionIdentifier(FunctionIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.typeNameIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.referentialIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitReferentialIdentifier(ReferentialIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.referentialOrTypeNameIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitReferentialOrTypeNameIdentifier(
      ReferentialOrTypeNameIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.identifierOrFunctionIdentifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIdentifierOrFunctionIdentifier(
      IdentifierOrFunctionIdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.identifier].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitIdentifier(IdentifierContext ctx);

  /// Visit a parse tree produced by [cqlParser.externalConstant].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitExternalConstant(ExternalConstantContext ctx);

  /// Visit a parse tree produced by [cqlParser.paramList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitParamList(ParamListContext ctx);

  /// Visit a parse tree produced by [cqlParser.quantity].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitQuantity(QuantityContext ctx);

  /// Visit a parse tree produced by [cqlParser.unit].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  dynamic visitUnit(UnitContext ctx);
}
