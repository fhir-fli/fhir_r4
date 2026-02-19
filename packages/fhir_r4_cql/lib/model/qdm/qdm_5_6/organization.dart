import 'package:fhir_r4_cql/fhir_r4_cql.dart';

/// a grouping of people or organizations with a common purpose

class Organization {
  final LiteralCode? organizationType;

  Organization({
    this.organizationType,
  });
}
