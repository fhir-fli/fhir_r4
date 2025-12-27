// ignore_for_file: public_member_api_docs,

enum CollectionStatus {
  singleton,
  ordered,
  unordered;

  bool isList() =>
      this == CollectionStatus.ordered || this == CollectionStatus.unordered;
}
