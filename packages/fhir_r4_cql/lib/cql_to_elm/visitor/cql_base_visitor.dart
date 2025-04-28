// Generated from cql.g4 by ANTLR 4.13.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'dart:developer';

import 'package:antlr4/antlr4.dart';
import 'package:fhir_r4/fhir_r4.dart';
import 'package:ucum/ucum.dart';

import 'package:fhir_r4_cql/fhir_r4_cql.dart';


/// This class provides an empty implementation of [CqlVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the print(ctx.runtimeType); return type of the visit operation. Use
/// `void` for operations with no print(ctx.runtimeType); return type.
class CqlBaseVisitor<T> extends ParseTreeVisitor<T> implements CqlVisitor<T> {
  CqlBaseVisitor([CqlLibrary? library]) : library = library ?? CqlLibrary();

  CqlLibrary library;
  final modelInfoProvider = StandardModelInfoProvider();
  int nodeNumber = 0;
  final shouldPrint = false;

  @override
  AccessModifier visitAccessModifier(AccessModifierContext ctx) =>
      CqlAccessModifierVisitor(library).visitAccessModifier(ctx);

  @override
  CqlExpression visitAdditionExpressionTerm(
          AdditionExpressionTermContext ctx) =>
      CqlAdditionExpressionVisitor(library).visitAdditionExpressionTerm(ctx);

  @override
  AggregateClause visitAggregateClause(AggregateClauseContext ctx) =>
      CqlAggregateClauseVisitor(library).visitAggregateClause(ctx);

  @override
  CqlExpression visitAggregateExpressionTerm(
          AggregateExpressionTermContext ctx) =>
      CqlAggregateExpressionTermVisitor(library)
          .visitAggregateExpressionTerm(ctx);

  @override
  String visitAlias(AliasContext ctx) => noQuoteString(ctx.text);

  @override
  RelationshipClause visitAliasedQuerySource(AliasedQuerySourceContext ctx) =>
      CqlAliasedQuerySourceVisitor(library).visitAliasedQuerySource(ctx);

  @override
  And visitAndExpression(AndExpressionContext ctx) =>
      CqlAndExpressionVisitor(library).visitAndExpression(ctx);

