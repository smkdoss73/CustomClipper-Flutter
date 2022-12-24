class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.bottomLeft,
        fit: StackFit.expand,
        children: [
          ClipPath(
            clipper: ImageClipper(),
            child: Image.asset(
              'images/birds.jpeg',
              alignment: Alignment.topLeft,
              fit: BoxFit.none,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.40,
            left: 20,
            width: MediaQuery.of(context).size.width - 20,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.550,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  child: Text(
                    'Kalidoss Shanmugam',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
