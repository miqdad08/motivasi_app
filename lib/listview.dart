import 'package:flutter/cupertino.dart';
import 'package:motivasi_app/Detail.dart';
import 'package:motivasi_app/textstyle.dart';
import 'package:flutter/material.dart';




class ListItem extends StatefulWidget {
  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  List<String> judul = [
    "1. Knute Nelson berkata",
    "2. Gene Tunney berkata",
    "3. Joseph Addison berkata",
    "4. DeForest Clinton berkata",
    "5. Arthur Schopenhauer berkata",
    "6. Denis Waitley berkata",
    "7. Dalai Lama XIV berkata",
    "8. Ralph Waldo Emerson berkata",
    "9.  Mahatma Gandhi berkata",
    "10. Henri Frederic Amiel berkata"
  ];
  List<String> subtitle = [
    "“Hal yang paling menyenangkan di tengah masa sulit adalah kesehatan yang baik dan tidur yang cukup.” – Knute Nelson",
    "“Untuk menikmati cahaya kesehatan yang baik, Anda harus berolahraga.” – Gene Tunney,",
    "“Kesehatan dan keceriaan secara alami melahirkan satu sama lain.” – Joseph Addison",
    "“Jauh lebih sulit untuk membuat orang sehat daripada membuat mereka sakit.” – DeForest Clinton Jarvis",
    "“Yang terbesar dari kebodohan adalah mengorbankan kesehatan untuk jenis lain dari kebahagiaan.” – Arthur Schopenhauer ",
    "“Waktu dan kesehatan adalah dua aset berharga yang tidak kita kenali dan hargai sampai mereka telah habis.” – Denis Waitley",
    "“Pikiran yang tenang membawa kekuatan batin dan rasa percaya diri, sehingga itu sangat penting untuk kesehatan yang baik.” – Dalai Lama XIV",
    "“Kesehatan adalah renungan yang pertama dan tidur adalah syarat untuk mendapatkannya” – Ralph Waldo Emerson",
    "Harta sejati adalah kesehatan, bukan emas dan perak” – Mahatma Gandhi",
    "“Dalam kesehatan terdapat kebebasan. Kesehatan adalah hal paling pertama dalam semua kebebasan.” – Henri Frederic Amiel "

  ];


  List<String> img = [
    "https://llandscapes-10674.kxcdn.com/wp-content/uploads/2019/07/lighting.jpg",
    "https://images.ctfassets.net/u0haasspfa6q/2sMNoIuT9uGQjKd7UQ2SMQ/1bb98e383745b240920678ea2daa32e5/sell_landscape_photography_online",
    "https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg",
    "https://www.mickeyshannon.com/images/landscape-photography.jpg",
    "https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg",
    "https://assets.website-files.com/5d241d27aab4a552a5dd89b2/5e16366c0056de15c2f1a240_Mount-Taranaki-pink-dawn-Lake-Mangamahoe.jpg",
    "https://blueoceancdn143.blob.core.windows.net/cache/3/3/7/8/4/7/3378473f94afdb27ee76b9bd14b15768d7d69fd7.jpg",
    "https://miro.medium.com/max/11832/1*QQfQPiKHLpSvrujiVbtgxg.jpeg",
    "https://www.schultzphoto.com/wp-content/uploads/2016/01/alaska-landscape-photography-001-northern-lights-reflection.jpg",
    "https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png"

  ];

  List<String> quoName = [
    "Kegagalan dan Kesuksesan",
    "Kesehatan"
  ];

  List<String> imgQuo = [
    "https://photographycourse.net/wp-content/uploads/2014/11/Landscape-Photography-steps.jpg",
    "https://static.photocdn.pt/images/articles/2018/12/03/articles/2017_8/improve_landscape_photography.jpg"
  ];



  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: <Widget>[
              Container(
                //horizontal
                padding: EdgeInsets.symmetric(horizontal: 10),
                height: 80,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                itemCount: quoName.length,
                itemBuilder: (context, indexx) {
                  final quoteName = quoName[indexx].toString();
                  final imgQuote = imgQuo[indexx].toString();
                  return Container (
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Image.asset(imgQuote,
                            height: 80, width: 120, fit: BoxFit.cover),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 80,
                          width: 150,
                          child: Text(
                            quoteName,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                }),
              ),
              Container(
                //vertikal
                height: MediaQuery.of(context).size.height - 000,
                margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
                child:  ListView.builder(
                  scrollDirection: Axis.vertical,
                    itemCount: judul.length,
                    itemBuilder: (context, index){
                    final judulQoute = judul[index].toString();
                    final isiQuote = subtitle[index].toString();
                    final imageQuote = img [index].toString();
                    return Container(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> Detail(
                            judulDetail: judulQoute,
                            isiDetail : isiQuote,
                          )));
                        },
                        child: Stack(
                          children: <Widget>[
                            Container(
                              child: Image.asset(imageQuote, height: 130, width: 380, fit: BoxFit.cover),
                              margin: EdgeInsets.only(bottom: 10),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: 130,
                              width: 380,
                              child: Text(judulQoute,textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
              )
            ],
          ),
        ),
    );

  }


  topContent(String nama, String deskripsi){
    return new Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Material(
            color: Colors.transparent,
            child: Text(
                nama,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 11.0,
          ),
          Container(
            height: 3.0,
            width: 200.0,
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.symmetric(horizontal: 83.0),
          ),
          SizedBox(
            height: 20.0,
          ),
          Material(
            color: Colors.transparent,
            child: Text(
              deskripsi,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ],
      ),
    );
  }
}



