import '../../cql.dart';

abstract class ModelInfoReaderProvider {
  bool isSupported();

  ModelInfoReader create(String contentType);
}
