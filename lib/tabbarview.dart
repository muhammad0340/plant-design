import 'package:flutter/material.dart';
import 'package:plant_ui_desing/plant_detail.dart';

class TabBarViewScreen extends StatefulWidget {
  const TabBarViewScreen({Key? key}) : super(key: key);

  @override
  State<TabBarViewScreen> createState() => _TabBarViewScreenState();
}

class _TabBarViewScreenState extends State<TabBarViewScreen> {
  late ScrollController scrollController;

  List allDescription = [
    "alover is a plant of the china very good for health moshlty use in pakistan alover is use for the facewash",
    "some other description ",
    "third discription",
  ];

  late String discription;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   scrollController = ScrollController();
  //   scrollController.addListener(() {
  //
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => PlantDetail()));
          },
          child: Container(
            color: Colors.green,
            height: 360,
            child: ListView(
              padding: EdgeInsets.only(left: 25, top: 10),
              // controller: scrollController,
              scrollDirection: Axis.horizontal,
              children: [
                getPlantCard(
                  '',
                  '150',
                  'indoor',
                  'alover',
                ),
                SizedBox(
                  width: 20,
                ),
                getPlantCard(
                  '',
                  '250',
                  'outdoor',
                  'mislele',
                ),
                SizedBox(
                  width: 20,
                ),
                getPlantCard(
                  '',
                  '350',
                  'indoor',
                  'jasimen',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10),
          child: Text(
            "Description",
            style: TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0, top: 10, right: 20),
          child: Text(
            "discription If you are completely new "
            "to planthouse then Ficus "
            "is brillent first plant to "
            "adopt it is very easy to"
            " uplook after do not occupy to much space ",
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }

  getPlantCard(
    String imagePath,
    String price,
    String plantType,
    String plantName,
  ) {
    return Stack(
      children: [
        Container(
          color: Colors.red,
          height: 325,
          width: 225,
          child: Container(
            height: 250,
            width: 225,
            color: Colors.cyan,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "FROM",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => PlantDetail(),
                      ),
                    );
                  },
                  child: Container(
                    height: 155,
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      "images/a.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          plantName,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          plantType,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 25,
                    ),
                    Container(
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.wb_sunny,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.home,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.hot_tub,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.question_mark,
                        color: Colors.grey,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90.0, top: 300),
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Icon(Icons.shopping_cart),
          ),
        ),
        Text("arsalan"),
      ],
    );
  }
}
