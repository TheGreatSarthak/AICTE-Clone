import 'package:flutter/material.dart';
import '../widgets/collegeblock.dart';

class Item {
  final String id;
  final String title;
  final String address;
  final String type;

  const Item(
      {required this.id,
      required this.title,
      required this.address,
      required this.type});
}

class College extends StatelessWidget {
  static const routeName = './college';

  const College({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const dummy = [
      Item(
          id: 'd1',
          title: "A & M Institute Of Computer & Technology",
          address: "Gurdaspur",
          type: "Unaided-Private"),
      Item(
          id: 'd2',
          title: "A & M Institute Of Management & Technology",
          address: "Gurdaspur",
          type: "Unaided-Private"),
      Item(
          id: 'd3',
          title: "A.M.C. Engineering College                         ",
          address: "Banglore Urban",
          type: "Unaided-Private"),
      Item(
          id: 'd4',
          title: "A.M.K. Technological Polytechnic College",
          address: "Thiruvallur",
          type: "Govt aided"),
      Item(
          id: 'd5',
          title: "A.P.S College Of Engineering                             ",
          address: "Banglore Uraban",
          type: "Unaided-Private"),
      Item(
          id: 'd6',
          title: "A.R Institute Of Managemenet & Technology",
          address: "Meerut",
          type: "Unaided-Private"),
      Item(
          id: 'd7',
          title: "A.S.N Pharmacy College                               ",
          address: "Guntur",
          type: "Unaided-Private"),
      Item(
          id: 'd8',
          title: "A.V College Of Arts,Science & Commerce ",
          address: "Hyderabad",
          type: "Unaided-Private"),
      Item(
          id: 'd9',
          title: "A.V.S College Of Technology                         ",
          address: "Salem",
          type: "Unaided-Private"),
      Item(
          id: 'd10',
          title: "A-One Pharmacy College                              ",
          address: "Ahmedabad",
          type: "Unaided-Private"),
      Item(
          id: 'd11',
          title: "A.J. Institute Of Engineering & Technology Mangaluru ",
          address: "Dakshina Kannada",
          type: "Unaided-Private"),
      Item(
          id: 'd12',
          title: "A.J. Institute Of Management                       ",
          address: "Dakshina kannada",
          type: "Unaided-Private"),
      Item(
          id: 'd13',
          title: "A.P. Shah Institute Of Technology                       ",
          address: "Thane",
          type: "Unaided-Private"),
      Item(
          id: 'd14',
          title: "A.V. Parekh Technical Institute                       ",
          address: "Rajkot",
          type: "Government"),
      Item(
          id: 'd15',
          title: "A.Y. Dadabhai Technical Institute                        ",
          address: "Surat",
          type: "Unaided-Private"),
      Item(
          id: 'd16',
          title: "A.A.N.M. & V.V.R.S.R Polytechnic                       ",
          address: "Krishna",
          type: "Unaided-Private"),
      Item(
          id: 'd17',
          title: "A.C.T College Of Engineering And Technology",
          address: "Kanchipuram",
          type: "Unaided-Private"),
      Item(
          id: 'd18',
          title: "A.D.J. Dharmambal Polythechnic College",
          address: "Nagapattinam",
          type: "Govt aided"),
      Item(
          id: 'd19',
          title: "A.D. Patel Institute Of Technology                       ",
          address: "Anand",
          type: "Unaided-Private"),
      Item(
          id: 'd20',
          title: "A.D.R.S. Institute Of Technology & Management",
          address: "Aligarh",
          type: "Unaided-Private"),
      Item(
          id: 'd21',
          title: "A.G.M. Rural College Of Engineering & Technology",
          address: "Dharwad",
          type: "Unaided-Private"),
      Item(
          id: 'd22',
          title: "A.G.M. Rural Polytechnic                       ",
          address: "Dharwad",
          type: "Unaided-Private"),
      Item(
          id: 'd23',
          title: "A.G. Patil Polytechnic Institute                       ",
          address: "Solapur",
          type: "Unaided-Private"),
      Item(
          id: 'd24',
          title: "A.V College Of Arts,Science & Commerce",
          address: "Hyderabad",
          type: "Unaided-Private"),
      Item(
          id: 'd25',
          title: "A.I'S Mohammed Haji Saboo Siddik Polytechnic",
          address: "Mumbai City",
          type: "Govt aided"),
      Item(
          id: 'd26',
          title:
              "A.J.M.V.P.S. Institute Of Hotel Management And Catering Technology",
          address: "Ahmednagar",
          type: "Unaided-Private"),
      Item(
          id: 'd27',
          title: "A.K.R.G. College Of Pharmacy                       ",
          address: "West Godavari",
          type: "Unaided-Private"),
      Item(
          id: 'd28',
          title: "A.K.R.G. College Of Engineering & Technology ",
          address: "West Godavari",
          type: "Unaided-Private"),
      Item(
          id: 'd29',
          title: "A.K.T. Memorial Polytechnic College                   ",
          address: "Viluppuram",
          type: "Unaided-Private"),
      Item(
          id: 'd30',
          title: "A.K.T. Memorial College Of Engineering & Technology",
          address: "Viluppuram",
          type: "Unaided-Private"),
      Item(
          id: 'd31',
          title: "A.M.C. Engineering College                         ",
          address: "Banglore Urban",
          type: "Unaided-Private"),
      Item(
          id: 'd32',
          title: "A.M. Reddy Memorial College Of Engineering & Technology",
          address: "Guntur",
          type: ""),
      Item(
          id: 'd33',
          title: "A.M. Reddy Memorial College Of Pharmacy",
          address: "Guntur",
          type: "Unaided-Private"),
      Item(
          id: 'd34',
          title: "A.N.A. College Of Engineering And Management Studies",
          address: "Bareilly",
          type: "Unaided-Private"),
      Item(
          id: 'd35',
          title: "A.P. Government Institute Of Leather Technology",
          address: "Rangareddi",
          type: "Government"),
      Item(
          id: 'd36',
          title: "Aar Mahaveer Enginneering College                ",
          address: "Hyderabad",
          type: "Unaided-Private"),
      Item(
          id: 'd37',
          title: "Aarav Polytechnic College                               ",
          address: "Jaipur",
          type: "Unaided-Private"),
      Item(
          id: 'd38',
          title: "Aarsh Mahavidyalaya                                     ",
          address: "Rajkot",
          type: "Unaided-Private"),
      Item(
          id: 'd39',
          title: "Abbnoor Plytechnic college                               ",
          address: " Faridkot",
          type: "Govt aided"),
      Item(
          id: 'd40',
          title: "Abes Engineering College                               ",
          address: "Ghaziabad",
          type: "Unaided-Private"),
      Item(
          id: 'd99',
          title: "Loading More Colleges.........                       ",
          address: "Loading.........",
          type: "Loading........."),
    ];
    return Scaffold(
      appBar: AppBar(
          title: const Text("College"),
          backgroundColor: const Color.fromRGBO(244, 85, 4, 1)),
      body: GridView(
        padding: const EdgeInsets.all(10),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 500,
          childAspectRatio: 7 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 10,
        ),
        children: dummy
            .map((item) => CollegeBlock(
                  item.id,
                  item.title,
                  item.address,
                  item.type,
                ))
            .toList(),
      ),
    );
  }
}
