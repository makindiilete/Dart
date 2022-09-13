// declaring enums : - enum must be declared outside d scope of d main function
enum COLORS {red, green, blue}
void main(List<String> arguments) {
print(COLORS.values); // [COLORS.red, COLORS.green, COLORS.blue]
  print(COLORS.red); // COLORS.red
}
