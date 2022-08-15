/*
 * @Description: 音乐播放器
 * @Author: xmj
 * @Date: 2022-08-15 10:05:27
 */
import 'package:app01/neu_box.dart';
import 'package:app01/shop.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

class SongPage extends StatefulWidget {
  SongPage({Key? key}) : super(key: key);

  @override
  State<SongPage> createState() => _SongPageState();
}

class _SongPageState extends State<SongPage> {
  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 60,
              width: 60,
              child: InkWell(
                onTap: () => {Get.to(() => Shop())},
                child: const NeUBox(
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),
            const Text('P L A Y L I S T'),
            const SizedBox(
              height: 60,
              width: 60,
              child: NeUBox(
                child: Icon(Icons.menu),
              ),
            ),
          ],
        ),
        const SizedBox(height: 25),
        NeUBox(
            child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: NeUBox(child: Image.asset('lib/images/1.png'))),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Kota The Friend',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        'Birdie',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      )
                    ],
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  )
                ],
              ),
            ),
          ],
        )),
        const SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('0:00'),
            Icon(Icons.shuffle),
            Icon(Icons.repeat),
            Text('10:00'),
          ],
        ),
        // const SizedBox(
        //   height: 25,
        // ),
        // NeUBox(
        //   child: LinearPercentIndicator(
        //     lineHeight: 10,
        //     percent: 0.8,
        //     progressColor: Colors.green,
        //     backgroundColor: Colors.transparent,
        //   ),
        // )

        const SizedBox(
          height: 25,
        ),
        SizedBox(
          height: 80,
          child: Row(
            children: const [
              Expanded(
                child: NeUBox(child: Icon(Icons.skip_previous, size: 32)),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: NeUBox(child: Icon(Icons.skip_previous, size: 32)),
                ),
              ),
              Expanded(
                child: NeUBox(child: Icon(Icons.skip_next, size: 32)),
              )
            ],
          ),
        )
      ],
    );
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: const Text('音乐播放器'),
        ),
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: column,
        )));
  }
}
