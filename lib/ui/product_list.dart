import 'package:flutter/material.dart';
import 'package:flutter_cart_with_provider/data/fake_data.dart';
import 'package:flutter_cart_with_provider/model/product.dart';

class ProductListPage extends StatefulWidget {
  final String title;

  const ProductListPage({Key key, this.title}) : super(key: key);

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  List<Product> _productList = FakeData.productList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 1.2),
            ),
            scrollDirection: Axis.vertical,
            itemCount: _productList.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                      color: Color(0xFFEAB9B5),
                      width: 1.0,
                    ),
                  ),
                  elevation: 0.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Image.network(
                        _productList[index].thumbnailUrl,
                        fit: BoxFit.cover,
                        scale: 0.8,
                        height: 150,
                        width: double.infinity,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              _productList[index].name,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF6F5C59),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              _productList[index].detail,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF6F5C59),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "\$${_productList[index].price}",
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF6F5C59),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
    );
  }
}
