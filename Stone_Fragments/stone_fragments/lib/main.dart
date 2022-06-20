import 'package:flutter/material.dart';

void main() {
  runApp(const Stone());
}

class Stone extends StatefulWidget {
  const Stone({Key? key}) : super(key: key);

  @override
  State<Stone> createState() => SpaceState();
}

class SpaceState extends State<Stone> {
  int count = 0;
  int fragments = 0;
  int pieces = 0;
  int stones = 0;
  int resto = 0;
  void updateCount() {
    setState(() {
      count++;
      if (count < 10) {
        fragments = count;
      } else if (count >= 10 && count < 100) {
        fragments = count % 10;
        pieces = count ~/ 10;
      } else {
        stones = count ~/ 100;
        resto = count % 100;
        pieces = resto ~/ 10;
        fragments = resto % 10;
      }
    });
  }

//  @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: Container(
//           color: Colors.white,
//           child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//           Expanded(
//               child: Stack(children: [
//             Image.asset('assets/images/background.jpg'),
//             Positioned(
//               top: 100.0,
//               child: Text(
//                 '''
//                   Stones: $stones\n
//                   Pieces: $pieces\n
//                   Fragments: $fragments
//                   ''',
//                 textDirection: TextDirection.ltr,
//                 style: const TextStyle(
//                     fontSize: 16, decoration: TextDecoration.none),
//               ),
//             ),
//             Positioned(
//               top: 300.0,
//               left: 150.0,
//               child: GestureDetector(
//                 onTap: updateCount,
//                 child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.blue,
//                     child: const Text(
//                       'Clique aqui',
//                       textDirection: TextDirection.ltr,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                           fontSize: 16, decoration: TextDecoration.none),
//                     )),
//               ),
//             ),
//             if (0 < stones)
//               Positioned(
//                   top: 500.0,
//                   child: Image.asset(
//                     'assets/images/stone.png',
//                   )),
//             if (pieces < 10 && pieces > 0)
//               Positioned(
//                 top: 490,
//                 child: Image.asset('assets/images/piece.png'),
//               ),
//             if (0 < fragments && fragments < 10)
//               Positioned(
//                 top: 480,
//                 child: Image.asset('assets/images/fragment.png'),
//               ),
//           ]))
//       ],
//     ),
//         ));
//   }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          '''
              Stones: $stones\n
              Pieces: $pieces\n
              Fragments: $fragments
              ''',
          textDirection: TextDirection.ltr,
          style: const TextStyle(fontSize: 16, decoration: TextDecoration.none),
        ),
        GestureDetector(
          onTap: updateCount,
          child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Text(
                'Clique aqui',
                textDirection: TextDirection.ltr,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, decoration: TextDecoration.none),
              )),
        ),
        if (0 < stones)
          Image.asset(
            'assets/images/stone.png',
          ),
        if (pieces < 10 && pieces > 0) Image.asset('assets/images/piece.png'),
        if (0 < fragments && fragments < 10)
          Image.asset('assets/images/fragment.png'),
      ]),
    ));
  }
}
