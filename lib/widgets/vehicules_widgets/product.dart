class Product {
  final String image, title, description, rate, logo, object3d, text;
  final String price;
  Product(
      {required this.description,
      required this.image,
      required this.price,
      required this.title,
      required this.rate,
      required this.logo,
      required this.object3d,
      required this.text});
}

List<Product> products = [
  Product(
    title: "Ford Mustang GT3",
    price: '14 364 456 384',
    description: "Custommizable",
    image: "assets/cars/Mustang.png",
    rate: '4.7',
    logo: 'assets/images/mustang.png',
    object3d: 'assets/3d/2024_ford_mustang_gt3.glb',
    text:
        'Built for GT3 competition by Multimatic Motorsports and Ford Performance, the Ford Mustang GT3 race car features a bespoke short-long arm suspension, Multimatic DSSV dampers, rear-mounted transaxle 6-speed gearbox, carbon fibre body panels, as well as a unique aero package developed to meet GT3 targets.',
  ),
  Product(
      title: "Ferrari 488",
      price: '262 800 800',
      description: "Custommizable",
      image: "assets/cars/Ferrari.png",
      rate: '3.8',
      logo: 'assets/images/ferrari.png',
      object3d: 'assets/3d/ferrari_488_pista_widebody.glb',
      text:
          'The Ferrari 488 (Type F142M) is a mid-engine sports car produced by the Italian automobile manufacturer Ferrari. The car replaced the 458, being the first mid-engine Ferrari to use a turbocharged V8 since the F40. It was succeeded by the Ferrari F8. '),
  Product(
    title: "Mclaren P1",
    price: '8 330 197 000',
    description: "Custommizable",
    image: "assets/cars/P1.png",
    rate: '4.7',
    logo: 'assets/images/mclaren.png',
    object3d: 'assets/3d/mclaren_p1.glb',
    text:
        'The McLaren P1 is a sports car produced by British marque McLaren Automotive. It is a plug-in hybrid with a mid-engine layout. It was first shown at the 2012 Paris Motor Show, with sales of the P1 beginning in the United Kingdom in October 2013 and all of the limited run of 375 units sold by November 2013.',
  ),
  Product(
    title: "Porche 918",
    price: '3 814 534 000',
    description: "Custommizable",
    image: "assets/cars/Porsche_918.png",
    rate: '4.5',
    logo: 'assets/images/porche.png',
    object3d: 'assets/3d/porsche_918_free.glb',
    text:
        'The Porsche 918 Spyder is a sports car manufactured by German marque Porsche.The 918 Spyder is a plug-in hybrid powered by a mid-mounted naturally aspirated 4.6 L (4,593 cc) V8 engine, developing 447 kW (608 PS; 599 hp) at 8,700 RPM, with two electric motors delivering an additional 210 kW (286 PS; 282 hp) for a combined output of 652 kW (875 hp) and 1,280 N⋅m (944 lbf⋅ft) of torque. The 918 Spyder\'s 6.8 kWh lithium-ion battery pack delivers an all-electric range of 19 km (12 mi) under the US Environmental Protection Agency\'s five-cycle tests',
  ),
  Product(
      title: "Peugot 3008",
      price: '3 814 534 000',
      description: "Custommizable",
      image: "assets/cars/3008.png",
      rate: '4.5',
      logo: 'assets/images/peugeot.png',
      object3d: 'assets/3d/peugeot_3008.glb',
      text:
          'The Peugeot 3008 is a compact crossover SUV manufactured and marketed by Peugeot. It was first presented to the public in Dubrovnik, Croatia in 2008, and then again in 2010 at the Mondial de l\'Automobile in Paris, by the French manufacturer Peugeot.'),
];
