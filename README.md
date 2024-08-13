
# Octal

**Octal** is a Dart package designed for developers who need to handle octal to decimal conversions and manage Linux file permissions. It provides a simple and effective way to translate octal numbers into their decimal and symbolic equivalents, making it easier to work with file permissions in Linux environments.

## Getting started

To use this package, simply add it to your `pubspec.yaml`:

```yaml
dependencies:
  octal: ^1.0.0
```

Then, import it into your Dart code:

```dart
import 'package:octal/octal.dart';

main() {
  int decimalValue = octal(123); // 83 in decimal
  print(decimalValue);
}
```

For a more complete example, see the example code provided in the repository.

## Comparison with Other Languages

### Java

Java uses the `0123` syntax for octal numbers, which can be confusing and error-prone:

```java
int octalValue = 0123; // Java syntax for octal, leading zero indicates octal
System.out.println(octalValue); // Prints 83 (decimal)
```

### Rust

Rust, on the other hand, uses a more explicit and clear `0o123` syntax for octal numbers:

```rust
let octal_value = 0o123; // Rust syntax for octal
println!("{}", octal_value); // Prints 83 (decimal)
```

For a more complete example, see the example code.