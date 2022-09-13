
void main(List<String> arguments) {
// Sets = unordered and always returns unique values

Set<int> numbers = <int>{};
numbers.add(1);
numbers.add(2);
numbers.add(3);
numbers.add(1);
print(numbers); // {1, 2, 3}
}
