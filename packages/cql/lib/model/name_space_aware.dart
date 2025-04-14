import '../cql.dart';

abstract class NamespaceAware {
  /// Sets the namespace manager for this implementation.
  void setNamespaceManager(NamespaceManager namespaceManager);
}
