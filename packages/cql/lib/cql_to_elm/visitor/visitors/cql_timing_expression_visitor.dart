import '../../../cql.dart';

class CqlTimingExpressionVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlTimingExpressionVisitor(super.library);

  @override
  CqlExpression visitTimingExpression(TimingExpressionContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();

    if (ctx.childCount == 3) {
      // Parse left and right operands
      final CqlExpression left =
          visitTermExpression(ctx.children![0] as TermExpressionContext);
      final CqlExpression right =
          visitTermExpression(ctx.children![2] as TermExpressionContext);

      // Parse the interval operator phrase
      final intervalOperatorPhrase = ctx.children![1];

      CqlExpression primaryExpression;
      switch (intervalOperatorPhrase) {
        case ConcurrentWithIntervalOperatorPhraseContext _:
          primaryExpression = visitConcurrentWithIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case IncludesIntervalOperatorPhraseContext _:
          primaryExpression = visitIncludesIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case IncludedInIntervalOperatorPhraseContext _:
          primaryExpression = visitIncludedInIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case BeforeOrAfterIntervalOperatorPhraseContext _:
          primaryExpression = visitBeforeOrAfterIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case WithinIntervalOperatorPhraseContext _:
          primaryExpression = visitWithinIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case MeetsIntervalOperatorPhraseContext _:
          primaryExpression = visitMeetsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case OverlapsIntervalOperatorPhraseContext _:
          primaryExpression = visitOverlapsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case StartsIntervalOperatorPhraseContext _:
          primaryExpression = visitStartsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        case EndsIntervalOperatorPhraseContext _:
          primaryExpression = visitEndsIntervalOperatorPhrase(
              intervalOperatorPhrase, left, right);
          break;
        default:
          throw ArgumentError('$thisNode Invalid TimingExpression');
      }

      // Check if additional logic is required (e.g., Not condition)
      if (intervalOperatorPhrase is WithinIntervalOperatorPhraseContext) {
        // Add "Not" condition for "IntervalY.start is not null"
        final notCondition = Not(
          operand: IsNull(
            operand: Start(operand: right),
          ),
        );

        // Combine primary and additional conditions with "And"
        return And(operand: [primaryExpression, notCondition]);
      }

      return primaryExpression;
    }

    throw ArgumentError('$thisNode Invalid TimingExpression');
  }
}
