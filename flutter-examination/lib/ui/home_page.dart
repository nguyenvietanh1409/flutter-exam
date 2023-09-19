import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/app_cubit.dart';
import 'package:untitled/cubit/app_cubit_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    context.read<AppCubits>().loadHomePage();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: size.width * .3,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        child: const Center(
                          child: Icon(Icons.person, color: Colors.lightBlue,),
                        ),
                      ),
                      const Text('Hotel', textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 20
                      ),)
                    ]
                  ),
                  Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: size.width * .3,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Icon(Icons.person, color: Colors.lightBlue,),
                          ),
                        ),
                        const Text('Hotel', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 20
                        ),)
                      ]
                  ),
                  Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: size.width * .3,
                          height: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(
                            child: Icon(Icons.person, color: Colors.lightBlue,),
                          ),
                        ),
                        const Text('Hotel', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 20
                        ),)
                      ]
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: const Text('Popular Destination', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600
              ),),
            ),
            const SizedBox(
              height: 10,
            ),
            BlocBuilder<AppCubits, CubitStates>(
              builder: (context, state) {
                if (state is HomePageState) {
                  var places = state.places;
                  return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount (
                      crossAxisCount: 2,
                    ),
                    itemCount: places.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Container(
                        width: size.width * 0.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(places[index].image),
                            fit: BoxFit.cover
                          ),
                        ),
                        child: Stack(
                          children: [
                            const Positioned(
                              top: 20,
                              right: 20,
                              child: Icon(Icons.favorite, color: Colors.red,)
                            ),
                            Positioned(
                              top: 50,
                              left: 20,
                              child: Text(places[index].name)
                            ),
                            Positioned(
                              top: 70,
                              left: 20,
                              child: Container(
                                color: Colors.white.withOpacity(0.8),
                                child: Row(
                                  children: [
                                    Text(places[index].rate as String),
                                    const Icon(Icons.star)
                                  ],
                                ),
                              )
                            )
                          ],
                        ),
                      );
                    }
                  );
                }
                return const Center(
                  child: Text('no data'),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
