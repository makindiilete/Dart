
import 'dart:collection';

void main(List<String> arguments) {
// Queue ==> Just like a queue in the bank, you cannot add or remove from d middle.. U can only add or remove from the start and end and d items does not have any index

Queue items = Queue();
items.add(1);
items.add(3);
items.add(2);

print(items);

// remove d first element
items.removeFirst();

// remove the last element
items.removeLast();


print(items);
}
