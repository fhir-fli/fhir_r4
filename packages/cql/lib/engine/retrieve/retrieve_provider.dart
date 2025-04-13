import '../../cql.dart';

abstract class RetrieveProvider {
  Iterable<Object> retrieve(
      String context,
      String contextPath,
      Object contextValue,
      String dataType,
      String templateId,
      String codePath,
      Iterable<Code> codes,
      String valueSet,
      String datePath,
      String dateLowPath,
      String dateHighPath,
      IntervalExpression dateRange);
}
