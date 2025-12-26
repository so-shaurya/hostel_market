import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';
import 'package:hostel_market/data/dummy_prod.dart';

Color collegeCardColor = AppColor.card;
Color hostelCardColor = AppColor.card;

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});
  static String id = 'home_screen';

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

void selectedProdFor(prodFor itsFor) {
  if (itsFor == prodFor.hostel) {
    hostelCardColor = AppColor.primary;
    collegeCardColor = AppColor.card;
  }
  if (itsFor == prodFor.college) {
    hostelCardColor = AppColor.card;
    collegeCardColor = AppColor.primary;
  }
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProdFor(prodFor.hostel);
                    });
                  },
                  child: SelectionCard(
                    colorOfCard: hostelCardColor,
                    cardChild: Text(
                      'Hostel',
                      textAlign: TextAlign.center,
                      style: kTextHeadline,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedProdFor(prodFor.college);
                    });
                  },
                  child: SelectionCard(
                    colorOfCard: collegeCardColor,
                    cardChild: Text(
                      'College',
                      textAlign: TextAlign.center,
                      style: kTextHeadline,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 10),
              itemCount: ProdList.length,
              itemBuilder: (context, index) {
                return ProdList[index];
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SelectionCard extends StatelessWidget {
  const SelectionCard({super.key, this.cardChild, @required this.colorOfCard});
  final Widget? cardChild;
  final Color? colorOfCard;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      margin: EdgeInsetsGeometry.all(15),
      decoration: BoxDecoration(
        color: colorOfCard,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: cardChild),
    );
  }
}
