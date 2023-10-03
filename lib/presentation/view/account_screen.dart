import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hotel_app/data/remote_data/fetch_data.dart';

import '../../domain/hotel_model.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: FetchData().get(),
              builder: (BuildContext context, AsyncSnapshot<HotelModel> snapshot) {
                if(snapshot.connectionState==ConnectionState.done){
                  return Column(
                    children: [
                      SizedBox(
                        child: CachedNetworkImage(
                          imageUrl: snapshot.data!.at!.lastMinuteDealsCardImageUrl??'',
                          placeholder: (context, url) => const CircularProgressIndicator(),
                          errorWidget: (context, url, error) => const Icon(Icons.error),
                        ),
                      ),

                    ],
                  );
                }else{
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
              },
            ),
            Text(
              'Hello Json',
              textAlign: TextAlign.left,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,

              style: TextStyle(
                  letterSpacing: 1,
                  shadows: const [
                    Shadow(
                      color: Colors.red,
                      blurRadius: 4,
                      offset: Offset(1, 5)
                    )
                  ],
                  decoration: TextDecoration.combine([
                    TextDecoration.underline,
                    TextDecoration.overline
                  ]),
                  decorationColor: Colors.yellow,
                  decorationStyle: TextDecorationStyle.dashed,
                  decorationThickness: 2,),

            ),
          ],
        ),
      ),
    );
  }
}
