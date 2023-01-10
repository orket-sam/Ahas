void main() {
  var data = [
    {
      "country": "Afghanistan",
      "code": "AFN",
      "currency": "Afghani",
      "symbol": "؋",
      "dialCode": null
    },
    {
      "country": "Albania",
      "code": "ALL",
      "currency": "Lek",
      "symbol": "Lek",
      "dialCode": "+355"
    },
  ];

  var x = data.firstWhere((element) => element['country'] == 'Albania');
  print(x['dialCode']);

  // randomizeList();
}

// void randomizeList() {
//   List players = ['Messi', 'Ronaldo', 'Mbappe', 'Haaland', 'Neymar'];
//   List selected = [];
//   for (var i = players.length - 1; i >= 0; i--) {
//     var j = Random().nextInt(players.length);
//     selected.add(players[j]);
//     players.removeAt(j);
//   }
//   print(selected);
// }


