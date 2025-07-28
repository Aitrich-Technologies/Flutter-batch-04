mixin LoggingMixin {
  void logMessage(String message) {
    print('LOG: $message');
  }
}

mixin loggingtask {
  void logtask(String task) {
    print('LOG: $task');
  }
}

// Class that uses the LoggingMixin
class ClassA with LoggingMixin,loggingtask {
  void performAction() {
    logMessage('Performing action in ClassA');
     logtask('Performing task in ClassB');
    // Additional logic for ClassA
  }
}


// Class that also uses the LoggingMixin

    // Additional logic for ClassB
  
void main() {
  // Create instances of classes using the LoggingMixin
  var instanceA = ClassA();
  

  // Use the shared logging functionality
  instanceA.performAction();
  
}
