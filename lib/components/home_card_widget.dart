import 'package:flutter/material.dart';
import '../theme/color.dart';

// class HomeCardWidget extends StatelessWidget {
//   const HomeCardWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Container(
//         margin: const EdgeInsets.only(bottom: 8),
//         decoration: BoxDecoration(
//           color: whiteColor,
//           borderRadius: BorderRadius.circular(4),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height / 3.5,
//               margin: const EdgeInsets.only(bottom: 10),
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                     image: AssetImage("assets/pexels-pixabay-261429.jpg"),
//                     fit: BoxFit.cover),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 16),
//               child: ListTile(
//                 contentPadding: EdgeInsets.zero ,
//                 leading: CircleAvatar(
//                   child: Icon(Icons.account_circle_outlined),
//                 ),
//                 title: Text(
//                   'Miracle Mango',
//                   style: TextStyle(
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 16),
//                 ),
//                 subtitle: Text(
//                   'Designer | New Delhi',
//                   style: TextStyle(
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14,
//                       color: Colors.grey),
//                 ),
//                 trailing: Row(mainAxisSize: MainAxisSize.min, children: [
//                   Text(
//                     '4.7',
//                     style: TextStyle(
//                       fontFamily: 'Roboto',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 16,
//                     ),
//                   ),
//                   Icon(
//                     Icons.star,
//                     color: secondaryColor,
//                     size: 17,
//                   )
//                 ]),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 76,
//               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//               child: OutlinedButton(
//                 style: ButtonStyle(
//                     side: MaterialStateProperty.all(
//                         const BorderSide(color: secondaryColor))),
//                 onPressed: () {},
//                 child: const Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "TEXT",
//                       style: TextStyle(color: secondaryColor),
//                     ),
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3.5,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/pexels-pixabay-261429.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  child: Icon(Icons.account_circle_outlined),
                ),
                title: Text(
                  'Miracle Mango',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'Designer | New Delhi',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '4.7',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: secondaryColor,
                      size: 17,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 56, // Adjust the height here
              padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8), // Adjust the vertical padding here
              child: OutlinedButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: secondaryColor),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "TEXT",
                  style: TextStyle(color: secondaryColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
