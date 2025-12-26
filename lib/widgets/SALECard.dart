import 'package:flutter/material.dart';
import 'package:hostel_market/data/constants.dart';

class ProdCard extends StatelessWidget {
  const ProdCard({
    super.key,
    @required this.prodName,
    @required this.prodTag,
    @required this.prodPrice,
    @required this.prodImg,
  });
  final String? prodName;
  final String? prodTag;
  final String? prodImg;
  final String? prodPrice;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.card,
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(5),

      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.all(7),
              height: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(prodImg!, fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            flex: 3,
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(prodName!, style: kCardName),
                  SizedBox(height: 5),
                  Text(prodTag!, style: kCardTag),
                  SizedBox(height: 5),
                  Text('₹ $prodPrice', style: kCardPrice),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
