/// Enumeration for sort directions.
enum SortDirection { asc, ascending, desc, descending }

extension SortDirectionExtension on SortDirection {
  String toJson() {
    // You can map enum values to their string representations for serialization
    switch (this) {
      case SortDirection.asc:
        return 'asc';
      case SortDirection.ascending:
        return 'ascending';
      case SortDirection.desc:
        return 'desc';
      case SortDirection.descending:
        return 'descending';
    }
  }

  static SortDirection fromJson(String jsonValue) {
    switch (jsonValue) {
      case 'asc':
        return SortDirection.asc;
      case 'ascending':
        return SortDirection.ascending;
      case 'desc':
        return SortDirection.desc;
      case 'descending':
        return SortDirection.descending;
      default:
        throw ArgumentError('Invalid SortDirection JSON value: $jsonValue');
    }
  }
}
