mixin LoggingMixin {
  void logMessage(String message) {
    print('LOG: $message');
  }
}
mixin Performtask {
  void logMess(String mess) {
    print('LOG: $mess');
  }
}

// Class that uses the LoggingMixin
class ClassA with LoggingMixin,Performtask {
  void performAction() {
    logMessage('Performing action in ClassA');
     logMess('Performing task in class B');
    

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
