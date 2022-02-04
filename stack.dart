

//first in last out
class Stack {
  List items = [];
  int length = 0;
  int firstIndex = 0;
  int lastIndex = 0;

  //add
  //make sure add item at last
  add(item) {
    if (items.isEmpty) {
      items.insert(0, item);
    }
    else {
      items.add(item);
    }
    lastIndex = items.indexOf(items.last);
    length = items.length;
  }

  //pop
  //make sure delete the last item
  pop() {
    if (items.isEmpty) {
      print("List is empty");
    }
    else {
      lastIndex = lastIndex-1;
    }
    length = lastIndex+1;
  }

  //getitems
  getItems() {
    for (var i = firstIndex; i <= lastIndex; i++) {
      print("Stack Items: ${items[i]}");
    }
  }

  //getFirstindex
  getFirstIndex() {
    if (items.isEmpty) {
      print("List is empty");
    } else {
      print("First Item: ${firstIndex}");
    }
  }

  //getlastindex
  getLastIndex() {
    print("Last Item: ${lastIndex}");
  }

  //get items count
  getLength() {
    print("items count: ${length}");
  }
}

void main() {
  Stack stack = Stack();
  stack.add("item 1");
  stack.add("item 2");
  stack.add("item 3");
  stack.add("item 4");
  stack.add("item 5");

  stack.pop();
  stack.pop();
  // stack.pop();
  // stack.pop();

  stack.getItems();
  stack.getFirstIndex();
  stack.getLastIndex();
  stack.getLength();
}