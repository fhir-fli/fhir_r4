import 'package:fhir_r4_cql/fhir_r4_cql.dart';


abstract class NamespaceAware {
  /// Sets the namespace manager for this implementation.
  void setNamespaceManager(NamespaceManager namespaceManager);
}
