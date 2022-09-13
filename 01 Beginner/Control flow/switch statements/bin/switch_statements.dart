void main(List<String> arguments) {
  int age = 18;
  switch (age) {
    // u cannot do special processing inside 'case'.. So U use switch when U av a specific value.. u cannot do 'case < 18'
    case 18:
      print('You are 18, you can vote');
      break;
    case 21:
      print('You are 21, you can vote');
      break;
    case 65:
      break;
    default:
      print('Nothing special about this age');
      break;
  }
}
