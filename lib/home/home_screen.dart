import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
    required this.deshipakhiImage,
    required this.deshipakhiTag,
    required this.deshipakhiName,
    required this.dsehipakhiDate,
  }) : super(key: key);

  final List<String> deshipakhiImage;
  final List<String> deshipakhiTag;
  final List<String> deshipakhiName;
  final List<String> dsehipakhiDate;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            //Start custom appbar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  'assets/images/menu.svg',
                  width: 20,
                ),
                const CircleAvatar(
                  // radius: 20,
                  backgroundColor: Colors.blue,
                  backgroundImage: NetworkImage(
                    'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584__340.png',
                  ),
                )
              ],
            ),
            //End custom appbar
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 180,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.orange[300],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // top: 15,
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Image.asset('assets/images/bird.png'),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 50,
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Hello',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Osama',
                              style: TextStyle(
                                  // color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.home),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Ready for an amazing and lucky \nexperience',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Deshi Pakhi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Start: For deshi pakhi
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: deshipakhiImage.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 160,
                      width: 150,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 12,
                                offset: const Offset(0, 3),
                                color: Colors.grey.withOpacity(0.1)),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              deshipakhiImage[
                                  index], //Deshi Pakhi image from deshipakhiImage list
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.orange[100],
                                ),
                                child: Center(
                                  child: Text(
                                    deshipakhiTag[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.orange[500],
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            deshipakhiName[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dsehipakhiDate[index],
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            //End: Deshi pakhi

            const SizedBox(
              height: 10,
            ),
            const Text(
              'Bideshi Pakhi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //Start: For deshi pakhi
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: deshipakhiImage.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 160,
                      width: 150,
                      margin: const EdgeInsets.only(left: 10),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 12,
                                offset: const Offset(0, 3),
                                color: Colors.grey.withOpacity(0.1)),
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              deshipakhiImage[
                                  index], //Deshi Pakhi image from deshipakhiImage list
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 15,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.orange[100],
                                ),
                                child: Center(
                                  child: Text(
                                    deshipakhiTag[index],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.orange[500],
                                    ),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              const Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            deshipakhiName[index],
                            style: const TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            dsehipakhiDate[index],
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            //End: Bideshi pakhi
          ],
        ),
      ),
    );
  }
}
