import 'my_stack.dart';

main(List<String> args) {
  MyStack myStack = MyStack();
  myStack.push(5);
  myStack.push("mirac");
  myStack.push(true);

  print(myStack.pop());
  print(myStack.pop());
  print(myStack.pop());

  IntMyStack intMyStack = IntMyStack();
  intMyStack.push(5);

  StringMyStack stringMyStack = StringMyStack();
  stringMyStack.push("mirac");

  GenericStack<String> genericStack = GenericStack();
  genericStack.push("mirac");
  print(genericStack.pop());
}
