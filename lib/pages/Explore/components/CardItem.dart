class CardItem{
  String name;
  String imgURL;
  bool isSaved;
  String shortDesc;
  String longDesc;
  int rate;


  String address;

  CardItem(this.name, this.imgURL, this.isSaved, this.shortDesc, this.longDesc,
      this.rate, this.address);
}
class doctorCardItem extends CardItem{
  String doctorDegree;
  String doctorField;
  double price;

  doctorCardItem(String name, String imgURL,bool isSaved, String shortDesc, String longDesc, int rate, String address,String doctorDegree,String doctorField,double price) :super(name, imgURL,isSaved, shortDesc, longDesc, rate, address) {

       this.doctorDegree=doctorDegree;
       this.doctorField=doctorField;
       this.price=price;
  }
}


List<doctorCardItem>doctorList=[
  new doctorCardItem("Mohamed Elmasry",
      "assets/d1.jpeg",
      false,
      "Lorem Ipsum is simply dummy text of theprinting and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printingand typesetting industry.Lorem Ipsum has beenthe industry's standard dummy text ever since the1500s, when anunknown printer took a galley oftype and scrambled it to make a type specimenbook. It has survived not only.",
      4,
      "Fifth njjejkdokdkldkl;ksl;dksl;ksal;k",
      "Professor",
      "Surgery",
      50),
  new doctorCardItem("Ahmed al Sayed",
      "assets/d1.jpeg",false,
      "Lorem Ipsum is simply dummy text of theprinting and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printingand typesetting industry.Lorem Ipsum has beenthe industry's standard dummy text ever since the1500s, when anunknown printer took a galley oftype and scrambled it to make a type specimenbook. It has survived not only.",
      4,
      "Fifth njjejkdokdkldkl;ksl;dksl;ksal;k",
      "Professor",
      "Surgery",
      50),
  new doctorCardItem("Youssef Mohammed",
      "assets/d1.jpeg",false,
      "Lorem Ipsum is simply dummy text of theprinting and typesetting industry.",
      "Lorem Ipsum is simply dummy text of the printingand typesetting industry.Lorem Ipsum has beenthe industry's standard dummy text ever since the1500s, when anunknown printer took a galley oftype and scrambled it to make a type specimenbook. It has survived not only.",
      4,
      "Fifth njjejkdokdkldkl;ksl;dksl;ksal;k",
      "Professor",
      "Surgery",
      50),
];