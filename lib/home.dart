import 'package:ambaji/bottomsheet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Petrotic Yatra",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            onPressed: () => showModalBottomSheet(
                context: context, builder: (context) => BottomSheetClass()),
          ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
            onPressed: () => showModalBottomSheet(
                context: context, builder: (context) => BottomSheetClass()),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Welcome,",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w700)),
                        Text("Ambaji Mandir",
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Raleway',
                                fontWeight: FontWeight.w500)),
                      ]),
                ),
              ),
              Container(
                height: 180,
                child: StoryMode(),
              ),

              //F3AA63
              
              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xffF3AA63),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('About & History of Ambaji Temple'),
                        subtitle: Text(
                            'Ambaji is an important temple town with millions of devotees visiting the Ambaji temple every year. It is one of the 51 Shakti Peethas. Ambaji Mata temple is a major Shakti Peeth of India. It is situated at a distance of approximately 65 kilometres from Palanpur, 45 kilometres from Mount Abu, and 20 kilometres from Abu Road, and 185 kilometres from Ahmedabad, 50 kilometers from Kadiyadra near the Gujarat and Rajasthan border.In the holy temple of "Arasuri Ambaji", there is no image or statue of goddess the holy "Shree Visa Yantra" is worshiped as the main deity. No one can see the Yantra with naked eye. The photography of the Yantra is prohibited. The Arasuri Ambe Mata or Arbuda Mataji is kuldevi of Barad Parmaras. The one Parmar state is located near the ambaji town I.e.Danta and which also serves as capital of whole parmar clan.'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xff6A58F5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Aarti & Darshan'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xffED6B65),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Bhakti Player'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Card(
                  color: Color(0xff5572F6),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      const ListTile(
                        title: Text('Contact Us'),
                        subtitle: Text(
                            'Music by Julie Gable. Lyrics by Sidney Stein.'),
                      ),
                      ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text(
                              'Know more',
                              style: TextStyle(color: Colors.black),
                            ),
                            onPressed: () {/* ... */},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StoryMode extends StatefulWidget {
  @override
  _ListCount createState() => _ListCount();
}

class Piths {
  String image;
  String name;
  String location;
  String description;

  Piths(String image, String name, String location, String description) {
    this.image = image;
    this.name = name;
    this.location = location;
    this.description = description;
  }
}

class _ListCount extends State<StoryMode> {
  List<Piths> piths = new List();

  _ListCount() {
    piths.add(Piths(
      "assest/pm.png", "Ambaji Temple", "Ambaji","The shrine of Shri Amba is regarded as a revered shrine by the Shakta Shaktism sect of Hinduism. It is believed that the Heart of Sati Devi has fallen here. The origin of the Shakti Peetha status temple is from the mythology of Daksha yaga and Sati's self immolation. Shakti Peethas were believed to have been formed when the body parts of the corpse of Sati Devi fell into different regions when Lord Shiva carried her corpse in sorrow after her death. The shrines are considered as highly revered by Shaivist (Shaivism) sect in Hinduism. The Shakti Peethas are mostly worshiped by tantra practitioners."));
    piths.add(Piths(
        "assest/images/ALAMPUR JOGULAMBA TEMPLE.jpg", "ALAMPUR JOGULAMBA TEMPLE", "Kanchipuram", "The Goddess Kamakshi prevails in the form of Shakti. There are 51 Shakti Peetas across the country. The goddess residing place in Kanchi is called as “Nabisthana Ottiyana Peetam”. The Goddess is called as “Sri Kamakshi. The word is derived from the heritage “Ka” means Goddess Saraswati (God of Education), “Ma” means Goddess Lakshmi (God of Wealth), “Akshi” means Eye. The name as a whole refers as the god lives in Kanchi with Goddess Saraswati and Goddess Lakshmi as her both eyes. The Lalitha Sahasranama poem is an idle example for the goddess power."));
    piths.add(Piths(
        "assest/images/TRIPURA SUNDARI TEMPLE.jpg", "TRIPURA SUNDARI TEMPLE", "TRIPURA", "Tripura Sundari Temple is situated in the ancient Udaipur, about 55 km from Agartala, believed to be one of the holiest Hindu shrines in this part of the country. Popularly known as Matabari, crowns in a small hillock and is served by the red-robed priests who traditionally, minister to the mother goddess Tripura Sundari. Considered to be one of the 51 Shakti Peethas, consists of a square type sanctum of the typical Bengali hut. It is believed that Sati’s right foot fell here during Lord Shiva’s Nataraj Dance."));
    piths.add(Piths(
        "assest/image/PURNAGIRI DEVI TEMPLE.jpg", "PURNAGIRI DEVI TEMPLE", "Champawat", "Purnagiri Devi Temple is one of the 52 Shakti Peethas. It is situated at a distance of 20kms from Tanakpur, on the right bank of the river Kali in the district of Champawat. A three km track leads from Tunyas( 17km from Tunakpur) to the Purnagiri temple. It is dedicated to goddess Purnagiri Devi. During the navratras devotees tie a thread to take a wish. If their wish gets fulfilled, the pilgrims come back and untie the threads."));
    piths.add(Piths(
        "assest/images/SURKANDA TEMPLE.jpg", "SURKANDA TEMPLE", "Tehri", "Surkanda Devi is a Hindu temple situated close to the small resort hamlet of Dhanaulti in Tehri District. It is at an altitude of about 2,757 metres; lies close to nearby hill stations of Dhanaulti (8 km) and Chamba(22 km)& walking distance of approximately 3 km from Kaddukhal, the place where vehicles are parked. It is surrounded by dense forests and affords a scenic view of the surrounding region including the Himalayas to the north, and certain cities to the south. The Ganga Dussera festival is celebrated every year between May and June and attracts a lot of people."));
    piths.add(Piths(
        "assest/images/PATAN DEVI TEMPLE.jpg", "PATAN DEVI TEMPLE", "Patna", "The Bari Patan Devi Temple, Patna is facing the North, towards the Ganges river. The statues of the temple are all made up in black stone. At the entrance of the temple, there is a portico. After that, there is a room for gods namely, Mahakali, Maha Lakshmi, Maha Saraswati and Bhairav. All the idols are kept on simhasans (thrones) of about 4 squares in cross section and have a height of about 7 feet. First three goddesses are attired in sarees."));
    piths.add(Piths(
        "assest/images/NAINA DEVI TEMPLE.jpg", "NAINA DEVI TEMPLE", "Nainital", "The first structure made on the upper edge of the lake Naini on Naina Hillock was destroyed by a landslip in 1880. The destroyed structure was replaced by what stands there today as Naina Devi Temple. It is one of the most revered Hindu temples in India. Once a devotee reaches the top of the hill, he can buy prasad from any of various stalls put up. They can also bring offerings from home. After crossing the main gate, a big peepal tree stands on the left. On to the right, one will find idols of Hanuman and Ganesh."));
    piths.add(Piths(
        "assest/images/MANSA DEVI TEMPLE.jpg", "MANSA DEVI TEMPLE", "Haridwar", "Mansa Devi Temple, Haridwar is a Hindu temple dedicated to Goddess Mansa Devi in the holy city of Haridwar in the Uttarakhand state of India. The temple is located atop the Bilwa Parvat on the Sivalik Hills, the southernmost mountain chain of the Himalayas. The temple also known as Bilwa Tirtha is one of the Panch Tirth (Five Pilgrimages) within Haridwar."));
    piths.add(Piths(
        "assest/images/MANGLA GAURI TEMPLE.jpg", "MANGLA GAURI TEMPLE", "Gaya", "The Mangla Gauri Temple in Gaya, Bihar, India has been mentioned in Padma Purana, Vayu Purana and Agni Purana and in other scriptures and tantric works. This temple is among the eighteen maha shakti Peeth. The present temple dates back to 15th century. The shrine is dedicated to Shakti or the mother Goddess in the predominantly Vaishnavite pilgrimage center of Gaya. Mangalagauri is worshiped as the Goddess of benevolence. This temple constitutes an Upa-Shakti Pitha — where it is believed that a part of the body of Shakti fell according to mythology."));
    piths.add(Piths(
        "assest/images/HARSIDHHI TEMPLE.jpg", "HARSIDHHI TEMPLE", "Ujjain", "Harsidhhi, a contracted form of “Harshad Amba” – The Happy Mother, is considered as one of the aspects of Amba and Kalika, the Hindu Devi. She is also known by the names like Harshal, Harshad, Harshat, Shikotar, Sikotar, Dasha, Momai and Vahanvati Mata. She is also known as Sindhoi Mata or Goddess of Sands, in Sindh in Pakistan, where her temple is located. Harshidhhi Mata Temple also known as Harshal Mata Temple is located at a place called Miani, some 30 km away from Porbandar en route to Dwarka."));
    piths.add(Piths(
        "assest/images/CHANDRABADANI TEMPLE.jpg", "CHANDRABADANI TEMPLE", "Sabdarkhal", "Chandrabadani is a mountain (2,277m above sea-level) on the border of tahsil Devaprayag and Pratapnagar. It is well known for the temple of Chandrabadni Devi, lying at the top of the mountain about 10 km. north of Kandi Khal, a place on the Devaprayag-Kirti Nagar. The place commands a beautiful view of the Surkanda, Kedarnath and Badrinath peaks. The temple is very small and contains a Shri-yantra carved out on a flat stone instead of any idol. The Chandrabadani Temple is dedicated to the Goddess of power. Apart from the temple, this place offers breathtaking views of snow-capped Himalayan peaks like Kedarnath, Badrinath and so on."));
    piths.add(Piths(
        "assest/images/MAYA DEVI TEMPLE.jpg", "MAYA DEVI TEMPLE", "Haridwar", "Maya Devi Temple is an ancient religious establishment of Haridwar which is counted as one of the shakti peeths present in India. The temple of Maya Devi falls is enshrined with the deity of Adhisthatri. The history of religion in Haridwar speaks of a rather interesting part of the Maya Devi Temple. Maya Devi Temple, Haridwar is a Hindu Temple dedicated to goddess Maya in the holy city of Haridwar of Uttarakhand State in India. It is believed that the heart and navel of goddess Sati fell in the region where the temple stands today and thus it is sometimes referred to as a Shakti Peetha. Goddess Maya is the Adhisthatri deity of Haridwar. She is a three-headed and four-armed deity who is believed to be an incarnation of Shakti. "));
    piths.add(Piths(
        "assest/images/SHITLA MATA MANDIR.jpg", "SHITLA MATA MANDIR", "Patna", "Shitla Mata Mandir or Shitla Devi Mandir is situated at Patna City. This is a place for worship of Mata Durga also known as shakti peeth of Maa Durga. Shitla Mata Temple is located at Main market near Tower Chowk, Deoghar. Devotees come here and sit for hours in its premises. The temple has less height but idols are ancient. It is believed that incurable diseases are cured if one worships here with heart. Every year in the month of Chaita (April), Shitla Puja celebration takes place with great pomp and show."));
    piths.add(Piths(
        "assest/images/KANKALI DEVI TEMPLE.jpg", "KANKALI DEVI TEMPLE", "Tigawa", "The Kankali Devi Temple is often referred to as the Tigawa temple. It is one of the oldest temples of Devi Kali Maa known as one of the Shaktipeeth among Hindu pilgrims. Being so old it is one of the centers of devotion for Hindus. In Shardey Navratri and Chaitra Navratri peoples from all over the country came for Pooja & Darshan. There is one special thing about the statue of Maa Kali, during Navratri the neck of Maa Kali’s statue is slightly tilted from its original position. It is approximately 20Km from Bhopal."));
    piths.add(Piths(
        "assest/images/SHRI SHEETALA MATA MANDIR.jpg", "SHRI SHEETALA MATA MANDIR", "Gurgoan", "Shri Sheetala Mata Mandir (Masani Temple)also referred as ‘Shakti Peeth’ is a well known temple located one and a half kilometers in the suburbs of Gurgoan near a beautiful pond. The presiding deity of the temple is Shri Mata Sheetla Devi also known by the names Bhagat Lalita Ma and Masani Ma is the incarnation of Goddess Durga. The word Sheetala refers to the disease smallpox and it is believed that the person’s suffering from this disease will be surely recovered by praying to Sheetla Devi . The statue of the deity, weighing 4kg is made up of mixed metal with gold polish and is kept in a wooden casket which is in turn placed on a small marble platform in the temple."));
    piths.add(Piths(
        "assest/images/CHANDIKA STHAN.jpg", "CHANDIKA STHAN", "Munger", "Chandika Sthan is a Hindu temple situated in Munger, in the Indian state of Bihar. It is one of the sixty-four Shakti Peethas, places of worship consecrated to the goddess Shakti. On the Northeast corner of Munger, Chandika Sthan is just two kilometers away from the Munger town. Being a Siddhi-Peetha, Chandika Sthan is considered to be one of the most sacred and sanctified temples, as important as the Kamakshya temple near Guwahati."));
    piths.add(Piths(
        "assest/images/VINDHYAVASINI.jpg", "VINDHYAVASINI", "Vindhyachal", "The goddess gets her name from Vindhya Range and the name Vindhyavasini, literally means, she who resides in Vindhya. As it is believed that the Shaktipeeths were created on earth, where the body parts of Sati fell. But Vindhayachal is the place and a Shaktipeeth, where the Devi had chosen to reside after her birth. At the time of the birth of Krishna as 8th Child of Devaki-Vasudeva, Maha-Yogini Mahamaya has taken birth at same time at Nanda-Yashoda and as per the instruction from God Vishnu, Vasudev had replaced Krishna with this girl child of Yashoda. "));
    piths.add(Piths(
        "assest/images/CHAMUNDESHWARI TEMPLE.jpg", "CHAMUNDESHWARI TEMPLE", "Chamundi Hill", "The Chamundeshwari Temple is located on the top of Chamundi Hills about 13 km from the palace city of Mysore in the state of Karnataka in India. The temple was named after Chamundeshwari or Durga, the fierce form of Shakti, a tutelary deity held in reverence for centuries by Mysore Maharajas.The Chamundeshwari Temple is considered as a Shakti Peetha and one among the 18 Maha Shakti Peethas. It is known asKrouncha Pitham as the region was known in Puranic times as Krouncha Puri. The origin of Shakti Peethas is associated to the mythology of Daksha yaga and Sati’s self immolation.Shakti Peethas are divine seat of Shakti due to the falling of body parts of the corpse of Sati Devi, when Lord Shiva carried it and wandered in sorrow. There are 51 Shakti Peeth linking to the 51 alphabets in Sanskrit. Each temple have shrines for Shakti and Kalabhairava. The Hair of Sati Devi is said to have fallen here, the Shakti is addressed as Chamundeshwari Devi."));
    piths.add(Piths(
        "assest/images/KATYAYANI PEETH VRINDAVAN.jpg", "KATYAYANI PEETH VRINDAVAN", "Vrindavan", "Katyayani Peeth Vrindavan otherwise known as uma shakti peeth is one among the 51 Shakti Peethas. It is said that, the Ringlets of Hair of Maa Sati fell here, when lord Vishnu in order to relieve lord Shiva from grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise Maa Sati Body. Here the idol of Maa Sati is called as ‘Uma’ and lord Shiva is worshiped as ‘Bhotesh’.The most significant thing about this temple is that here five separate deities of the five sects, or sampradayas are worshipped. Each idol is worshipped by the sampradaya’s different worship methodology. Also, the Ashtadhatu idol of Goddess Katyayani, was installed after the performance of Sanatan Dharm rites by religious scholars or pandits from Varanasi, Bengal, etc. Along with the goddess Katyayani ,(Shakt sampradaya) other idols installed are, Lord Shiva (Shaiv sampradaya), Lord Laxmi Naarayan (Vaishnav sampradaya), Lord Ganesh (Ganpataya sampradaya), Lord Surya (Surya Sampradaya)."));
    piths.add(Piths(
        "assest/images/PURUHUTIKA DEVI TEMPLE.jpg", "PURUHUTIKA DEVI TEMPLE", "Pithapuram", "Located 20 Km from Kakinada and 75 Km from Rajahmundry, It is considered to be one of the 18 Shakthipithas in India. It is famous for the temples of Kukkuteshwara Swamy, Kunthimadhava Swamy and Sri Pada Vallabha Anaagha Datha Kshethram, Agraharam, Sri Venu Gopala Swamy Temple. Once you enter into the temple, complete the pradishana and come in front of Dwaja Stamba you will be attracted by the “Yaka Sila Nandi (Single Stone Nandi). The Yaka Sila is second biggest after Lepakshi Basaveswara Nandai.Pithapuram is one of the oldest and famous pilgrim places of India. There is an oldest temple call “Padagya Keshatram in Pithapuram. The Lord “Sri Kukuteswara Swamy is the Swayambhu with Spatika Lingam”. Pithapuram is one of the Twelve Pilgrims, one of the five Madava Keshatra and one of the Asta Dasa (Eighteen) Sakthi Petas. Previously Pithapuram is known as Pitikapuram."));
    piths.add(Piths(
        "assest/images/ALAMPUR JOGULAMBA TEMPLE.jpg", "ALAMPUR JOGULAMBA TEMPLE", "Alampur", "Alampur is a sleepy town situated on the banks Tungabhadra River, in the state of Telangana. Alampur is considered as the western gateway of Srisailam. Here the marvelous temple and remains of some ancient temple signify Badami Chalukyan architecture. The region was ruled by many South Indian dynasties. The principal deities at the Jogulamba temple are Jogulamba and Balabrahmeshwara. Goddess Jogulamba is considered the 5th Shakti Peetha among 18 shakti peetams in the country. Here Goddess Jogulamba is seen seated on the Corpse with scorpion, frog, and lizard on the head. She is seen in a naked avatar with her tongue stretched outside, an avatar of fierce goddess that grants Siddhi in Yoga and hence called Jogulamba. This word is a changed form of Yogula Amma in Telugu which means Mother of Yogis."));
    piths.add(Piths(
        "assest/images/SAPTASHRUNGI DEVI TEMPLE.jpg", "SAPTASHRUNGI DEVI TEMPLE", "Nashik", "Saptashrungi is a site of Hindu pilgrimage situated 60 kilometres (37 mi) from Nashik in West Indian state of Maharashtra in India. According to Hindu traditions, the goddess Saptashrungi Nivasini dwells within the seven mountain peaks. (Sapta means seven and shrung means peaks.) It is located in Nanduri, Kalwan taluka, a small village near Nashik in India. Devotees visit this place in large numbers every day. The temple is also known popularly as one of the “three and half Shakti Peethas” of Maharashtra. The temple is also one among the 51 Shakti Peethas located on the Indian subcontinent and is a location where one of Sati’s (first wife of Lord Shiva) limbs, her right arm is reported to have fallen."));
    piths.add(Piths(
        "assest/images/PURUHUTIKA DEVI TEMPLE, EAST GODAVARI.jpg", "PURUHUTIKA DEVI TEMPLE, EAST GODAVARI", "Pithapuram", "Sri Puruhutika Devi temple is an important Ashta Dasha Shakthi Peetha. Devi Sati is worshipped as Puruhutika and Lord Shiva as Kukkuteswara Swamy. It is believed that the Seat of Sati devi had fallen here when Lord Vishnu cut her corpse with the Sudarshana Chakra.Sri Puruhutika Devi temple is located within the temple complex of Kukkuteswara Swamy, on the outskirts of the village Pithapuram in East Godavari district, Andhra Pradesh. Pithapuram is around 12 kms from Samalkota and 20 kms from Kakinada and 62 kms from Rajahmundry.On entering the temple there is a pond which is called as Padagaya sarovaram (Pada Gaya Sarovar). Pilgrims take holy bath in this pond. Main temple of Kukkuteswara swamy is present towards the right side of the pond. Puruhutika Devi temple is present in the North-East corner of the Kukkuteswara swamy temple. It is constructed facing south. Puruhutika Devi temple is small in size but looks very nice with the carvings of Ashtadasa Shakti peethas on its walls. "));
    piths.add(Piths(
        "assest/images/MAA BIRAJA TEMPLE.jpg", "MAA BIRAJA TEMPLE", "Jajpur", "Maa Biraja Temple is an historic Hindu temples located in Jajpur (about 125 kilometres (78 mi) north of Bhubaneswar), Odisha, India. Biraja or Viraja Temple is one of the important Maha Shakthi Peetas. Here the main idol Durga Devi is worshipped as Girija (Viraja) and Lord Shiva as Jagannath. Sati’s navel fell here. Adi Sankara describes the goddess as Girija in his Ashtadasha shakti peetha stuti. Here Maa Biraja Devi is worshiped as Trishakti Mahakali, Mahalakshmi and Mahasaraswati.The Maa Biraja Temple covers a large area, and has several shrines to Shiva and other deities. According to the Skanda Purana it cleanses pilgrims, and it is called the Viraja or the Biraja kshetra. Jajpur is believed to have about one crore of Shiva lingams."));
    piths.add(Piths(
        "assest/images/BAIDYANATH JAYADURGA SHAKTI PEETH.jpg", "BAIDYANATH JAYADURGA SHAKTI PEETH", "Deogarh", "Jayadurga Temple at Baidyanath is the place where Sati’s Heart had fallen. Here Sati is worshipped as Jai Durga and Lord Bhairav as Vaidyanath or Baidyanath. The Shakthi Peeth is popularly known as Baidyanath Dham or Baba Dham. Since the heart of Sati fell here, the place is also called as Hardapeetha. Lord Bhairav as Vaidyanath is worshipped as one of the important twelve Jyotirlingas.Within the campus, Jayadurga Shaktipeeth is present exactly opposite to the main temple of Vaidyanath. Both the temples are connected by red colored silk threads in their tops. There is a belief that the couple who binds these two tops with the silk will have a happy family life by the blessings of Lord Shiva and Parvathi."));
    piths.add(Piths(
        "assest/images/TRIPURMALINI SHAKTI PEETH.jpg", "TRIPURMALINI SHAKTI PEETH", "Jalandhar", "One of the 52 major Shakti Peethas, the Tripurmalini Shakti Peeth is situated in Jalandhar, Punjab. The Tripurmalini Shakti Peeth is dedicated to Devi Sati or Shakti, who is worshipped by a large number of Hindu devotees. It is believed that Devi Sati’s Left Breast fell here. This Peetha is situated in Jalandhar (1 km from Jalandhar Railway Station) in the state of Punjab in India.Here Sati is called Tripurmalini and Lord Shiva is called Bhishan. The city of Jalandhar is located at Hawrah-Amritsar main line of Indian railways.Different sages like Vashishtha, Vyasa, Manu, Jamdagni, Parshuram etc., worshipped Adhya Shakti here, in the form of Tripura Malini. Shaktipeeth is worshipped for the blessings of son."));
    piths.add(Piths(
        "assest/images/MAA AMBIKA SHAKTIPEETH.png", "MAA AMBIKA SHAKTIPEETH", "Bharatpur", "Maa Ambika Shaktipeeth or Virat Shakti Peeth is among the 51 Shakti Peeth of Maa Sati. It is said that, the left leg Maa Sati fell here, when lord Vishnu in order to relieve lord Shiva from grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise maa Sati Body. Then, at the place of fall of left leg, this temple was constructed. Maa Ambika Shaktipeeth is situated in Bharatpur in Rajasthan, India. Bharatpur is also known as “Lohagarh” and the “Eastern gateway of Rajastan”. The temple is located in Virat village which is 90 km from Jaipur.Here the idol of maa Sati is called as ‘Ambika’ and the lord Shiva is worshipped as ‘Amriteshwar’ (nectar of immortality)."));
    piths.add(Piths(
        "assest/images/VISHALAKSHI TEMPLE.jpg", "VISHALAKSHI TEMPLE", "Mir Ghat", "The Vishalakshi Temple or Vishalakshi Gauri Temple is a Hindu temple dedicated to the goddess Vishalakshi Maa (means wide eyed Devi) at Mir Ghat on the banks of the Ganges at Varanasi in Uttar Pradesh, India. It is generally regarded as a Shakti Pitha, the most sacred temples dedicated to the Hindu Divine Mother. The karna kundala (earring) of the goddess Sati are said to have fallen on this holy spot of Varanasi. Goddess worshiped here as Maa Vishalakshi & Lord Shiva as Kala or Kaal Bhairva.The Vishalakshi Temple have elaborate gopuram (ornamented tower) which rests above the main entrance. Upon closer inspection, one finds lions flanking a door above which is a lovely marble relief depicting the popular goddess, Lakshmi. Here she sits upon a lotus with elephants on opposite sides pouring water over her, forming a composite glyph that represents abundance. This popular representation of the goddess is known as Gajalakshmi."));
    piths.add(Piths(
        "assest/images/SUGANDHA SHAKTI PEETH.jpg", "SUGANDHA SHAKTI PEETH", "Shikarpur", "Sugandha Shakti peeth is a temple dedicated to Goddess Sunanda. It is located in the village of Shikarpur, 10 miles north of Barisal, in Bangladesh. Sugandha Shakti Peeth is one of the 51 Shakti Peethas.It is said that the nose of Maa Sati fell here. The idol of Maa Sati is called as ‘Sunanda’ and lord Shiva is worshipped as ‘Traimbak’. The Bhairav temple is in Ponabalia, located 5 miles south of Jhalkati rail station. Ponabalia is under the village Shamrail situated on the bank of the river Sunanda.The whole complex of the Sugandha shakti peeth is made of stone, with images and statues of gods engraved on them. The sculptures presents are mesmerizing. Shine of the marble the temple is constructed of and its reflection on the water of the river is surely one thing that people do not want to miss out here."));
    piths.add(Piths(
        "assest/images/SHRIPARVATA SHAKTI PEETH.jpg", "SHRIPARVATA SHAKTI PEETH", "Laddakh", "Shriparvata Shakti Peeth is one of the 51 Shakti Peethas where the right anklet of Goddess Sati has fallen. Here the idols are – Devi as Shree Sundari (beautiful) and Lord Shiva as as Sundaranand (the handsome one). The place is situated at Laddakh of Kashmir Valley. Another conviction is – at Shriparvat under Kurnool district, Andhra Pradesh, India.The overall art and architecture of the temple is great. On the side premises there are sculptures various gods and goddesses. In the main sanctorum, lies the idol of Maa Sati. It is always covered with red cloth and idol is made of black stone. Around the idol is the gold dome that covers the idol 2/3 part from above."));
    piths.add(Piths(
        "assest/images/SHONDESH SHAKTI PEETH.jpg", "SHONDESH SHAKTI PEETH", "Amarkantak", "Shondesh Shakti Peeth is among the 51 Shakti Peeth of Maa Sati and is situated in Amarkantak, Madhya Pradesh. It is said that, the Right Buttock of maa Sati fell here, when lord Vishnu in order to relieve lord Shiva from the grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise maa Sati’s Body. Here the idol of maa Sati is called as ‘Narmada’ and lord Shiva is worshipped as ‘Bhadrasen’. This is also the point of origin of the river Naramada and the temple complex also includes the Narmada Udgam temple."));
    piths.add(Piths(
        "assest/images/BHEEMAKALI TEMPLE.jpg", "BHEEMAKALI TEMPLE", "Tamluk village", "Bheemakali Temple or Vibhasha Shakti Peeth is among the 51 Shakti Peeth of Maa Sati, located on the banks of the River Roopnarayana at Tamluk village, Purab Medinipur in West Bengal, India. It is the place where Devi Sati’s left ankle fell. Here Devi is worshipped as Kapalini or Bhimarupa and Lord Shiva as Sarvanand.In the Sanctorum of the temple, there is a large ‘Shiv Ling’ and it is made of black stone. Priest and pilgrims worship here and Ygya are also carried from time to time. All around the ‘Shiv Ling’ is the White marble boundary. The temple is also known as Bheemakali Temple."));
    piths.add(Piths(
        "assest/images/GODAVARI TIR SHAKTI PEETH.jpg", "GODAVARI TIR SHAKTI PEETH", "Rajamundry", "Godavari tir Shakti Peeth or Sarvashail is the famous Shakti Peetha where it is said that the Left Cheek of Maa Sati fell and the idols worshiped at this religious place are Vishweshwari (Vishweshi) or Rakini or Viswamatuka (The mother of the whole world) and Lord Shiva as Vatsnabh or Dandapani (The one who holds a staff). This Shakti Peetha is located at Kotilingeswar temple on the banks of Godavari River near Rajamundry, Andhra Pradesh, India. Godavari Tir Shakti peeth is also known as Sarvashail.Godavaritir or Sarvashail Shakthi Peeth is an ancient temple. The temple’s architecture is splendid. The temple looks massive, as the temple’s gopuram is at a great height. The gopuram has several images of gods and goddess sculpted on it. River Godavari is one of the sacred rivers. Bathing in the River Godavari is said to wash away the sins of the devotees. River Godavari (1465 kms) is the second longest river next only to the River Ganga."));
    piths.add(Piths(
        "assest/images/NANDIKESHWARI TEMPLE.jpg", "NANDIKESHWARI TEMPLE", "Sainthia", "Nandikeshwari temple is located in earlier Nandipur village, which is now a part of Sainthia town, Birbhum district, West Bengal (220 Km from Kolkata). The Sainthia town is located on the bank of river Mayurakshi. According to Hindu scripture Neck lace of Sati fell here. Goddess Shakti is worshipped here as Nandini and Lord Bhairav as Nandikeshwar.The name Sainthia is derived from ‘Sain’, a Bengali term used to refer to an Islamic priest. Sainthia is also known as ‘Nandipur’, after Nandikeshwari Temple."));
    piths.add(Piths(
        "assest/images/CHITRAKOOT SHAKTI PEETH.jpg", "CHITRAKOOT SHAKTI PEETH", "Chitrakoot", "Chitrakoot Shakti Peeth is located in Chitrakoot (Ramgiri) in Uttar Pradesh. Chitrakoot town is home of several ancient temples mentioned in Hindu Scriptures. Chitrakoot area borders Madhya Pradesh and Uttar Pradesh.Shakti Peeth Chitrakoot has been formed as the right breast of Mata Sati had fallen down in this place making is really sacred. According to people with other opinion, Devi’s nala had fall down in this particular place. Nala is known as the bone which of the abdomen of an individual. The idol of Devi over here is known as Shivani and Lord Shiva is known as chanda."));
    piths.add(Piths(
        "assest/images/SAVITHRI SHAKTI PEETH.jpg", "SAVITHRI SHAKTI PEETH", "Thanesar", "One among the 52 Shakti Peethas of Maa Sati, this beautiful Maa Bhagwati’s Temple/ Mandir lays in the opens and calm spiritual surroundings of the Dwaipayan Lake in Thanesar town of District Kurukshetra, Haryana. Maa Bhadrakali’s Shrine is one of the oldest temples of the Ferocious Goddess, Maa Kali.Savithri Shakti Peeth temple is fully dedicated to Badrakhali, a stern form of Shakti. As per the famous Shiva-Sati story, it is alleged that the Right Ankle of Mata Sati fell here in a well in front of this temple. Presently a marble right ankle idol has been placed in front of Maa Kali’s main idol being worshipped by all. This Shaktipeeth is otherwise also refered as Savitripeeth, Devikoop, Kalikapeeth. Over here, Sati is called Savitri and Lord Shiva is called Sthanu Mahadev."));
    piths.add(Piths(
        "assest/images/PRAYAG SHAKTIPEETHS.jpg", "PRAYAG SHAKTIPEETHS", "Prayaga", "The three temples in Prayag Shaktipeeths are considered Shaktipeeths from three dfferent ideas. All the three temples are of mata Sati of Prayag Shaktipeeth. The three temples are Akshaywat, Mirapur and Alopi. It is situated very near to Sangam (confluence) of the three rivers Ganga, Yamuna and Saraswati near Allahabad Fort, in Allahabad, Uttar Pradesh.Prayag Shaktipeeths is considered as one of the Sapta mokshapuras. This place is also called as Theertharaj that means king of all theerthas. In Prayag, the fingers of mata Sati fell. She is also called as Alopi mata / Lalita. Here Lord Shiva is known by the name of Bhav."));
    piths.add(Piths(
        "assest/images/PRABHAS SHAKTI PEETH.jpg", "PRABHAS SHAKTI PEETH", "Veraval", "Prabhas Shakti Peeth is located near Veraval of Junagarh district, Gujarat. It is the place where Sati’s Udara (Stomach) fell. Here the idol of Devi Sati is worshipped as Maa Chandrabhaga (the moon goddess) and Lord Shiva as Vakratunda (one with curved body). Since Devi Sati is worshipped as Maa Chandrabhaga, the Prabhas Shakti Peeth is also known as Chandrabhaga Devi Shakti Peeth.Among the Hindu aficionados, this temple is quite popular and every year people in exorbitant number flock to this part of country to offer their prayers. Those who visit this place get rid of sins of their past. Just adjacent to this temple, famous Somnath temple is also situated."));
    piths.add(Piths(
        "assest/images/PANCHSAGAR SHAKTI PEETH.jpg", "PANCHSAGAR SHAKTI PEETH", "Varanasi", "Panchasagar Shakti Peeth is among the 51 Shakti Peeth of Maa Sati located near Varanasi, Uttar Pradesh where it is said that while Lord Shiva had been carrying the body of Devi Sati with him, Lower teeth of Maa Sati was seen to fall down in this particular sacred place. The idol of Devi Maa is known as Varahi and Lord Shiva was provided the title of Maharudra (The angry one), which means an angry person. The word varahi is known as feminine energy which is in other word known as boar Avatar of Lord Vishnu.The art and architecture of this Shakti Peeth is adorable. The stone that is used in the construction of this Shakti Peeth is really different and the glows when the sunlight falls on it. The enchanting views that is presented by the Shakti Peeth when it image falls in the water body, that is located just adjacent to it are mesmerizing."));
    piths.add(Piths(
        "assest/images/TRISTROTA SHAKTI PEETH.jpg", "TRISTROTA SHAKTI PEETH", "Shalbari", "History to this place dates back in the time when it is said that the thumb of her left leg of Maa Sati fell to this place, when lord Vishnu in order to relieve lord Shiva from grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise maa Sati Body. Then, at the place of fall of thumb of her left leg, this temple was constructed.There is a famous story behind this Shakti Peeth. It is said that once a very cruel demon called as Arunasura used to live in the world. His power grew so much that he started fighting devas in heaven and forced to leave the heaven. He did not even spared the families of the devas. After suffering from so much pain and agony, the wives of devas could bear more trauma, and in search of respite they came to Maa Bhramari."));
    piths.add(Piths(
        "assest/images/ANANDAMAYEE SHAKTHI PEETHA.jpg", "ANANDAMAYEE SHAKTHI PEETHA", "Khanakul-Krishnanagar", "Anandamayee Shakti Peeth is situated on the banks of Ratnakar River at Khanakul-Krishnanagar, district Hooghly, West Bengal, India. Here the idol of Maa Sati is called as ‘Kumari’ and the lord Shiva is worshipped as ‘Bhairav’.It is locally known as Anandamayee Shakti Peetha.According to the Hindu legends, Anandamayee Shakti Peetha is among the 52 Shakti Peeth of Ma Sati. It is said that, dakshina skandha (right shoulder) of the Goddess fell here, when lord Vishnu in order to relieve Lord Shiva from grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise maa Sati Body. Then, at the place of fall of Right Shoulder, this temple was constructed."));
    piths.add(Piths(
        "assest/images/MANIBANDH SHAKTI PEETH.jpg", "MANIBANDH SHAKTI PEETH", "Manibandh", "The Manibandh Shakti peeth in Pushkar is said to be the place where the wrist of the Goddess is said to have fallen. It is located at Gayatri hills near Pushkar and 11 km north-west of Ajmer, Rajasthan and around 5-7 km from the famous Pushkar Bramha temple.The place, where Goddess Sati’s two manivedikas – wrists fell, is known as Manivedika Temple and the Icon, installed later in the temple is called Gayatri Devi. There are two idols here, one is of Devi Sati and called as Gayatri. The other idol in the temple is of Lord Shiva Known as the Sarvananda (the one who makes everyone happy). Meaning of Gayatri is Saraswati. Saraswati is the goddess of Knowledge in Hindu culture. This temple is considered as the ideal place for Gayatri Mantra sadhana."));
    piths.add(Piths(
        "assest/images/KIRITESWARI TEMPLE.jpg", "KIRITESWARI TEMPLE", "Kiriteswar", "Kiriteswari Temple is the oldest, holiest, and a famous religious place of Murshidabad district and is also known by the name Mukuteshwari temple. It is located in Kiritkona village, near Lalbagh court road, in Murshidabad district, West Bengal.This is one of the major Shakti peetas among the 52.  According to belief, the “crown” or the kirit of Sati had fallen here. Here Devi is worshipped as Vimala or pure and Shiva as Sangbart or Sambarta. The Shakti Peet at Maa Kiriteswari temple is considered as an Upapeeta, as no limb or part of the body fell here, but only a portion of her ornament fell here. It is one among the handful of temples in Bengal where no deities but an auspicious black stone is worshipped."));
    piths.add(Piths(
        "assest/images/CHANDRANATH TEMPLE.jpg", "CHANDRANATH TEMPLE", "Chandranath Hill", "Chandranath Temple located on top of the 350 metres high Chandranath hill, is a famous Shakti Peeth located near Sitakunda in Bangladesh where, as per Hindu sacred texts, the right arm of Goddess Sati fell. Sitakunda Chandranath Temple is a holy place of pilgrimage.There are two idols here, one is of Devi Sati and called as Bhavani. The other idol in this temple is of Lord Shiva Known as the Chandrashekhar. This particular word is depicted for all those individuals who have got a moon at the crown or at the top of their head. As per the belief of many local people, Lord Shiva himself has committed to visit Chandrasekhar Mountain during Kali Yuga. The temple is beautifully made with marble structures and art.The name, Shakti peeth chattal is related to the location of its establishment. A famous town in Bangladesh, Chatgaon is the establishment point of Shakti peeth chattal. This town is also known as chitagaon by the local people in the particular district."));
    piths.add(Piths(
        "assest/images/GUHYESHWARI TEMPLE.jpg", "GUHYESHWARI TEMPLE", "Kathmandu", "Guhyeshwari Temple is one of the revered holy temples. It lies about 1 km east of Pasupanath and is located near the banks of the Bagmati River in Kathmandu, Nepal. This temple is dedicated to Guhyeshwari. The goddess is also called Guhyekali. It is an important pilgrimage destination for general Hindu and especially for Tantric worshipers.The temple name originates from the Sanskrit words Guhya (Secret) and Ishwari (Goddess). In Lalitha Sahasranama the 707th name of Goddess is mentioned as ‘Guhyarupini’ meaning The form of Goddess is beyond human perception and it is a secret. Another argument is that it is the secret 16th syllable of the Shodashi Mantra. Guhyeshwari is a Shakthi Peetha and is the place where Devi Sati’s knees is believed to have fallen. Here Devi is worshipped as Mahamaya or Mahashira and Lord Shiva as Kapali."));
    piths.add(Piths(
        "assest/images/NAINATIVU NAGAPOOSANI AMMAN TEMPLE.jpg", "NAINATIVU NAGAPOOSANI AMMAN TEMPLE", "Nainativu", "Nainativu Nagapoosani Amman Temple is an ancient and historic Hindu temple located 36 km from the ancient capital of the Jaffna kingdom, Nallur, Sri Lanka. It is dedicated to Parvati who is known as Nagapooshani or Bhuvaneswari and her consort, Shiva who is named here as Rakshaseshwar (Nayanair).It is believed to be the place where the silambu (anklets) of Gauri had fallen. Anklets have been given immense importance in the worship of Shakti since time and memorial. This ornament is also referred to in the famous Tamil epic Silapathikaram – where the story begins and ends with an anklet.Bhuvaneshwari means the Queen or ruler of the Universe. She is the Divine Mother as the Queen of all the worlds. The entire Universe is her body and all beings are ornaments on her infinite being. She carries all the worlds as a flowering of her own Self-nature. She is thus related to Sundari and to Rajarajeshwari, the supreme Lady of the Universe."));
    piths.add(Piths(
        "assest/images/MITHILA SHAKTI PEETH.jpg", "MITHILA SHAKTI PEETH", "Mithila", "One of the 52 legendary Shakti Peethas is located at Mithila (near Janakpur station) Darbhanga on the border of Bihar, India- Nepal. The holy place is dedicated to divine powers “Goddess Durga” are worshipped by a large number of Hindu devotees as “Mahadevi or Uma”. It is believed that Devi Sati’s left shoulder (Vama Skandha) fell here. The idols of goddess Uma Devi and Lord Mahodar are located in a temple on a mountain rock.The temple which represents a fort is a white colour structure having four minar type towers. There is also a colour fountain in front of the temple which is one of the tourist attractions."));
    piths.add(Piths(
        "assest/images/MANASA SHAKTI PEETH.jpg", "MANASA SHAKTI PEETH", "Tibet", "Manasa Shakti peeth is Located at Tibet. This Shakti peeth is placed just beside the most pure and sacred water body specifically known as Lake Manas sarovar. Here, Goddess Mansa (form of Goddess Shakti) and Lord Amar (form of Lord Shiva) comes subjective of Mansa Shakti Peeth. In Hindu mythology, right hand of Sati fell in Shakti peeth Manasa.Since the idol of Devi have been provided with a different name at various shakti peeth, the name provided to this particular idol of devi is known as Dakshayani (Durga). Also the name given to Lord Shiva over here is known as Amar (Immortal). This is one of the pure and religious spot of the whole earth where people can get all their desires fulfilled. No temple or deity is there only a big boulder is lying over there which is being worshipped."));
    piths.add(Piths(
        "assest/images/RATNAVALI SHAKTI PEETH.jpg", "RATNAVALI SHAKTI PEETH", "Khanakul-Krishnanagar", "Ratnavali Shakti Peeth is situated on the banks of Ratnakar River at Khanakul-Krishnanagar, district Hooghly, West Bengal, India. Here the idol of Maa Sati is called as ‘Kumari’ and the lord Shiva is worshipped as ‘Bhairav’.It is locally known as Anandamayee Sakthi Peetha.According to the Hindu legends, Ratnavali Shakti Peeth is among the 52 Shakti Peeth of Ma Sati. It is said that, dakshina skandha (right shoulder) of the Goddess fell here, when lord Vishnu in order to relieve Lord Shiva from grief of losing his wife Sati, used his ‘Sudarshan Chakra’ to incise maa Sati Body. Then, at the place of fall of Right Shoulder, this temple was constructed."));
    piths.add(Piths(
        "assest/images/CHINTPURNI SHAKTI PEETHA.jpg", "CHINTPURNI SHAKTI PEETHA", "Chintpuri", "The Chinpurni Shaktipeetha or the Chinnamastika Shakti Peetha is located at Chintpuri in the Una district of Himachal Pradesh. Surrounded by the western Himalayas in the north and in the east by the Shivalik range bordering the state of Punjab. The temple complex is huge, and situated in the middle of it is the temple garbhagriha. This garbhagriha houses the image of the Mother in the form of a ‘pindi’ or a round stone that is said to symbolise the feet of the deity. The mother figure worshipped is called Ma Chandi. There are four Shiva temples surrounding the Chintpurni temple: Narayana Mahadev in the west, Kaleshwar Mahadev in the west, Muchkund Mahadev in north and Shiva Bari in the south. All these Shiva temples are equidistant from the main Shakti temple, symbolising the unity of the ArdhaNareshwar."));
    piths.add(Piths(
        "assest/images/BHABANIPUR SHAKTIPEETH.jpg", "BHABANIPUR SHAKTIPEETH", "Bogra", "Bhabanipur Shaktipeeth is located in Bogra in the Rajshahi Division of Bangladesh at about 28 kilometres distance from the town of Sherpur. The temple complex comprises an area of around four acres. It has the Main Temple, four temples dedicated to Lord Shiva and a Patal Bhairav temple dedicated to Vaman. It also has a Belbaran Tala, the famous Shakha Pukur, a Sevangan, a Gopal temple, a Vasudev Temple, a Nat Mandir and on the extreme north, a Panchamunda Asana idol."));
    piths.add(Piths(
        "assest/images/BAKRESWAR TEMPLE.jpg", "BAKRESWAR TEMPLE", "Bakreswar", "The portion between Devi Sati’s eyebrows- symbolic of her mind – is said to have fallen in this region when Lord Vishnu used his sudarshan chakra on her burnt corpse. A shrine was erected later and was consecrated to the worship of Shaivaite forces.Said to be one of the most powerful Shakti peethas, Bakreshwar (also called Vakreshwar) , the idol worshipped is Devi Mahishmardini (destroyer of Mahishasur) who is protected by the Bhairav Vakranath. The Phaphra River is said to be the Remover of Sins. This region is known particularly for its scenic beauty. There are seven hot springs surrounding the region- Agni Kund, Brahma Kund, Surya Kund, Saubhagya Kund, Amrita Kund, Kheer Kund, Jibat Kund and Vairav Kund, and each is associated with a ShivLinga. The ShivLingas can be found close to every spring. The Mahamuni Ashtabhakta is said to have found enlightenment here after bathing in the Phaphra."));
  }

  Widget mypiths(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(
              "assest/mainpic.png",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '${piths[index].name}',
            style:
                TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w700),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '${piths[index].location}',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w500,
                fontSize: 13),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: piths.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (contex, index) => mypiths(context, index),
    );
  }
}
