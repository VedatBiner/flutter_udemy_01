import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class BasitHttp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => HttpState();
  }

class HttpState extends State<BasitHttp> {
  var veri = "";

  getIslemiYap(){
    print("Get Butonu basıldı");
    http.get(Uri.parse("https://google.com")).then((cevap){
      print(cevap.statusCode);
      print(cevap.body);
      setState(() {
        veri = cevap.body;
      });
    });
  }

  postIslemiYap(){
    print("PostButonu basıldı");
    http.post(Uri.parse("https://jsonplaceholder.typicode.com/posts"),
      body:{
        "title":"Uygulamadan geldim",
        "body":"Uygulmadan gönderilen yazı karşılığında cevap gelecek",
        "userId":"4",
        "id":"99999"
      }).then((cevap){
        print(cevap.statusCode);
        print(cevap.body);
        setState(() {
          veri = cevap.body;
        });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Basit http İşlemleri"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.amber),
                    child: const Text("GET"),
                    onPressed: getIslemiYap,
                  ),
              ),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                  child: Text("POST"),
                  onPressed: postIslemiYap,
                ),
              ),
            ],
          ),
          Expanded(
            child: Center(
              child: ListView(
                children: [
                  Text("Gelen Veri : \n $veri"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
