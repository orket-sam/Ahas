class Travel {
  final String url;
  final String destination;

  Travel(this.destination, this.url);

  static destinations() {
    return <Travel>[
      Travel(
        'Bahamas',
        'assets/1.jpg',
      ),
      Travel(
        'Japan',
        'assets/2.jpg',
      ),
      Travel(
        'Israel',
        'assets/3.jpg',
      ),
      Travel(
        'Kenya',
        'assets/4.jpg',
      ),
      Travel(
        'Venice',
        'assets/5.jpg',
      ),
    ];
  }
}
