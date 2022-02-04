
// first in first out
class Queue {
  List items = [];
  int firstIndex = 0;
  int lastIndex = 0;
  int length = 0;

  //add
  add(item) {
    if (items.isEmpty) {
      items.insert(0, item);
    } else {
      items.add(item);
    }
    length = items.length;
    lastIndex = items.indexOf(items.last);
  }
  //pop
  pop() {
    if (items.isEmpty ) {
      print("List is empty");
    } else {
      firstIndex = firstIndex+1;
    }
  }
  //getItems
  getItems() {
    for (var i = firstIndex; i <= lastIndex; i++) {
      print("Stack items: ${items[i]}");
    }
  }
  //firstIndex
  getFirstIndex() {
    print("First Index: ${firstIndex}");
  }
  //lastIndex
  getLastIndex() {
    print("Last Index: ${lastIndex}");
  }
}

void main() {
  Queue queue = Queue();
  queue.add("item 1");
  queue.add("item 2");
  queue.add("item 3");
  queue.add("item 4");
  queue.add("item 5");

  queue.pop();
  queue.pop();

  // queue.getItems();
  queue.getFirstIndex();
  queue.getLastIndex();
}