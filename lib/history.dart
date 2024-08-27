import 'package:flutter/material.dart';



// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Image List App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         visualDensity: VisualDensity.adaptivePlatformDensity,
//       ),
//       home: ImageListScreen(),
//     );
//   }
// }

class HistoryScreen extends StatelessWidget {
  final List<Map<String, String>> images = [
    {'name': 'Elmina Castle', 'url': 'assets/Elmina castle.jpg','description':"""Almina castle 

Elmina Castle, officially known as São Jorge da Mina or St. George of the Mine Castle, is a historic castle located on the coast of the Central Region of Ghana. It was built by the Portuguese in 1482, making it the first European colonial building in sub-Saharan Africa. The castle was originally constructed to serve as a trading post for gold, which was abundant in the region and highly sought after in Europe. The name "Elmina" is derived from the Portuguese word "mina," meaning "mine," reflecting its association with gold mining.

Over the centuries, Elmina Castle became a central hub in the transatlantic slave trade. The Portuguese, followed by other European powers such as the Dutch, the Swedes, and the British, used the castle to imprison and transport enslaved Africans to the Americas. The castle's strategic location made it a key fortification in the control of the West African coast, and it played a pivotal role in the economic and political dynamics of the region.

The architecture of Elmina Castle is a blend of European and African styles, reflecting its long history and the various cultures that have influenced it. The castle's design includes features such as thick walls, narrow windows, and a central courtyard, which were typical of European fortifications but adapted to the local climate and conditions.

Today, Elmina Castle is a UNESCO World Heritage Site and serves as a museum and a memorial to the victims of the slave trade. It houses exhibits that detail the history of the transatlantic slave trade, the lives of the enslaved people, and the struggle for independence. The castle's dungeons, where captives were held before being transported to the Americas, are a powerful and moving experience for visitors.

Elmina Castle is not only a historical landmark but also a symbol of the resilience and strength of the African people. It stands as a testament to the impact of the slave trade on the continent and the diaspora, and it continues to educate and inspire visitors from around the world."""},
  
  
    {'name': 'Kwame Nkrumah Memoty Park', 'url': 'assets/memoral park.jpg', 'description': """The Kwame Nkrumah Memorial Park is a significant historical site located in Accra, the capital city of Ghana. It was established in memory of Kwame Nkrumah, Ghana's first President and a pivotal figure in the fight for independence from British colonial rule. Nkrumah is widely regarded as one of the founding fathers of African nationalism and Pan-Africanism.

The park is situated near the center of Accra, close to the Independence Square, which itself commemorates Ghana's independence from Britain on March 6, 1957. Nkrumah played a crucial role in achieving this independence, and his efforts and vision for a united Africa have left a lasting legacy.

The memorial park features a mausoleum that houses the tomb of Kwame Nkrumah, allowing visitors to pay their respects. The architecture of the mausoleum is notable, combining modern design with traditional Ghanaian elements, reflecting Nkrumah's vision for a modern yet authentically African nation.

In addition to the mausoleum, the park contains statues, memorials, and educational exhibits that detail the life of Kwame Nkrumah and the history of Ghana's struggle for independence. It serves as an important site for both Ghanaians and international visitors, offering a place for reflection on the themes of freedom, leadership, and the pursuit of Pan-African unity.

The Kwame Nkrumah Memorial Park is not only a tribute to a great leader but also a symbol of Ghana's rich history and the ongoing quest for African solidarity and progress. It stands as a reminder of the sacrifices made for independence and the enduring hope for a bright future for Africa."""},
    {'name': 'Kakum National Park', 'url':'assets/kakum park.jpg', 'description':"""Kakum National Park is a renowned protected area located in the Central Region of Ghana. Established in 1991, it covers an area of approximately 375 square kilometers and is known for its rich biodiversity, lush rainforest, and the remarkable Kakum Canopy Walkway.

The park is a critical habitat for a wide range of flora and fauna, including over 40 different mammal species, such as the African forest elephant, the Mona monkey, and the endangered Diana monkey. Kakum is also home to more than 250 bird species, making it a paradise for birdwatchers. The diverse ecosystem supports a variety of plant life, contributing to the park's status as an important ecological reserve.

One of the most popular attractions in Kakum National Park is the Canopy Walkway, which consists of a series of suspension bridges connecting seven platforms high above the forest floor. This unique feature allows visitors to experience the rainforest from a different perspective, offering breathtaking views of the treetops and the opportunity to observe wildlife and birdlife up close.

In addition to the Canopy Walkway, Kakum National Park offers various activities such as guided nature walks, bird watching tours, and educational programs that highlight the importance of conservation and sustainable tourism. The park also provides facilities for visitors, including camping sites and picnic areas, making it an accessible destination for both local and international travelers.

Kakum National Park plays a vital role in the conservation of Ghana's natural heritage, serving as a sanctuary for endangered species and a living laboratory for scientific research. It also contributes to the local economy through eco-tourism, promoting environmental awareness and sustainable development."""},
 
 
    {'name': 'Independent Arch', 'url': 'assets/Independent Arch.jpg', 'description':"""The Independence Arch, officially known as the Black Star Square, is an iconic monument located in Accra, the capital city of Ghana. It was built to commemorate Ghana's independence from British colonial rule on March 6, 1957. Ghana was the first sub-Saharan African country to achieve independence, making this event a pivotal moment in the history of African decolonization.

The Independence Arch is situated at the eastern end of the Accra's principal coastal avenue, the Atlantic Boulevard, and is part of the larger Independence Square complex. The arch is a prominent feature of the square, standing as a symbol of freedom and the struggle against colonialism. It is designed in the shape of an arch, with two main pillars supporting a lintel, and it incorporates the Ghanaian flag and the national symbol, the black star, which is also featured on the flag.

The black star symbolizes the guiding light that led Ghana and other African countries to independence. It is a powerful emblem of the Pan-African movement, representing the unity and aspirations of African peoples for freedom and self-determination.

The Independence Arch is not only a historical monument but also a venue for national celebrations, parades, and other public events. It serves as a reminder of Ghana's role in the history of African independence and continues to inspire visitors with its historical significance and architectural beauty.

In addition to its historical value, the Independence Arch is an important tourist attraction in Accra, drawing visitors who are interested in learning about Ghana's role in the struggle for African independence and its place in the broader history of the continent.""" },
  
  
    {'name': 'Cape Coast Castle', 'url':  'assets/cape cost caslte.jpg','description':"""Cape Coast Castle, located in the Central Region of Ghana, is a significant historical landmark that serves as a poignant reminder of the transatlantic slave trade. It was originally built by the Portuguese in 1482 as a fortress named São Jorge da Mina (St. George of the Mine), to control the gold trade. Over the centuries, the castle changed hands among various European powers, including the Dutch and the Swedes, before being captured by the British in 1664.

The British East India Company extensively expanded the structure, transforming it into a major hub for the slave trade. The castle, along with other forts and castles along the Ghanaian coast, became a critical part of the infrastructure that facilitated the transportation of enslaved Africans to the Americas and Europe. It is estimated that over 10 million Africans were taken from these forts and castles to the New World.

Cape Coast Castle's architecture is a blend of European and African influences, with its design reflecting its dual purpose as both a trading post and a defensive fortification. The castle's interior contains dungeons where captured Africans were held before being shipped across the Atlantic. These dungeons, along with the "Door of No Return," through which slaves were led to the ships, are powerful symbols of the inhumanity of the slave trade.

In 1979, Cape Coast Castle was designated as a UNESCO World Heritage Site as part of the "Fortifications of Volta, Greater Accra, Central and Western Regions – Ghana" group. Today, the castle serves as a museum and a memorial to the victims of the slave trade. It is a place of pilgrimage for people of African descent from around the world, offering a space for reflection, education, and remembrance.

The castle also plays a crucial role in Ghana's Pan-African initiative, "Year of Return," which encourages the African diaspora to visit Ghana and explore their roots. Through its history and ongoing legacy, Cape Coast Castle stands as a testament to the resilience of the human spirit and the importance of understanding and learning from the past.""" },


    {'name': 'Larabanga mosque', 'url':  'assets/larabanga mosque.jpg', 'description':"""The Larabanga Mosque, located in the small town of Larabanga in the Northern Region of Ghana, is a significant historical and cultural landmark. It is widely recognized as the oldest mosque in Ghana and one of the oldest in West Africa, with its origins dating back to the 1420s. This makes it a crucial site for understanding the spread of Islam in the region and the architectural styles that characterized early Islamic buildings in West Africa.

The mosque is a prime example of Sudano-Sahelian architectural style, characterized by its mudbrick construction and towering minaret. This style is adapted to the hot, dry climate of the Sahel, with thick walls that provide insulation and a flat roof. The Larabanga Mosque's design is simple yet elegant, with intricate wooden doors and windows that add to its aesthetic appeal.

Despite its age, the Larabanga Mosque remains an active place of worship, serving the local Muslim community. It is also a popular destination for tourists and scholars interested in West African history, architecture, and religion. The mosque's continued use and preservation reflect the community's commitment to maintaining its cultural and religious heritage.

The Larabanga Mosque is not only a testament to the enduring presence of Islam in West Africa but also a symbol of cultural continuity and adaptation. It stands as a bridge between the past and the present, offering insights into the region's historical, religious, and architectural developments."""},



 {'name': 'Nzulenzu', 'url':  'assets/nzulenzu.jpg', 'description':"""Nzulezu, also spelled as Nzulezo, is a remarkable village located in the Jomoro District of the Western Region of Ghana. What makes Nzulezu unique is that it is built entirely on stilts over the Nzule River, a tributary of the Pra River. This distinctive feature makes it one of the most unusual and fascinating settlements in Ghana.

The village is inhabited by the Nzema people, who are known for their rich cultural heritage and unique way of life adapted to their aquatic environment. The houses in Nzulezu are constructed on wooden stilts driven into the riverbed, with bridges connecting the various structures. This architectural style not only protects the inhabitants from flooding but also from wildlife, including crocodiles, which are considered sacred by the Nzema people and are often seen in the river below the village.

Life in Nzulezu revolves around the river, which is central to the community's economy, culture, and daily activities. Fishing is a primary occupation for the villagers, and the river also plays a crucial role in their social and religious ceremonies.

Nzulezu has gained attention as a tourist destination, attracting visitors interested in experiencing this unique way of life and learning about the Nzema culture. The village offers a glimpse into a lifestyle that harmoniously blends with nature, showcasing the adaptability and ingenuity of the Nzema people.

Despite its allure, Nzulezu faces challenges related to its unique environment, including vulnerability to weather conditions and the need for sustainable tourism practices to preserve the village's cultural integrity and natural surroundings."""


 },{'name': 'Mole National Park', 'url':  'assets/mole.jpg', 'description':"""Mole National Park, located in the West Gonja District of the Northern Region in Ghana, is the largest wildlife reserve in the country, covering an area of approximately 4,840 square kilometers. Established in 1958, it is renowned for its diverse wildlife, lush savannah landscapes, and as a critical conservation area in West Africa.

The park is home to a variety of wildlife, including over 90 mammal species and more than 300 bird species. Some of the notable animals found in Mole include the African elephant, the African buffalo, the waterbuck, the kob, the warthog, and several primate species such as the olive baboon and the black-and-white colobus monkey. Mole is also one of the few places in West Africa where the endangered African wild dog can be seen.

Birdwatching is a popular activity in the park, attracting enthusiasts with the opportunity to observe species such as the white-backed vulture, the saddle-billed stork, and the yellow-billed oxpecker. The park's varied habitats, including grasslands, woodlands, and riparian zones, support this rich biodiversity.

Mole National Park offers several activities for visitors, including game drives, nature walks, and bird watching tours. One of the most unique experiences is the opportunity to go on guided walks with rangers, which allows visitors to observe wildlife up close in a safe and controlled manner.

Conservation efforts in Mole National Park focus on protecting the wildlife and their habitats, as well as addressing challenges such as poaching, human-wildlife conflict, and habitat loss. The park plays a vital role in the conservation of West Africa's wildlife and serves as an important ecotourism destination, contributing to the local economy and providing educational opportunities about the importance of conservation.

Mole National Park is not only a sanctuary for wildlife but also an area of significant cultural interest, with the park lands being inhabited by several ethnic groups who have traditional rights to use the resources within the park. This coexistence of wildlife conservation and local communities highlights the complexities and challenges of conservation in Africa."""
 },

 {'name': 'Kintampo Water Fall', 'url':  'assets/kintampo.jpg', 'description':"""Kintampo Waterfalls, also spelled as Kintapo or Kitampo, is a stunning natural attraction located in the Brong-Ahafo Region of Ghana, now part of the Bono East Region. This picturesque site is renowned for its scenic beauty and refreshing waters, making it a popular destination for both locals and tourists seeking a connection with nature.

The waterfalls are situated along the Black Volta River (also known as the Mouhoun River), which is one of the three major tributaries of the Volta River. The falls consist of a series of cascades that drop over a distance of about 70 feet (21 meters), creating a spectacular sight and a soothing sound that adds to the tranquility of the location.

Visitors to Kintampo Waterfalls can enjoy various activities such as swimming in the natural pools formed by the falls, hiking around the surrounding lush vegetation, and simply relaxing in the serene environment. The area around the waterfalls is also rich in biodiversity, offering opportunities for bird watching and observing other wildlife.

The best time to visit Kintampo Waterfalls is during the rainy season when the water flow is at its strongest, enhancing the beauty and power of the falls. However, it's also a popular destination year-round due to its natural appeal and the refreshing respite it offers from the heat.

Kintampo Waterfalls is not only a beautiful natural attraction but also an important site for the local community and a symbol of Ghana's diverse landscapes and natural wonders. It serves as a reminder of the country's rich environmental heritage and the importance of preserving such sites for future generations.r"""
 },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image List'),
      ),
      body: ListView.builder(
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(images[index]['url']!),
              title: Text(images[index]['name']!),
              trailing: Icon(Icons.favorite_border),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImageDetailScreen(
                      name: images[index]['name']!,
                      imageUrl: images[index]['url']!,
                      description: ' ${images[index]['description']}.',
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class ImageDetailScreen extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String description;

  ImageDetailScreen({
    required this.name,
    required this.imageUrl,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(imageUrl),
              SizedBox(height: 16),
              Text(
                name,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              Text(
                description,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Icon(Icons.favorite_border, size: 30),
            ],
          ),
        ),
      ),
    );
  }
}