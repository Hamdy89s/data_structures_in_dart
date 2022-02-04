class Node {
  var next;
  var prev;
  var data;
  Node(this.data);
}

class DoubleLinkedList {
  var head = null;

  add(Node node) {
    if (head == null) {
      head = node;
    } else {
      //get the last item and add new node to this item
      var last = head;
      while (last.next != null) {
        last = last.next;
      }
      last.next = node;
    }
  }

  insertAtIndex(int index, Node node) {
    if (head == null) {
      head = node;
    } else {
      var i = 1;
      var current = head;
      var next;
      while (i < index) {
        current = current.next;
        i++;
      }
      next = current.next;
      // print("current: ${current.data}");
      // print("next: ${next.data}");

      //add new node to linkedlist
      current.next = node;
      node.next = next;
      next.prev = node;

    }
  }

  printList() {
    var currNode = head;
    print("DoubleLinkedLIst: ");
    while (currNode != null) {
      print(currNode.data);

      currNode = currNode.next;
    }
  }
}

void main() {
  DoubleLinkedList dll = DoubleLinkedList();
  dll.add(Node("Node 1"));
  dll.add(Node("Node 2"));
  dll.add(Node("Node 3"));
  dll.add(Node("Node 4"));
  dll.add(Node("Node 5"));

  dll.insertAtIndex(2, Node("Node 2.5"));
  dll.insertAtIndex(4, Node("Node 3.75"));
  dll.insertAtIndex(6, Node("Node 4.80"));

  dll.printList();
}