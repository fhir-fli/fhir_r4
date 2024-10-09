/// Codes to identify how UDI data was entered.
enum UDIEntryType {
  /// Display: Barcode
  /// Definition: a barcodescanner captured the data from the device label.
  barcode,

  /// Display: RFID
  /// Definition: An RFID chip reader captured the data from the device label.
  rfid,

  /// Display: Manual
  /// Definition: The data was read from the label by a person and manually entered. (e.g.  via a keyboard).
  manual,

  /// Display: Card
  /// Definition: The data originated from a patient's implant card and was read by an operator.
  card,

  /// Display: Self Reported
  /// Definition: The data originated from a patient source and was not directly scanned or read from a label or card.
  self_reported,

  /// Display: Unknown
  /// Definition: The method of data capture has not been determined.
  unknown,
  ;

  @override
  String toString() {
    switch (this) {
      case barcode:
        return 'barcode';
      case rfid:
        return 'rfid';
      case manual:
        return 'manual';
      case card:
        return 'card';
      case self_reported:
        return 'self-reported';
      case unknown:
        return 'unknown';
    }
  }

  String toJson() => toString();
  static UDIEntryType fromString(String str) {
    switch (str) {
      case 'barcode':
        return UDIEntryType.barcode;
      case 'rfid':
        return UDIEntryType.rfid;
      case 'manual':
        return UDIEntryType.manual;
      case 'card':
        return UDIEntryType.card;
      case 'self-reported':
        return UDIEntryType.self_reported;
      case 'unknown':
        return UDIEntryType.unknown;
      default:
        throw ArgumentError('Unknown enum value: $str');
    }
  }

  static UDIEntryType fromJson(dynamic jsonValue) {
    if (jsonValue is String) {
      return fromString(jsonValue);
    } else {
      throw ArgumentError('Unknown enum value: $jsonValue');
    }
  }
}
