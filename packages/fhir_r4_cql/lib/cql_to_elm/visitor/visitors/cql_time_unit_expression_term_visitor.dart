import 'package:fhir_r4_cql/fhir_r4_cql.dart';


class CqlTimeUnitExpressionTermVisitor extends CqlBaseVisitor<CqlExpression> {
  CqlTimeUnitExpressionTermVisitor(super.library);

  @override
  CqlExpression visitTimeUnitExpressionTerm(TimeUnitExpressionTermContext ctx) {
    printIf(ctx);
    final int thisNode = getNextNode();
    final String unit =
        visitDateTimeComponent(ctx.children![0] as DateTimeComponentContext);
    final CqlExpression expression = byContext(ctx.children![2]);
    switch (unit) {
      case 'date':
        return DateFrom(operand: expression);
      case 'time':
        return TimeFrom(operand: expression);
      case 'timezoneoffset':
        return TimezoneOffsetFrom(operand: expression);
      case 'year':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.year);
      case 'month':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.month);
      case 'day':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.day);
      case 'hour':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.hour);
      case 'minute':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.minute);
      case 'second':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.second);
      case 'millisecond':
        return DateTimeComponentFrom(
            operand: expression, precision: CqlDateTimePrecision.millisecond);
    }
    throw ArgumentError('$thisNode Invalid TimeUnitExpressionTerm');
  }
}
