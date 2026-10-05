/// FHIR R4B database on SQLite: the `fhir_db` store bound to `fhir_r4`.
///
/// Re-exports the model-independent core and adds this version's model,
/// its generated search-parameter and compartment data, and the typed
/// `FhirDb`, `FhirDao` and `HistoryEntry` an application uses.
library;

export 'package:fhir_db/fhir_db.dart' hide FhirDao, FhirDb, HistoryEntry;

export 'src/fhir_db.dart';
export 'src/r4_model.dart';
export 'src/search/compartment_definitions.dart';
export 'src/search/search_parameter_types.dart';
export 'src/search/search_parameters.dart';