  @override
  CqlExpression visitBeforeOrAfterIntervalOperatorPhrase(
          BeforeOrAfterIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlBeforeOrAfterIntervalOperatorPhraseVisitor(library)
          .visitBeforeOrAfterIntervalOperatorPhrase(ctx, left, right);

  @override
  And visitBetweenExpression(BetweenExpressionContext ctx) =>
      CqlBetweenExpressionVisitor(library).visitBetweenExpression(ctx);

  @override
  dynamic visitBooleanExpression(BooleanExpressionContext ctx) =>
      CqlBooleanExpressionVisitor(library).visitBooleanExpression(ctx);

  @override
  LiteralBoolean visitBooleanLiteral(BooleanLiteralContext ctx) =>
      LiteralBoolean(ctx.text == 'true');

  @override
  CaseItem visitCaseExpressionItem(CaseExpressionItemContext ctx) =>
      CqlCaseExpressionItemVisitor(library).visitCaseExpressionItem(ctx);

  @override
  Case visitCaseExpressionTerm(CaseExpressionTermContext ctx) =>
      CqlCaseExpressionTermVisitor(library).visitCaseExpressionTerm(ctx);

  @override
  As visitCastExpression(CastExpressionContext ctx) =>
      CqlCastExpressionVisitor(library).visitCastExpression(ctx);

  @override
  ChoiceTypeSpecifier visitChoiceTypeSpecifier(
          ChoiceTypeSpecifierContext ctx) =>
      CqlChoiceTypeSpecifierVisitor(library).visitChoiceTypeSpecifier(ctx);

  @override
  String visitCodeComparator(CodeComparatorContext ctx) =>
      ['in', '=', '~'].contains(ctx.text)
          ? ctx.text
          : throw ArgumentError('Invalid CodeComparator: ${ctx.text}');

  @override
  void visitCodeDefinition(CodeDefinitionContext ctx) =>
      CqlCodeDefinitionVisitor(library).visitCodeDefinition(ctx);

  @override
  String visitCodeId(CodeIdContext ctx) => noQuoteString(ctx.text);

  @override
  CodeRef visitCodeIdentifier(CodeIdentifierContext ctx) =>
      CqlCodeIdentifierVisitor(library).visitCodeIdentifier(ctx);

  @override
  dynamic visitCodePath(CodePathContext ctx) =>
      CqlCodePathVisitor(library).visitCodePath(ctx);

  @override
  Code visitCodeSelector(CodeSelectorContext ctx) =>
      CqlCodeSelectorVisitor(library).visitCodeSelector(ctx);

  @override
  dynamic visitCodeSelectorTerm(CodeSelectorTermContext ctx) =>
      CqlCodeSelectorTermVisitor(library).visitCodeSelectorTerm(ctx);

  @override
  void visitCodesystemDefinition(CodesystemDefinitionContext ctx) =>
      CqlCodesystemDefinitionVisitor(library).visitCodesystemDefinition(ctx);

  @override
  String visitCodesystemId(CodesystemIdContext ctx) => noQuoteString(ctx.text);

  @override
  CodeSystemRef visitCodesystemIdentifier(CodesystemIdentifierContext ctx) =>
      CqlCodesystemIdentifierVisitor(library).visitCodesystemIdentifier(ctx);

  @override
  List<CodeSystemRef> visitCodesystems(CodesystemsContext ctx) =>
      CqlCodesystemsVisitor(library).visitCodesystems(ctx);

  @override
  dynamic visitConceptDefinition(ConceptDefinitionContext ctx) =>
      CqlConceptDefinitionVisitor(library).visitConceptDefinition(ctx);

  @override
  Concept visitConceptSelector(ConceptSelectorContext ctx) =>
      CqlConceptSelectorVisitor(library).visitConceptSelector(ctx);

  @override
  Concept visitConceptSelectorTerm(ConceptSelectorTermContext ctx) =>
      CqlConceptSelectorTermVisitor(library).visitConceptSelectorTerm(ctx);

  @override
  CqlExpression visitConcurrentWithIntervalOperatorPhrase(
          ConcurrentWithIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlConcurrentWithIntervalOperatorPhraseVisitor(library)
          .visitConcurrentWithIntervalOperatorPhrase(ctx, left, right);

  @override
  void visitContextDefinition(ContextDefinitionContext ctx) =>
      CqlContextDefinitionVisitor(library).visitContextDefinition(ctx);

  @override
  Ref visitContextIdentifier(ContextIdentifierContext ctx) =>
      CqlContextIdentifierVisitor(library).visitContextIdentifier(ctx);

  @override
  dynamic visitConversionExpressionTerm(ConversionExpressionTermContext ctx) =>
      CqlConversionExpressionTermVisitor(library)
          .visitConversionExpressionTerm(ctx);

  @override
  LiteralDate visitDateLiteral(DateLiteralContext ctx) =>
      LiteralDate(ctx.text.replaceFirst('@', ''));

  @override
  String visitDateTimeComponent(DateTimeComponentContext ctx) =>
      CqlDateTimeComponentVisitor(library).visitDateTimeComponent(ctx);

  @override
  LiteralDateTime visitDateTimeLiteral(DateTimeLiteralContext ctx) =>
      LiteralDateTime(ctx.text.replaceFirst('@', ''));

  @override
  String visitDateTimePrecision(DateTimePrecisionContext ctx) =>
      noQuoteString(ctx.text);

  @override
  String visitDateTimePrecisionSpecifier(
          DateTimePrecisionSpecifierContext ctx) =>
      visitDateTimePrecision(ctx.getChild(0) as DateTimePrecisionContext);

  @override
  void visitDefinition(DefinitionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  DifferenceBetween visitDifferenceBetweenExpression(
          DifferenceBetweenExpressionContext ctx) =>
      CqlDifferenceBetweenExpressionVisitor(library)
          .visitDifferenceBetweenExpression(ctx);

  @override
  DifferenceBetween visitDifferenceExpressionTerm(
          DifferenceExpressionTermContext ctx) =>
      CqlDifferenceExpressionTermVisitor(library)
          .visitDifferenceExpressionTerm(ctx);

  @override
  String visitDisplayClause(DisplayClauseContext ctx) =>
      CqlDisplayClauseVisitor(library).visitDisplayClause(ctx);

  @override
  DurationBetween visitDurationBetweenExpression(
          DurationBetweenExpressionContext ctx) =>
      CqlDurationBetweenExpressionVisitor(library)
          .visitDurationBetweenExpression(ctx);

  @override
  DurationBetween visitDurationExpressionTerm(
          DurationExpressionTermContext ctx) =>
      CqlDurationExpressionTermVisitor(library)
          .visitDurationExpressionTerm(ctx);

  @override
  SingletonFrom visitElementExtractorExpressionTerm(
          ElementExtractorExpressionTermContext ctx) =>
      CqlElementExtractorExpressionTermVisitor(library)
          .visitElementExtractorExpressionTerm(ctx);

  @override
  Ends visitEndsIntervalOperatorPhrase(EndsIntervalOperatorPhraseContext ctx,
          [CqlExpression? left, CqlExpression? right]) =>
      CqlEndsIntervalOperatorPhraseVisitor(library)
          .visitEndsIntervalOperatorPhrase(ctx, left, right);

  @override
  CqlExpression visitEqualityExpression(EqualityExpressionContext ctx) =>
      CqlEqualityExpressionVisitor(library).visitEqualityExpression(ctx);

  @override
  String visitExclusiveRelativeQualifier(
          ExclusiveRelativeQualifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  Exists visitExistenceExpression(ExistenceExpressionContext ctx) =>
      CqlExistenceExpressionVisitor(library).visitExistenceExpression(ctx);

  @override
  ExpressionDef visitExpressionDefinition(ExpressionDefinitionContext ctx) =>
      CqlExpressionDefinitionVisitor(library).visitExpressionDefinition(ctx);

  @override
  dynamic visitExternalConstant(ExternalConstantContext ctx) =>
      CqlExternalConstantVisitor(library).visitExternalConstant(ctx);

  @override
  dynamic visitExternalConstantTerm(ExternalConstantTermContext ctx) =>
      CqlExternalConstantTermVisitor(library).visitExternalConstantTerm(ctx);

  @override
  dynamic visitFunction(FunctionContext ctx) =>
      CqlFunctionVisitor(library).visitFunction(ctx);

  @override
  CqlExpression visitFunctionBody(FunctionBodyContext ctx) =>
      CqlFunctionBodyVisitor(library).visitFunctionBody(ctx);

  @override
  FunctionDef visitFunctionDefinition(FunctionDefinitionContext ctx) =>
      CqlFunctionDefinitionVisitor(library).visitFunctionDefinition(ctx);

  @override
  dynamic visitFunctionIdentifier(FunctionIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitFunctionInvocation(FunctionInvocationContext ctx) =>
      CqlFunctionInvocationVisitor(library).visitFunctionInvocation(ctx);

  @override
  String visitIdentifier(IdentifierContext ctx) => noQuoteString(ctx.text);

  @override
  String visitIdentifierOrFunctionIdentifier(
          IdentifierOrFunctionIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  dynamic visitIfThenElseExpressionTerm(IfThenElseExpressionTermContext ctx) =>
      CqlIfThenElseExpressionTermVisitor(library)
          .visitIfThenElseExpressionTerm(ctx);

  @override
  dynamic visitImpliesExpression(ImpliesExpressionContext ctx) =>
      CqlImpliesExpressionVisitor(library).visitImpliesExpression(ctx);

  @override
  NaryExpression visitInFixSetExpression(InFixSetExpressionContext ctx) =>
      CqlInFixSetExpressionVisitor(library).visitInFixSetExpression(ctx);

  @override
  void visitIncludeDefinition(IncludeDefinitionContext ctx) =>
      CqlIncludeDefinitionVisitor(library).visitIncludeDefinition(ctx);

  @override
  IncludedIn visitIncludedInIntervalOperatorPhrase(
          IncludedInIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlIncludedInIntervalOperatorPhraseVisitor(library)
          .visitIncludedInIntervalOperatorPhrase(ctx, left, right);

  @override
  CqlExpression visitIncludesIntervalOperatorPhrase(
          IncludesIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlIncludesIntervalOperatorPhraseVisitor(library)
          .visitIncludesIntervalOperatorPhrase(ctx, left, right);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitIndexInvocation(IndexInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitIndexedExpressionTerm(IndexedExpressionTermContext ctx) =>
      CqlIndexedExpressionTermVisitor(library).visitIndexedExpressionTerm(ctx);

  @override
  dynamic visitInequalityExpression(InequalityExpressionContext ctx) =>
      CqlInequalityExpressionVisitor(library).visitInequalityExpression(ctx);

  @override
  InstanceElement visitInstanceElementSelector(
          InstanceElementSelectorContext ctx) =>
      CqlInstanceElementSelectorVisitor(library)
          .visitInstanceElementSelector(ctx);

  @override
  Instance visitInstanceSelector(InstanceSelectorContext ctx) =>
      CqlInstanceSelectorVisitor(library).visitInstanceSelector(ctx);

  @override
  Instance visitInstanceSelectorTerm(InstanceSelectorTermContext ctx) =>
      CqlInstanceSelectorTermVisitor(library).visitInstanceSelectorTerm(ctx);

  @override
  IntervalExpression visitIntervalSelector(IntervalSelectorContext ctx) =>
      CqlIntervalSelectorVisitor(library).visitIntervalSelector(ctx);

  @override
  IntervalExpression visitIntervalSelectorTerm(
          IntervalSelectorTermContext ctx) =>
      CqlIntervalSelectorTermVisitor(library).visitIntervalSelectorTerm(ctx);

  @override
  IntervalTypeSpecifier visitIntervalTypeSpecifier(
          IntervalTypeSpecifierContext ctx) =>
      CqlIntervalTypeSpecifierVisitor(library).visitIntervalTypeSpecifier(ctx);

  @override
  Property visitInvocationExpressionTerm(InvocationExpressionTermContext ctx) =>
      CqlInvocationExpressionTermVisitor(library)
          .visitInvocationExpressionTerm(ctx);

  @override
  dynamic visitInvocationTerm(InvocationTermContext ctx) =>
      CqlInvocationTermVisitor(library).visitInvocationTerm(ctx);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeyword(KeywordContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitKeywordIdentifier(KeywordIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClause(LetClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  dynamic visitLetClauseItem(LetClauseItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// library: libraryDefinition? definition* statement* EOF;
  @override
  void visitLibrary(LibraryContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  void visitLibraryDefinition(LibraryDefinitionContext ctx) =>
      CqlLibraryDefinitionVisitor(library).visitLibraryDefinition(ctx);

  @override
  String visitLibraryIdentifier(LibraryIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  ListExpression visitListSelector(ListSelectorContext ctx) =>
      CqlListSelectorVisitor(library).visitListSelector(ctx);

  @override
  ListExpression visitListSelectorTerm(ListSelectorTermContext ctx) =>
      CqlListSelectorTermVisitor(library).visitListSelectorTerm(ctx);

  @override
  ListTypeSpecifier visitListTypeSpecifier(ListTypeSpecifierContext ctx) =>
      CqlListTypeSpecifierVisitor(library).visitListTypeSpecifier(ctx);

  @override
  LiteralType visitLiteralTerm(LiteralTermContext ctx) =>
      CqlLiteralTermVisitor(library).visitLiteralTerm(ctx);

  @override
  String visitLocalIdentifier(LocalIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  LiteralLong visitLongNumberLiteral(LongNumberLiteralContext ctx) =>
      LiteralLong(BigInt.parse(ctx.text));

  @override
  dynamic visitMeetsIntervalOperatorPhrase(
          MeetsIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlMeetsIntervalOperatorPhraseVisitor(library)
          .visitMeetsIntervalOperatorPhrase(ctx, left, right);

  @override
  Ref visitMemberInvocation(MemberInvocationContext ctx) =>
      returnRef(noQuoteString(ctx.text), null);

  @override
  dynamic visitMembershipExpression(MembershipExpressionContext ctx) =>
      CqlMembershipExpressionVisitor(library).visitMembershipExpression(ctx);

  /// modelIdentifier: identifier;
  @override
  String visitModelIdentifier(ModelIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  CqlExpression visitMultiplicationExpressionTerm(
          MultiplicationExpressionTermContext ctx) =>
      CqlMultiplicationExpressionTermVisitor(library)
          .visitMultiplicationExpressionTerm(ctx);

  @override
  NamedTypeSpecifier? visitNamedTypeSpecifier(NamedTypeSpecifierContext ctx) =>
      CqlNamedTypeSpecifierVisitor(library).visitNamedTypeSpecifier(ctx);

  @override
  Not visitNotExpression(NotExpressionContext ctx) =>
      CqlNotExpressionVisitor(library).visitNotExpression(ctx);

  @override
  dynamic visitNullLiteral(NullLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  LiteralType visitNumberLiteral(NumberLiteralContext ctx) =>
      CqlNumberLiteralVisitor(library).visitNumberLiteral(ctx);

  @override
  dynamic visitObsoleteIdentifier(ObsoleteIdentifierContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  String visitOffsetRelativeQualifier(OffsetRelativeQualifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  OperandDef visitOperandDefinition(OperandDefinitionContext ctx) =>
      CqlOperandDefinitionVisitor(library).visitOperandDefinition(ctx);

  @override
  BinaryExpression visitOrExpression(OrExpressionContext ctx) =>
      CqlOrExpressionVisitor(library).visitOrExpression(ctx);

  @override
  CqlExpression visitOverlapsIntervalOperatorPhrase(
          OverlapsIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlOverlapsIntervalOperatorPhraseVisitor(library)
          .visitOverlapsIntervalOperatorPhrase(ctx, left, right);

  @override
  List<CqlExpression> visitParamList(ParamListContext ctx) =>
      CqlParamListVisitor(library).visitParamList(ctx);

  @override
  void visitParameterDefinition(ParameterDefinitionContext ctx) =>
      CqlParameterDefinitionVisitor(library).visitParameterDefinition(ctx);

  @override
  dynamic visitParenthesizedTerm(ParenthesizedTermContext ctx) =>
      CqlParenthesizedTermVisitor(library).visitParenthesizedTerm(ctx);

  @override
  String visitPluralDateTimePrecision(PluralDateTimePrecisionContext ctx) =>
      noQuoteString(ctx.text);

  @override
  dynamic visitPointExtractorExpressionTerm(
      PointExtractorExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  CqlExpression visitPolarityExpressionTerm(
          PolarityExpressionTermContext ctx) =>
      CqlPolarityExpressionTermVisitor(library)
          .visitPolarityExpressionTerm(ctx);

  @override
  dynamic visitPowerExpressionTerm(PowerExpressionTermContext ctx) =>
      CqlPowerExpressionTermVisitor(library).visitPowerExpressionTerm(ctx);

  @override
  Predecessor visitPredecessorExpressionTerm(
          PredecessorExpressionTermContext ctx) =>
      CqlPredecessorExpressionTermVisitor(library)
          .visitPredecessorExpressionTerm(ctx);

  @override
  dynamic visitQualifiedFunction(QualifiedFunctionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitQualifiedFunctionInvocation(
      QualifiedFunctionInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  String visitQualifiedIdentifier(QualifiedIdentifierContext ctx) =>
      CqlQualifiedIdentifierVisitor(library).visitQualifiedIdentifier(ctx);

  @override
  Ref visitQualifiedIdentifierExpression(
          QualifiedIdentifierExpressionContext ctx) =>
      CqlQualifiedIdentifierExpressionVisitor(library)
          .visitQualifiedIdentifierExpression(ctx);

  @override
  Ref visitQualifiedMemberInvocation(QualifiedMemberInvocationContext ctx) =>
      returnRef(ctx.text, null);

  @override
  String visitQualifier(QualifierContext ctx) =>
      CqlQualifierVisitor(library).visitQualifier(ctx);

  @override
  dynamic visitQualifierExpression(QualifierExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  LiteralQuantity visitQuantity(QuantityContext ctx) =>
      CqlQuantityVisitor(library).visitQuantity(ctx);

  @override
  LiteralQuantity visitQuantityLiteral(QuantityLiteralContext ctx) =>
      CqlQuantityLiteralVisitor(library).visitQuantityLiteral(ctx);

  @override
  LiteralQuantity visitQuantityOffset(QuantityOffsetContext ctx) =>
      CqlQuantityOffsetVisitor(library).visitQuantityOffset(ctx);

  @override
  Query visitQuery(QueryContext ctx) =>
      CqlQueryVisitor(library).visitQuery(ctx);

  @override
  Query visitQueryExpression(QueryExpressionContext ctx) =>
      CqlQueryExpressionVisitor(library).visitQueryExpression(ctx);

  @override
  dynamic visitQueryInclusionClause(QueryInclusionClauseContext ctx) =>
      CqlQueryInclusionClauseVisitor(library).visitQueryInclusionClause(ctx);

  @override
  CqlExpression visitQuerySource(QuerySourceContext ctx) =>
      CqlQuerySourceVisitor(library).visitQuerySource(ctx);

  @override
  dynamic visitRatio(RatioContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitRatioLiteral(RatioLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  String visitReferentialIdentifier(ReferentialIdentifierContext ctx) =>
      CqlReferentialIdentifierVisitor(library).visitReferentialIdentifier(ctx);

  @override
  String visitReferentialOrTypeNameIdentifier(
          ReferentialOrTypeNameIdentifierContext ctx) =>
      CqlReferentialOrTypeNameIdentifierVisitor(library)
          .visitReferentialOrTypeNameIdentifier(ctx);

  @override
  String visitRelativeQualifier(RelativeQualifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  dynamic visitReservedWord(ReservedWordContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  Retrieve visitRetrieve(RetrieveContext ctx) =>
      CqlRetrieveVisitor(library).visitRetrieve(ctx);

  @override
  Retrieve visitRetrieveExpression(RetrieveExpressionContext ctx) =>
      CqlRetrieveExpressionVisitor(library).visitRetrieveExpression(ctx);

  @override
  dynamic visitReturnClause(ReturnClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  CqlExpression visitSetAggregateExpressionTerm(
          SetAggregateExpressionTermContext ctx) =>
      CqlSetAggregateExpressionTermVisitor(library)
          .visitSetAggregateExpressionTerm(ctx);

  @override
  dynamic visitSimpleNumberLiteral(SimpleNumberLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  /// simplePath '[' simpleLiteral ']'		# simplePathIndexer;
  @override
  Indexer visitSimplePathIndexer(SimplePathIndexerContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    CqlExpression? simplePath;
    CqlExpression? simpleLiteral;
    for (final child in ctx.children ?? <ParseTree>[]) {
      // print('simplePathIndexer: ${child.runtimeType} ${child.text}');
    }

    throw ArgumentError('$thisNode Invalid SimplePathIndexer');
  }

  @override
  dynamic visitSimplePathQualifiedIdentifier(
          SimplePathQualifiedIdentifierContext ctx) =>
      CqlSimplePathQualifiedIdentifierVisitor(library)
          .visitSimplePathQualifiedIdentifier(ctx);

  @override
  String visitSimplePathReferentialIdentifier(
          SimplePathReferentialIdentifierContext ctx) =>
      ctx.childCount == 1 && ctx.getChild(0) is ReferentialIdentifierContext
          ? visitReferentialIdentifier(
              ctx.getChild(0) as ReferentialIdentifierContext)
          : throw ArgumentError(
              'Invalid Type for SimplePathReferentialIdentifier');

  @override
  dynamic visitSimpleStringLiteral(SimpleStringLiteralContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitSortByItem(SortByItemContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitSortClause(SortClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitSortDirection(SortDirectionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  List<AliasedQuerySource> visitSourceClause(SourceClauseContext ctx) =>
      CqlSourceClauseVisitor(library).visitSourceClause(ctx);

  @override
  dynamic visitStartingClause(StartingClauseContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  Starts visitStartsIntervalOperatorPhrase(
          StartsIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlStartsIntervalOperatorPhraseVisitor(library)
          .visitStartsIntervalOperatorPhrase(ctx, left, right);

  @override
  void visitStatement(StatementContext ctx) =>
      CqlStatementVisitor(library).visitStatement(ctx);

  @override
  LiteralString visitStringLiteral(StringLiteralContext ctx) =>
      LiteralString(noQuoteString(ctx.getChild(0)!.text!));

  @override
  Successor visitSuccessorExpressionTerm(SuccessorExpressionTermContext ctx) =>
      CqlSuccessorExpressionTermVisitor(library)
          .visitSuccessorExpressionTerm(ctx);

  @override
  String visitTemporalRelationship(TemporalRelationshipContext ctx) =>
      noQuoteString(ctx.text);

  @override
  dynamic visitTermExpression(TermExpressionContext ctx) =>
      CqlTermExpressionVisitor(library).visitTermExpression(ctx);

  @override
  dynamic visitTermExpressionTerm(TermExpressionTermContext ctx) =>
      CqlTermExpressionTermVisitor(library).visitTermExpressionTerm(ctx);

  @override
  CqlExpression visitTerminology(TerminologyContext ctx) =>
      CqlTerminologyVisitor(library).visitTerminology(ctx);

  @override
  dynamic visitThisInvocation(ThisInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitTimeBoundaryExpressionTerm(
          TimeBoundaryExpressionTermContext ctx) =>
      CqlTimeBoundaryExpressionTermVisitor(library)
          .visitTimeBoundaryExpressionTerm(ctx);

  @override
  LiteralTime visitTimeLiteral(TimeLiteralContext ctx) => LiteralTime(
      noQuoteString(ctx.text.replaceFirst('@', '').replaceFirst('T', '')));

  @override
  CqlExpression visitTimeUnitExpressionTerm(
          TimeUnitExpressionTermContext ctx) =>
      CqlTimeUnitExpressionTermVisitor(library)
          .visitTimeUnitExpressionTerm(ctx);

  @override
  CqlExpression visitTimingExpression(TimingExpressionContext ctx) =>
      CqlTimingExpressionVisitor(library).visitTimingExpression(ctx);

  @override
  dynamic visitTotalInvocation(TotalInvocationContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  TupleElementDefinition visitTupleElementDefinition(
          TupleElementDefinitionContext ctx) =>
      CqlTupleElementDefinitionVisitor(library)
          .visitTupleElementDefinition(ctx);

  @override
  TupleElement visitTupleElementSelector(TupleElementSelectorContext ctx) =>
      CqlTupleElementSelectorVisitor(library).visitTupleElementSelector(ctx);

  @override
  Tuple visitTupleSelector(TupleSelectorContext ctx) =>
      CqlTupleSelectorVisitor(library).visitTupleSelector(ctx);

  @override
  dynamic visitTupleSelectorTerm(TupleSelectorTermContext ctx) =>
      CqlTupleSelectorTermVisitor(library).visitTupleSelectorTerm(ctx);

  @override
  TupleTypeSpecifier visitTupleTypeSpecifier(TupleTypeSpecifierContext ctx) =>
      CqlTupleTypeSpecifierVisitor(library).visitTupleTypeSpecifier(ctx);

  @override
  dynamic visitTypeExpression(TypeExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    visitChildren(ctx);
  }

  @override
  dynamic visitTypeExtentExpressionTerm(TypeExtentExpressionTermContext ctx) =>
      CqlTypeExtentExpressionTermVisitor(library)
          .visitTypeExtentExpressionTerm(ctx);

  @override
  dynamic visitTypeNameIdentifier(TypeNameIdentifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  TypeSpecifierExpression? visitTypeSpecifier(TypeSpecifierContext ctx) =>
      CqlTypeSpecifierVisitor(library).visitTypeSpecifier(ctx);

  @override
  String visitUnit(UnitContext ctx) => noQuoteString(ctx.text);

  @override
  dynamic visitUsingDefinition(UsingDefinitionContext ctx) =>
      CqlUsingDefinitionVisitor(library).visitUsingDefinition(ctx);

  @override
  void visitValuesetDefinition(ValuesetDefinitionContext ctx) =>
      CqlValuesetDefinitionVisitor(library).visitValuesetDefinition(ctx);

  @override
  String visitValuesetId(ValuesetIdContext ctx) => noQuoteString(ctx.text);

  @override
  String visitVersionSpecifier(VersionSpecifierContext ctx) =>
      noQuoteString(ctx.text);

  @override
  CqlExpression visitWhereClause(WhereClauseContext ctx) =>
      CqlWhereClauseVisitor(library).visitWhereClause(ctx);

  @override
  Width visitWidthExpressionTerm(WidthExpressionTermContext ctx) =>
      Width(operand: byContext(ctx.children![2]));

  @override
  With visitWithClause(WithClauseContext ctx) =>
      CqlWithClauseVisitor(library).visitWithClause(ctx);

  @override
  CqlExpression visitWithinIntervalOperatorPhrase(
          WithinIntervalOperatorPhraseContext ctx,
          [CqlExpression? left,
          CqlExpression? right]) =>
      CqlWithinIntervalOperatorPhraseVisitor(library)
          .visitWithinIntervalOperatorPhrase(ctx, left, right);

  @override
  Without visitWithoutClause(WithoutClauseContext ctx) =>
      CqlWithoutClauseVisitor(library).visitWithoutClause(ctx);

  List<CqlExpression> translateOperand(List<CqlExpression> operand) {
    if (operand.first is LiteralType &&
        operand.first is! LiteralNull &&
        operand.last is LiteralNull) {
      return [
        operand.first,
        As(
            operand: operand.last,
            asType: QName.fromFull((operand.first as LiteralType).valueType))
      ];
    } else if (operand.first is LiteralNull &&
        operand.last is LiteralType &&
        operand.last is! LiteralNull) {
      return [
        As(
            operand: operand.first,
            asType: QName.fromFull((operand.first as LiteralType).valueType)),
        operand.last
      ];
    } else {
      List<String> firstReturnTypes = operand.first.getReturnTypes(library);
      List<String> lastReturnTypes = operand.last.getReturnTypes(library);
      String? firstType;
      String? lastType;
      if (firstReturnTypes.isNotEmpty) {
        firstType = firstReturnTypes.first;
      }
      if (lastReturnTypes.isNotEmpty) {
        lastType = lastReturnTypes.first;
      }
      if (firstType != null && lastType != null) {
        firstType = LiteralType.typeToLiteral(firstType);
        lastType = LiteralType.typeToLiteral(lastType);
        if (firstType == 'LiteralInteger') {
          if (lastType == 'LiteralLong') {
            return [ToLong(operand: operand.first), operand.last];
          } else if (lastType == 'LiteralDecimal') {
            return [ToDecimal(operand: operand.first), operand.last];
          }
        } else if (firstType == 'LiteralLong') {
          if (lastType == 'LiteralInteger') {
            return [operand.first, ToLong(operand: operand.last)];
          } else if (lastType == 'LiteralDecimal') {
            return [ToDecimal(operand: operand.first), operand.last];
          }
        } else if (firstType == 'LiteralDecimal') {
          if (lastType == 'LiteralInteger') {
            return [operand.first, ToDecimal(operand: operand.last)];
          } else if (lastType == 'LiteralLong') {
            return [operand.first, ToDecimal(operand: operand.last)];
          } else if (lastType == 'LiteralQuantity') {
            return [operand.first, ToQuantity(operand: operand.last)];
          }
        } else if (firstType == 'LiteralQuantity') {
          if (lastType == 'LiteralDecimal') {
            return [operand.first, ToQuantity(operand: operand.last)];
          }
        }
      }
    }
    return operand;
  }

  int getNextNode() {
    final tempNumber = nodeNumber.toInt();
    nodeNumber++;
    return tempNumber;
  }

  void printIf(ParserRuleContext ctx, [bool should = false]) {
    if (shouldPrint || should) {
      print('$nodeNumber    '
          '${ctx.runtimeType}    '
          '${ctx.text}    '
          '${ctx.childCount}    '
          '${ctx.parent.runtimeType}');
    }
  }

  Map<String, dynamic> get result => {'library': library.toJson()};

  dynamic byContext(ParseTree ctx) {
    if (ctx is LibraryContext) {
      return visitLibrary(ctx);
    } else if (ctx is DefinitionContext) {
      return visitDefinition(ctx);
    } else if (ctx is LibraryDefinitionContext) {
      return visitLibraryDefinition(ctx);
    } else if (ctx is UsingDefinitionContext) {
      return visitUsingDefinition(ctx);
    } else if (ctx is IncludeDefinitionContext) {
      return visitIncludeDefinition(ctx);
    } else if (ctx is LocalIdentifierContext) {
      return visitLocalIdentifier(ctx);
    } else if (ctx is AccessModifierContext) {
      return visitAccessModifier(ctx);
    } else if (ctx is ParameterDefinitionContext) {
      return visitParameterDefinition(ctx);
    } else if (ctx is CodesystemDefinitionContext) {
      return visitCodesystemDefinition(ctx);
    } else if (ctx is ValuesetDefinitionContext) {
      return visitValuesetDefinition(ctx);
    } else if (ctx is CodesystemsContext) {
      return visitCodesystems(ctx);
    } else if (ctx is CodesystemIdentifierContext) {
      return visitCodesystemIdentifier(ctx);
    } else if (ctx is LibraryIdentifierContext) {
      return visitLibraryIdentifier(ctx);
    } else if (ctx is CodeDefinitionContext) {
      return visitCodeDefinition(ctx);
    } else if (ctx is ConceptDefinitionContext) {
      return visitConceptDefinition(ctx);
    } else if (ctx is CodeIdentifierContext) {
      return visitCodeIdentifier(ctx);
    } else if (ctx is CodesystemIdContext) {
      return visitCodesystemId(ctx);
    } else if (ctx is ValuesetIdContext) {
      return visitValuesetId(ctx);
    } else if (ctx is VersionSpecifierContext) {
      return visitVersionSpecifier(ctx);
    } else if (ctx is CodeIdContext) {
      return visitCodeId(ctx);
    } else if (ctx is TypeSpecifierContext) {
      return visitTypeSpecifier(ctx);
    } else if (ctx is NamedTypeSpecifierContext) {
      return visitNamedTypeSpecifier(ctx);
    } else if (ctx is ModelIdentifierContext) {
      return visitModelIdentifier(ctx);
    } else if (ctx is ListTypeSpecifierContext) {
      return visitListTypeSpecifier(ctx);
    } else if (ctx is IntervalTypeSpecifierContext) {
      return visitIntervalTypeSpecifier(ctx);
    } else if (ctx is TupleTypeSpecifierContext) {
      return visitTupleTypeSpecifier(ctx);
    } else if (ctx is TupleElementDefinitionContext) {
      return visitTupleElementDefinition(ctx);
    } else if (ctx is ChoiceTypeSpecifierContext) {
      return visitChoiceTypeSpecifier(ctx);
    } else if (ctx is StatementContext) {
      return visitStatement(ctx);
    } else if (ctx is ExpressionDefinitionContext) {
      return visitExpressionDefinition(ctx);
    } else if (ctx is ContextDefinitionContext) {
      return visitContextDefinition(ctx);
    } else if (ctx is FunctionDefinitionContext) {
      return visitFunctionDefinition(ctx);
    } else if (ctx is OperandDefinitionContext) {
      return visitOperandDefinition(ctx);
    } else if (ctx is FunctionBodyContext) {
      return visitFunctionBody(ctx);
    } else if (ctx is QuerySourceContext) {
      return visitQuerySource(ctx);
    } else if (ctx is AliasedQuerySourceContext) {
      return visitAliasedQuerySource(ctx);
    } else if (ctx is AliasContext) {
      return visitAlias(ctx);
    } else if (ctx is QueryInclusionClauseContext) {
      return visitQueryInclusionClause(ctx);
    } else if (ctx is WithClauseContext) {
      return visitWithClause(ctx);
    } else if (ctx is WithoutClauseContext) {
      return visitWithoutClause(ctx);
    } else if (ctx is RetrieveContext) {
      return visitRetrieve(ctx);
    } else if (ctx is ContextIdentifierContext) {
      return visitContextIdentifier(ctx);
    } else if (ctx is CodePathContext) {
      return visitCodePath(ctx);
    } else if (ctx is CodeComparatorContext) {
      return visitCodeComparator(ctx);
    } else if (ctx is TerminologyContext) {
      return visitTerminology(ctx);
    } else if (ctx is QualifierContext) {
      return visitQualifier(ctx);
    } else if (ctx is QueryContext) {
      return visitQuery(ctx);
    } else if (ctx is SourceClauseContext) {
      return visitSourceClause(ctx);
    } else if (ctx is LetClauseContext) {
      return visitLetClause(ctx);
    } else if (ctx is LetClauseItemContext) {
      return visitLetClauseItem(ctx);
    } else if (ctx is WhereClauseContext) {
      return visitWhereClause(ctx);
    } else if (ctx is ReturnClauseContext) {
      return visitReturnClause(ctx);
    } else if (ctx is AggregateClauseContext) {
      return visitAggregateClause(ctx);
    } else if (ctx is StartingClauseContext) {
      return visitStartingClause(ctx);
    } else if (ctx is SortClauseContext) {
      return visitSortClause(ctx);
    } else if (ctx is SortDirectionContext) {
      return visitSortDirection(ctx);
    } else if (ctx is SortByItemContext) {
      return visitSortByItem(ctx);
    } else if (ctx is QualifiedIdentifierContext) {
      return visitQualifiedIdentifier(ctx);
    } else if (ctx is QualifiedIdentifierExpressionContext) {
      return visitQualifiedIdentifierExpression(ctx);
    } else if (ctx is QualifierExpressionContext) {
      return visitQualifierExpression(ctx);
    } else if (ctx is SimplePathIndexerContext) {
      return visitSimplePathIndexer(ctx);
    } else if (ctx is SimplePathQualifiedIdentifierContext) {
      return visitSimplePathQualifiedIdentifier(ctx);
    } else if (ctx is SimplePathReferentialIdentifierContext) {
      return visitSimplePathReferentialIdentifier(ctx);
    } else if (ctx is SimpleStringLiteralContext) {
      return visitSimpleStringLiteral(ctx);
    } else if (ctx is SimpleNumberLiteralContext) {
      return visitSimpleNumberLiteral(ctx);
    } else if (ctx is DurationBetweenExpressionContext) {
      return visitDurationBetweenExpression(ctx);
    } else if (ctx is InFixSetExpressionContext) {
      return visitInFixSetExpression(ctx);
    } else if (ctx is RetrieveExpressionContext) {
      return visitRetrieveExpression(ctx);
    } else if (ctx is TimingExpressionContext) {
      return visitTimingExpression(ctx);
    } else if (ctx is QueryExpressionContext) {
      return visitQueryExpression(ctx);
    } else if (ctx is NotExpressionContext) {
      return visitNotExpression(ctx);
    } else if (ctx is BooleanExpressionContext) {
      return visitBooleanExpression(ctx);
    } else if (ctx is OrExpressionContext) {
      return visitOrExpression(ctx);
    } else if (ctx is CastExpressionContext) {
      return visitCastExpression(ctx);
    } else if (ctx is AndExpressionContext) {
      return visitAndExpression(ctx);
    } else if (ctx is BetweenExpressionContext) {
      return visitBetweenExpression(ctx);
    } else if (ctx is MembershipExpressionContext) {
      return visitMembershipExpression(ctx);
    } else if (ctx is DifferenceBetweenExpressionContext) {
      return visitDifferenceBetweenExpression(ctx);
    } else if (ctx is InequalityExpressionContext) {
      return visitInequalityExpression(ctx);
    } else if (ctx is EqualityExpressionContext) {
      return visitEqualityExpression(ctx);
    } else if (ctx is ExistenceExpressionContext) {
      return visitExistenceExpression(ctx);
    } else if (ctx is ImpliesExpressionContext) {
      return visitImpliesExpression(ctx);
    } else if (ctx is TermExpressionContext) {
      return visitTermExpression(ctx);
    } else if (ctx is TypeExpressionContext) {
      return visitTypeExpression(ctx);
    } else if (ctx is DateTimePrecisionContext) {
      return visitDateTimePrecision(ctx);
    } else if (ctx is DateTimeComponentContext) {
      return visitDateTimeComponent(ctx);
    } else if (ctx is PluralDateTimePrecisionContext) {
      return visitPluralDateTimePrecision(ctx);
    } else if (ctx is AdditionExpressionTermContext) {
      return visitAdditionExpressionTerm(ctx);
    } else if (ctx is IndexedExpressionTermContext) {
      return visitIndexedExpressionTerm(ctx);
    } else if (ctx is WidthExpressionTermContext) {
      return visitWidthExpressionTerm(ctx);
    } else if (ctx is SetAggregateExpressionTermContext) {
      return visitSetAggregateExpressionTerm(ctx);
    } else if (ctx is TimeUnitExpressionTermContext) {
      return visitTimeUnitExpressionTerm(ctx);
    } else if (ctx is IfThenElseExpressionTermContext) {
      return visitIfThenElseExpressionTerm(ctx);
    } else if (ctx is TimeBoundaryExpressionTermContext) {
      return visitTimeBoundaryExpressionTerm(ctx);
    } else if (ctx is ElementExtractorExpressionTermContext) {
      return visitElementExtractorExpressionTerm(ctx);
    } else if (ctx is ConversionExpressionTermContext) {
      return visitConversionExpressionTerm(ctx);
    } else if (ctx is TypeExtentExpressionTermContext) {
      return visitTypeExtentExpressionTerm(ctx);
    } else if (ctx is PredecessorExpressionTermContext) {
      return visitPredecessorExpressionTerm(ctx);
    } else if (ctx is PointExtractorExpressionTermContext) {
      return visitPointExtractorExpressionTerm(ctx);
    } else if (ctx is MultiplicationExpressionTermContext) {
      return visitMultiplicationExpressionTerm(ctx);
    } else if (ctx is AggregateExpressionTermContext) {
      return visitAggregateExpressionTerm(ctx);
    } else if (ctx is DurationExpressionTermContext) {
      return visitDurationExpressionTerm(ctx);
    } else if (ctx is DifferenceExpressionTermContext) {
      return visitDifferenceExpressionTerm(ctx);
    } else if (ctx is CaseExpressionTermContext) {
      return visitCaseExpressionTerm(ctx);
    } else if (ctx is PowerExpressionTermContext) {
      return visitPowerExpressionTerm(ctx);
    } else if (ctx is SuccessorExpressionTermContext) {
      return visitSuccessorExpressionTerm(ctx);
    } else if (ctx is PolarityExpressionTermContext) {
      return visitPolarityExpressionTerm(ctx);
    } else if (ctx is TermExpressionTermContext) {
      return visitTermExpressionTerm(ctx);
    } else if (ctx is InvocationExpressionTermContext) {
      return visitInvocationExpressionTerm(ctx);
    } else if (ctx is CaseExpressionItemContext) {
      return visitCaseExpressionItem(ctx);
    } else if (ctx is DateTimePrecisionSpecifierContext) {
      return visitDateTimePrecisionSpecifier(ctx);
    } else if (ctx is RelativeQualifierContext) {
      return visitRelativeQualifier(ctx);
    } else if (ctx is OffsetRelativeQualifierContext) {
      return visitOffsetRelativeQualifier(ctx);
    } else if (ctx is ExclusiveRelativeQualifierContext) {
      return visitExclusiveRelativeQualifier(ctx);
    } else if (ctx is QuantityOffsetContext) {
      return visitQuantityOffset(ctx);
    } else if (ctx is TemporalRelationshipContext) {
      return visitTemporalRelationship(ctx);
    } else if (ctx is ConcurrentWithIntervalOperatorPhraseContext) {
      return visitConcurrentWithIntervalOperatorPhrase(ctx);
    } else if (ctx is IncludesIntervalOperatorPhraseContext) {
      return visitIncludesIntervalOperatorPhrase(ctx);
    } else if (ctx is IncludedInIntervalOperatorPhraseContext) {
      return visitIncludedInIntervalOperatorPhrase(ctx);
    } else if (ctx is BeforeOrAfterIntervalOperatorPhraseContext) {
      return visitBeforeOrAfterIntervalOperatorPhrase(ctx);
    } else if (ctx is WithinIntervalOperatorPhraseContext) {
      return visitWithinIntervalOperatorPhrase(ctx);
    } else if (ctx is MeetsIntervalOperatorPhraseContext) {
      return visitMeetsIntervalOperatorPhrase(ctx);
    } else if (ctx is OverlapsIntervalOperatorPhraseContext) {
      return visitOverlapsIntervalOperatorPhrase(ctx);
    } else if (ctx is StartsIntervalOperatorPhraseContext) {
      return visitStartsIntervalOperatorPhrase(ctx);
    } else if (ctx is EndsIntervalOperatorPhraseContext) {
      return visitEndsIntervalOperatorPhrase(ctx);
    } else if (ctx is InvocationTermContext) {
      return visitInvocationTerm(ctx);
    } else if (ctx is LiteralTermContext) {
      return visitLiteralTerm(ctx);
    } else if (ctx is ExternalConstantTermContext) {
      return visitExternalConstantTerm(ctx);
    } else if (ctx is IntervalSelectorTermContext) {
      return visitIntervalSelectorTerm(ctx);
    } else if (ctx is TupleSelectorTermContext) {
      return visitTupleSelectorTerm(ctx);
    } else if (ctx is InstanceSelectorTermContext) {
      return visitInstanceSelectorTerm(ctx);
    } else if (ctx is ListSelectorTermContext) {
      return visitListSelectorTerm(ctx);
    } else if (ctx is CodeSelectorTermContext) {
      return visitCodeSelectorTerm(ctx);
    } else if (ctx is ConceptSelectorTermContext) {
      return visitConceptSelectorTerm(ctx);
    } else if (ctx is ParenthesizedTermContext) {
      return visitParenthesizedTerm(ctx);
    } else if (ctx is QualifiedMemberInvocationContext) {
      return visitQualifiedMemberInvocation(ctx);
    } else if (ctx is QualifiedFunctionInvocationContext) {
      return visitQualifiedFunctionInvocation(ctx);
    } else if (ctx is QualifiedFunctionContext) {
      return visitQualifiedFunction(ctx);
    } else if (ctx is MemberInvocationContext) {
      return visitMemberInvocation(ctx);
    } else if (ctx is FunctionInvocationContext) {
      return visitFunctionInvocation(ctx);
    } else if (ctx is ThisInvocationContext) {
      return visitThisInvocation(ctx);
    } else if (ctx is IndexInvocationContext) {
      return visitIndexInvocation(ctx);
    } else if (ctx is TotalInvocationContext) {
      return visitTotalInvocation(ctx);
    } else if (ctx is FunctionContext) {
      return visitFunction(ctx);
    } else if (ctx is RatioContext) {
      return visitRatio(ctx);
    } else if (ctx is BooleanLiteralContext) {
      return visitBooleanLiteral(ctx);
    } else if (ctx is NullLiteralContext) {
      return visitNullLiteral(ctx);
    } else if (ctx is StringLiteralContext) {
      return visitStringLiteral(ctx);
    } else if (ctx is NumberLiteralContext) {
      return visitNumberLiteral(ctx);
    } else if (ctx is LongNumberLiteralContext) {
      return visitLongNumberLiteral(ctx);
    } else if (ctx is DateTimeLiteralContext) {
      return visitDateTimeLiteral(ctx);
    } else if (ctx is DateLiteralContext) {
      return visitDateLiteral(ctx);
    } else if (ctx is TimeLiteralContext) {
      return visitTimeLiteral(ctx);
    } else if (ctx is QuantityLiteralContext) {
      return visitQuantityLiteral(ctx);
    } else if (ctx is RatioLiteralContext) {
      return visitRatioLiteral(ctx);
    } else if (ctx is IntervalSelectorContext) {
      return visitIntervalSelector(ctx);
    } else if (ctx is TupleSelectorContext) {
      return visitTupleSelector(ctx);
    } else if (ctx is TupleElementSelectorContext) {
      return visitTupleElementSelector(ctx);
    } else if (ctx is InstanceSelectorContext) {
      return visitInstanceSelector(ctx);
    } else if (ctx is InstanceElementSelectorContext) {
      return visitInstanceElementSelector(ctx);
    } else if (ctx is ListSelectorContext) {
      return visitListSelector(ctx);
    } else if (ctx is DisplayClauseContext) {
      return visitDisplayClause(ctx);
    } else if (ctx is CodeSelectorContext) {
      return visitCodeSelector(ctx);
    } else if (ctx is ConceptSelectorContext) {
      return visitConceptSelector(ctx);
    } else if (ctx is KeywordContext) {
      return visitKeyword(ctx);
    } else if (ctx is ReservedWordContext) {
      return visitReservedWord(ctx);
    } else if (ctx is KeywordIdentifierContext) {
      return visitKeywordIdentifier(ctx);
    } else if (ctx is ObsoleteIdentifierContext) {
      return visitObsoleteIdentifier(ctx);
    } else if (ctx is FunctionIdentifierContext) {
      return visitFunctionIdentifier(ctx);
    } else if (ctx is TypeNameIdentifierContext) {
      return visitTypeNameIdentifier(ctx);
    } else if (ctx is ReferentialIdentifierContext) {
      return visitReferentialIdentifier(ctx);
    } else if (ctx is ReferentialOrTypeNameIdentifierContext) {
      return visitReferentialOrTypeNameIdentifier(ctx);
    } else if (ctx is IdentifierOrFunctionIdentifierContext) {
      return visitIdentifierOrFunctionIdentifier(ctx);
    } else if (ctx is IdentifierContext) {
      return visitIdentifier(ctx);
    } else if (ctx is ExternalConstantContext) {
      return visitExternalConstant(ctx);
    } else if (ctx is ParamListContext) {
      return visitParamList(ctx);
    } else if (ctx is QuantityContext) {
      return visitQuantity(ctx);
    } else if (ctx is UnitContext) {
      return visitUnit(ctx);
    } else {
      return null;
    }
  }

  String noQuoteString(String string) {
    if (string.isNotEmpty) {
      if (string[0] == '"' || string[0] == "'") {
        string = string.substring(1, string.length - 1);
      }
      if (string.isNotEmpty &&
          (string[string.length - 1] == '"' ||
              string[string.length - 1] == "'")) {
        string = string.substring(0, string.length - 2);
      }
    }
    return string;
  }

  Ref returnRef(String name, String? libraryName) {
    /// usings?
    /// includes?
    /// contexts?
    int? codeSystemIndex;
    int? valueSetIndex;
    int? codeIndex;
    int? conceptIndex;
    int? parameterIndex;
    int? expressionIndex;

    codeSystemIndex =
        library.codeSystems?.def.indexWhere((element) => element.name == name);
    if (codeSystemIndex != null && codeSystemIndex != -1) {
      return CodeSystemRef(name: name, libraryName: libraryName);
    } else {
      valueSetIndex =
          library.valueSets?.def.indexWhere((element) => element.name == name);
      if (valueSetIndex != null && valueSetIndex != -1) {
        return ValueSetRef(name: name, libraryName: libraryName);
      } else {
        codeIndex =
            library.codes?.def.indexWhere((element) => element.name == name);
        if (codeIndex != null && codeIndex != -1) {
          return CodeRef(name: name, libraryName: libraryName);
        } else {
          conceptIndex = library.concepts?.def
              .indexWhere((element) => element.name == name);
          if (conceptIndex != null && conceptIndex != -1) {
            return ConceptRef(name: name, libraryName: libraryName);
          } else {
            parameterIndex = library.parameters?.def
                .indexWhere((element) => element.name == name);
            if (parameterIndex != null && parameterIndex != -1) {
              return ParameterRef(name: name, libraryName: libraryName);
            } else {
              expressionIndex = library.statements?.def
                  .indexWhere((element) => element.name == name);
              if (expressionIndex != null && expressionIndex != -1) {
                return ExpressionRef(name: name, libraryName: libraryName);
              } else {
                return IdentifierRef(name: name, libraryName: libraryName);
              }
            }
          }
        }
      }
    }
  }

  CqlExpression startsorEnds(CqlExpression expression, String? value) {
    final returnTypes = expression.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return expression;
    }
    if (!LiteralType.literalTypes.contains(returnTypes.first) &&
        !returnTypes.first.contains('CqlInterval')) {
      return expression;
    }
    switch (value) {
      case 'starts':
        return Start(operand: expression);
      case 'ends':
        return End(operand: expression);
      default:
        return expression;
    }
  }

  CqlExpression startOrEnd(CqlExpression expression, String? value) {
    final returnTypes = expression.getReturnTypes(library);
    if (returnTypes.isEmpty) {
      return expression;
    }
    if (!LiteralType.literalTypes.contains(returnTypes.first) &&
        !returnTypes.first.contains('CqlInterval')) {
      return expression;
    }
    switch (value) {
      case 'start':
        return Start(operand: expression);
      case 'end':
        return End(operand: expression);
      default:
        return expression;
    }
  }

  Multiply handleMultiply(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return Multiply(operand: [left, right]);
          } else if (right is LiteralLong) {
            return Multiply(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Multiply(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return Multiply(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return Multiply(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Multiply(operand: [left, right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Multiply(operand: [left, ToQuantity(operand: right)]);
          }
          if (right is LiteralDecimal || right is LiteralQuantity) {
            return Multiply(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left.getReturnTypes(library);
          final rightType = right.getReturnTypes(library);

          if (leftType.length == 1 && rightType.length == 1) {
            switch (leftType.first) {
              case 'FhirInteger':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Multiply(operand: [left, right]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return Multiply(operand: [ToLong(operand: left), right]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Multiply(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirInteger64':
                {
                  if (rightType.first == 'FhirInteger' ||
                      rightType.first == 'FhirInteger64') {
                    return Multiply(operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Multiply(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirDecimal':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Multiply(operand: [left, right]);
                  }
                }
                break;
              case 'ValidatedQuantity':
                {
                  if (rightType.first == 'FhirInteger' ||
                      rightType.first == 'FhirInteger64') {
                    // print('leftType: $leftType rightType: $rightType');
                    return Multiply(operand: [left, ToDecimal(operand: right)]);
                  }
                  if (rightType.first == 'FhirDecimal' ||
                      rightType.first == 'ValidatedQuantity') {
                    return Multiply(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Multiply(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for multiplication');
  }

  CqlExpression handleDivide(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(
                operand: [ToDecimal(operand: left), ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(
                operand: [ToDecimal(operand: left), ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger || right is LiteralLong) {
            return Divide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Divide(operand: [left, right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralDecimal) {
            return Divide(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return Divide(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left.getReturnTypes(library);
          final rightType = right.getReturnTypes(library);
          if (leftType.length == 1 && rightType.length == 1) {
            switch (leftType.first) {
              case 'FhirInteger':
                {
                  if (rightType.first == 'FhirInteger' ||
                      rightType.first == 'FhirInteger64') {
                    return Divide(operand: [
                      ToDecimal(operand: left),
                      ToDecimal(operand: right)
                    ]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Divide(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirInteger64':
                {
                  if (rightType.first == 'FhirInteger' ||
                      rightType.first == 'FhirInteger64') {
                    return Divide(operand: [
                      ToDecimal(operand: left),
                      ToDecimal(operand: right)
                    ]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Divide(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirDecimal':
                {
                  if (rightType.first == 'FhirInteger' ||
                      rightType.first == 'FhirInteger64') {
                    return Divide(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Divide(operand: [left, right]);
                  }
                }
                break;
              case 'ValidatedQuantity':
                {
                  if (rightType.first == 'FhirDecimal') {
                    return Divide(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return Divide(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Divide(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for division');
  }

  TruncatedDivide handleTruncatedDivide(
      CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return TruncatedDivide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return TruncatedDivide(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [left, right]);
          } else if (right is LiteralQuantity) {
            return TruncatedDivide(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralDecimal) {
            return TruncatedDivide(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return TruncatedDivide(operand: [left, right]);
          }
        }
      default:
        {
          final leftType = left.getReturnTypes(library);
          final rightType = right.getReturnTypes(library);
          if (leftType.length == 1 && rightType.length == 1) {
            switch (leftType.first) {
              case 'FhirInteger':
                {
                  if (rightType.first == 'FhirInteger') {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return TruncatedDivide(
                        operand: [ToLong(operand: left), right]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return TruncatedDivide(
                        operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirInteger64':
                {
                  if (rightType.first == 'FhirInteger') {
                    return TruncatedDivide(
                        operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return TruncatedDivide(
                        operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirDecimal':
                {
                  if (rightType.first == 'FhirInteger') {
                    return TruncatedDivide(
                        operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return TruncatedDivide(
                        operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return TruncatedDivide(operand: [left, right]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return TruncatedDivide(
                        operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case 'ValidatedQuantity':
                {
                  if (rightType.first == 'FhirDecimal') {
                    return TruncatedDivide(
                        operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return TruncatedDivide(operand: [left, right]);
                  }
                }
              default:
                break;
            }
          }
          return TruncatedDivide(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for truncated division');
  }

  Modulo handleModulo(CqlExpression left, CqlExpression right) {
    switch (left) {
      case LiteralInteger _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [ToLong(operand: left), right]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [ToDecimal(operand: left), right]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralLong _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToLong(operand: right)]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [ToDecimal(operand: left), right]);
          }
        }
        break;
      case LiteralDecimal _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralLong) {
            return Modulo(operand: [left, ToDecimal(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [left, right]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [ToQuantity(operand: left), right]);
          }
        }
        break;
      case LiteralQuantity _:
        {
          if (right is LiteralInteger) {
            return Modulo(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralDecimal) {
            return Modulo(operand: [left, ToQuantity(operand: right)]);
          } else if (right is LiteralQuantity) {
            return Modulo(operand: [left, right]);
          }
        }
        break;
      default:
        {
          final leftType = left.getReturnTypes(library);
          final rightType = right.getReturnTypes(library);
          if (leftType.length == 1 && rightType.length == 1) {
            switch (leftType.first) {
              case 'FhirInteger':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return Modulo(operand: [ToLong(operand: left), right]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Modulo(operand: [ToDecimal(operand: left), right]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return Modulo(operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case 'FhirInteger64':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Modulo(operand: [left, ToLong(operand: right)]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Modulo(operand: [ToDecimal(operand: left), right]);
                  }
                }
                break;
              case 'FhirDecimal':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Modulo(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirInteger64') {
                    return Modulo(operand: [left, ToDecimal(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Modulo(operand: [left, right]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return Modulo(operand: [ToQuantity(operand: left), right]);
                  }
                }
                break;
              case 'ValidatedQuantity':
                {
                  if (rightType.first == 'FhirInteger') {
                    return Modulo(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first == 'FhirDecimal') {
                    return Modulo(operand: [left, ToQuantity(operand: right)]);
                  } else if (rightType.first == 'ValidatedQuantity') {
                    return Modulo(operand: [left, right]);
                  }
                }
                break;
              default:
                break;
            }
          }
          return Modulo(operand: [left, right]);
        }
    }
    throw ArgumentError('Invalid type for modulo');
  }
}
