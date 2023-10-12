import 'package:flutter/material.dart';

class AliExpress extends StatefulWidget {
  static const routeName = '/aliexpress';
  const AliExpress({super.key});

  @override
  State<AliExpress> createState() => _AliExpressState();
}

class _AliExpressState extends State<AliExpress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: const Color(0xFF334154),
          ),
          backgroundColor: Colors.white10,
          elevation: 0,
          title: const Text(
            "Ali Express",
            style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: Color(0xFF334154),
                ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:28.0,),
                  child: SizedBox( 
                    height: 160,
                    width: 200,
                    child: Column(
                      children: [
                        Image.asset("assets/images/90x90.png"),
                        const Padding(
                          padding: EdgeInsets.only(top:16.0, bottom: 8),
                          child: Text("Ali Express",
                          style: TextStyle(
                            color: Color(0xFF616E7C),
                            fontSize: 20,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                        ),
                        const Text("12% Off",
                          style: TextStyle(
                            color: Color(0xFFFF6B6B),
                            fontSize: 16,
                            fontWeight: FontWeight.w700
                          ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
              const Center(
                child: SizedBox(
                  width: 400, 
                  child: Padding(
                    padding: EdgeInsets.only(right:24.0, left:24.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(top:40.0, bottom: 15),
                            child: Text("Terms And Conditions",
                            style: TextStyle(
                              color: Color(0xff616E7C),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                            ),
                          ),
                        ),
                        Text("Any Offer is expressly made conditional on Buyer's assent to all of the terms contained in the Offer without deviation. Acceptance by Buyer of an Offer may be evidenced by (i) Buyer's written or verbal assent or the written or verbal assent of any representative of Buyer, (ii) Buyer's acceptance of delivery of the Products or payment of purchase price for the first installment of the Products \n\nIn the event that any Offer or Confirmation is sent in response to Buyer's blanket purchase order, the terms and conditions of that Offer or Confirmation, including these Terms and Conditions, shall apply to any delivery by Seller, irrespective of whether Buyer submits additional purchase orders (electronically or otherwise) and whether Seller provides\n\nSeller’s Offers are open for acceptance within the period stated by Seller in the Offer or, when no period is stated, within thirty (30) days from the date of the Offer, but any Offer may be withdrawn or revoked by Seller at any time prior to the receipt by Seller of Buyer's acceptance related thereto.",
                        style:TextStyle(
                          color: Color(0xff616E7C),
                          fontSize: 16,
                          fontWeight: FontWeight.w400
                        ) ,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(top:38.0, bottom: 8),
              child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(Color(0xFF6C8FF8)),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                    minimumSize:
                        const MaterialStatePropertyAll(Size(366, 60)),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Visit Website",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}
