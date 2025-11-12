import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introbloc/featcher/bloc/product_bloc.dart';

class ProdactPage extends StatefulWidget {
  const ProdactPage({super.key});

  @override
  State<ProdactPage> createState() => _ProdactPageState();
}

class _ProdactPageState extends State<ProdactPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ProductBloc()..add(GetAllProduct())),
      ],
      child: Scaffold(
        appBar:AppBar() ,
        body: Column(
          children: [
          
            BlocConsumer<ProductBloc, ProductState>(
              listener: (context, state) {
                // TODO: implement listener
              },

              builder: (context, state) {
                if (state is Loding) {
                  return CircularProgressIndicator();
                } else if (state is Allprodact) {
                  GridView.builder(
                     itemCount:state.products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                    itemBuilder: (context, index) => Card(
                      child: Column(
                        children: [
                          SizedBox.square(
                            dimension: 100,
                            child:  Image.network(state.products[index].image)
                            
                          ),
                          
                        ],

                      )
                    ),
                  );
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
