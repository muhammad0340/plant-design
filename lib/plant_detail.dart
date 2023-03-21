import 'package:flutter/material.dart';

class PlantDetail extends StatelessWidget {
  const PlantDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 400,
                //  height: MediaQuery.of(context).size.width,
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 2,
                child: Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 10,
                  left: MediaQuery.of(context).size.width - 70,
                ),
                child: FloatingActionButton(
                  backgroundColor: Colors.greenAccent,
                  onPressed: () {},
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.black38,
                    size: 17,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                left: MediaQuery.of(context).size.width - 30,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text("1"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, top: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "INDOOR",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Ficus",
                      style: TextStyle(
                          fontSize: 44,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "From",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      '30',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "size",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "small",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.black,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 388.0),
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: (MediaQuery.of(context).size.height / 2) - 250,
                left: (MediaQuery.of(context).size.width / 2) - 30,
                child: Image(
                  image: AssetImage("images/b.jpg"),
                  fit: BoxFit.cover,
                  height: 250,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 430.0,
                  left: 15,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "All we know",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "If you are completely new "
                      "to planthouse then Ficus "
                      "is brillent first plant to "
                      "adopt it is very easy to"
                      " uplook after do not occupy to much space ",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 12,),
                    Text(
                      "Detail",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text("Plant size: 34.50cm",style: TextStyle(
                      fontWeight: FontWeight.w500
                    ),),
                    Text("Nursery Pot width:12cm",style: TextStyle(
                        fontWeight: FontWeight.w500
                    ),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
