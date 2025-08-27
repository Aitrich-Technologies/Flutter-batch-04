import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _calcState();
}

class _calcState extends State<Calculator> {
  String _output = "0";
  String _input = "";
  String _expression = "";
  double _num1 = 0;
  String _operator = "";
  bool _shouldClearDisplay = false;

  void _onButtonPress(String buttonText) {
    setState(() {
      if (buttonText == "AC") {
        _output = "0";
        _input = "";
        _expression = "";
        _num1 = 0;
        _operator = "";
        _shouldClearDisplay = false;
      } else if (buttonText == "+/-") {
        if (_output != "0") {
          _output = _output.startsWith('-')
              ? _output.substring(1)
              : "-$_output";
          _input = _output;
          _expression = _expression + " ";
        }
      } else if (buttonText == "%") {
        if (_input.isNotEmpty && double.tryParse(_input) != null) {
          double value = double.parse(_input) / 100;
          _input = value.toString();
          _output = _input;
          _expression += " %";
        }
      } else if ("+-×÷=".contains(buttonText)) {
        if (_input.isEmpty && buttonText != "=") {
          if (_output != "0") {
            _operator = buttonText;
            _shouldClearDisplay = true;
            _expression += " $_operator";
          }
          return;
        }

        if (buttonText == "=") {
          _calculate();
        } else {
          if (_operator.isNotEmpty && !_shouldClearDisplay) {
            _calculate();
            _num1 = double.parse(_output);
          } else {
            _num1 = double.parse(_input);
          }

          _operator = buttonText;
          _shouldClearDisplay = true;

          if (_expression.endsWith(' +') ||
              _expression.endsWith(' -') ||
              _expression.endsWith('×') ||
              _expression.endsWith(' ÷')) {
            _expression =
                _expression.substring(0, _expression.length - 2) +
                " $_operator";
          } else {
            _expression += " $_operator";
          }
        }
      } else {
        if (_shouldClearDisplay) {
          _input = "";
          _shouldClearDisplay = false;
        }

        if (buttonText == ".") {
          if (_input.isEmpty) {
            _input = "0.";
          } else if (!_input.contains(".")) {
            _input += ".";
          } else {
            return;
          }
        } else {
          if (_input == "0") {
            _input = buttonText;
          } else if (_input.isEmpty) {
            _input = buttonText;
          } else {
            _input += buttonText;
          }
        }

        _output = _input;

        if (_expression.endsWith("=")) {
          _expression = _input;
        } else if (_expression.isEmpty) {
          _expression = _input;
        } else {
          if (_expression.endsWith(" +") ||
              _expression.endsWith(" -") ||
              _expression.endsWith(" ×") ||
              _expression.endsWith(" ÷")) {
            _expression += " " + _input;
          } else {
            List<String> parts = _expression.split(" ");
            if (parts.length == 1) {
              _expression = _input;
            }
          }
        }
      }
    });
  }

  void _calculate() {
    if (_operator.isEmpty || _input.isEmpty) {
      return;
    }
    double num2 = double.parse(_input);
    double result = 0;
    switch (_operator) {
      case "+":
        result = _num1 + num2;
        break;
      case "-":
        result = _num1 - num2;
        break;
      case "×":
        result = _num1 * num2;
        break;
      case "÷":
        if (num2 != 0) {
          result = _num1 / num2;
        } else {
          _output = "Error";
          _input = "";
          _num1 = 0;
          _operator = "";
          _shouldClearDisplay = true;
          return;
        }
        break;
    }
    if (result == result.toInt()) {
      _output = result.toInt().toString();
    } else {
      _output = result.toString();
    }
    _input = _output;
    _num1 = result;
    _operator = "";
    _shouldClearDisplay = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.bottomRight,
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      _expression,
                      style: const TextStyle(
                        fontSize: 28.0,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      _output,
                      style: const TextStyle(
                        fontSize: 90.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
            ),
            const Divider(height: 1, color: Colors.transparent),
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: "AC",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: _onButtonPress,
                    ),
                    CalculatorButton(
                      text: "+/-",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: _onButtonPress,
                    ),
                    CalculatorButton(
                      text: "%",
                      color: const Color(0xFFA5A5A5),
                      textColor: Colors.black,
                      onPressed: _onButtonPress,
                    ),
                    CalculatorButton(
                      text: "÷",
                      color: const Color(0xFFFE9E08),
                      textColor: Colors.white,
                      onPressed: _onButtonPress,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: "7", onPressed: _onButtonPress),
                    CalculatorButton(text: "8", onPressed: _onButtonPress),
                    CalculatorButton(text: "9", onPressed: _onButtonPress),
                    CalculatorButton(
                      text: "×",
                      color: const Color(0xFFFE9E08),
                      textColor: Colors.white,
                      onPressed: _onButtonPress,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: "4", onPressed: _onButtonPress),
                    CalculatorButton(text: "5", onPressed: _onButtonPress),
                    CalculatorButton(text: "6", onPressed: _onButtonPress),
                    CalculatorButton(
                      text: "-",
                      color: const Color(0xFFFE9E08),
                      textColor: Colors.white,
                      onPressed: _onButtonPress,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(text: "1", onPressed: _onButtonPress),
                    CalculatorButton(text: "2", onPressed: _onButtonPress),
                    CalculatorButton(text: "3", onPressed: _onButtonPress),
                    CalculatorButton(
                      text: "+",
                      color: const Color(0xFFFE9E08),
                      textColor: Colors.white,
                      onPressed: _onButtonPress,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    CalculatorButton(
                      text: "0",
                      flex: 2,
                      onPressed: _onButtonPress,
                    ),
                    CalculatorButton(text: ".", onPressed: _onButtonPress),
                    CalculatorButton(
                      text: "=",
                      color: const Color(0xFFFE9E08),
                      textColor: Colors.white,
                      onPressed: _onButtonPress,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color? color;
  final Color? textColor;
  final Function(String) onPressed;
  final int flex;

  const CalculatorButton({
    super.key,
    required this.text,
    this.color = const Color(0xFF333333),
    this.textColor = Colors.white,
    required this.onPressed,
    this.flex = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Material(
          color: color,
          shape: flex == 1
              ? const CircleBorder()
              : RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
          child: InkWell(
            onTap: () => onPressed(text),
            customBorder: flex == 1
                ? const CircleBorder()
                : RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40.0),
                  ),
            child: Container(
              height: 70,
              alignment: flex == 1 ? Alignment.center : Alignment.centerLeft,
              padding: EdgeInsets.only(left: flex == 2 ? 25 : 0),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
