void main() {
  int x = 10, y = 5;
  Answer( ).getValue(x, y);
  Answer( ).addition(x, y);
  Answer( ).substraction(x, y);

  }

  abstract class Calculation {
    void getValue(int x, int y);

    void addition(int x, int y) {
      print('Addition ${x + y}');
    }
    void substraction(int x, int y){
      print('Substraction ${x - y}');
    }

  
    }
    

    class Answer extends Calculation {
      @override 
      void getValue(int x, int y) {
        print('x = $x, y = $y');
      }

    }