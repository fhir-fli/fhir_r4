// ignore_for_file: one_member_abstracts

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';

/// ValueSetExpander
abstract class ValueSetExpander {
  /// Expand a value set
  Future<ValueSetExpansionOutcome> expand(
    ValueSet source,
    Parameters? parameters,
  );
}
