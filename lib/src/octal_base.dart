/// Converts an octal number to its decimal equivalent.
///
/// This function takes an integer representing an octal number (using digits 0-7)
/// and converts it to a decimal (base-10) integer. The input must be a valid octal number.
///
/// Example:
/// ```dart
/// print(octal(755)); // Prints: 493
/// ```
///
/// Throws an [ArgumentError] if the input is not a valid octal number.
///
/// - Parameters:
///   - octalNumber: An integer representing the octal number to be converted.
///
/// - Returns: An integer representing the decimal equivalent of the provided octal number.
int octal(int octalNumber) {
  var decimal = 0;
  var base = 1;

  while (octalNumber > 0) {
    var lastDigit = octalNumber % 10;

    if (lastDigit >= 8) {
      throw ArgumentError('Invalid octal number.');
    }

    decimal += lastDigit * base;
    base *= 8;
    octalNumber ~/= 10;
  }

  return decimal;
}
