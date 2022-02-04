class Node {
  var next;
  var data;
  Node(this.data);
}

//this class for manage the linked nodes 
class LinkedList {
  var head = null;

  //add
  void add(Node node) {
    //list is empty
    if (head == null) {
      head = node;
    } else {
      Node last = head;
      while (last.next != null) {
        last = last.next;
      }
      // Insert the new node at last node
      last.next = node;
    }

  }

  //print list of nodes
  void printList()
  {
      var currNode = head;
      print("LinkedList: ");
  
      // Traverse through the LinkedList
      while (currNode != null) {
          print(currNode.data + " ");
  
          // Go to next node
          currNode = currNode.next;
      }
  }

}

void main() {
  LinkedList ll = LinkedList();
  
  ll.add(Node("Node 1"));
  ll.add(Node("Node 2"));
  ll.add(Node("Node 3"));
  ll.add(Node("Node 4"));
  ll.add(Node("Node 5"));

  ll.printList();


}