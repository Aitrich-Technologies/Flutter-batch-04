import 'dart:collection';

void main() {
  // Creating a queue
  Queue<int> myQueue = Queue();

  // Adding elements to the queue
  myQueue.addAll([10, 20, 30, 40]);

  // Printing the queue
  print('Queue: $myQueue');

  // Accessing elements from the queue

  print('First Element: ${myQueue.first}');

  print('Last Element : ${myQueue.last}');

  myQueue.removeFirst;
  print('Removed element : ${myQueue.removeFirst()}');

  

  // Removing elements from the queue
  

  // Printing the updated queue
  print('Updated queue: $myQueue');

  // Checking if the queue is empty
  print('Is queue empty? ${myQueue.isEmpty}');


    myQueue.clear();
    print('Queue after clearing : ${myQueue}');    
  
  // Clearing the queue
  
}
