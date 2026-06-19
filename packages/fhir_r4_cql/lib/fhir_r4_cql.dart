/// FHIR R4 binding for the model-independent [`cql`](package:cql/cql.dart)
/// engine.
///
/// Re-exports `cql` so a consumer needs only this single import to both run
/// CQL and supply FHIR R4 data:
///
/// ```dart
/// import 'package:fhir_r4_cql/fhir_r4_cql.dart';
/// final result = await library.execute(context, const R4ModelResolver());
/// ```
library;

export 'package:cql/cql.dart';

export 'src/r4_model_resolver.dart';
export 'src/r4_terminology_provider.dart';
