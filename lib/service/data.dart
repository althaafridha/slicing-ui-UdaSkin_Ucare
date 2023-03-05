class SkinCare {
  String imageAsset;
  String name;
  String price;
  String desc;

  SkinCare(
      {required this.imageAsset,
      required this.name,
      required this.price,
      required this.desc});
}

List<SkinCare> skinCareList = [
  SkinCare(
      imageAsset: "assets/images/home-item-1.png",
      name: "White Gingseng Mask",
      price: "\$29.0",
      desc: "Radiance Refining Mask"),
  SkinCare(
      imageAsset: "assets/images/home-item-3.png",
      name: "White Gingseng Mask",
      price: "\$29.0",
      desc: "Radiance Refining Mask"),
  SkinCare(
      imageAsset: "assets/images/home-item-4.png",
      name: "White Gingseng Mask",
      price: "\$29.0",
      desc: "Radiance Refining Mask"),
  SkinCare(
      imageAsset: "assets/images/home-item-2.png",
      name: "White Gingseng Mask",
      price: "\$29.0",
      desc: "Radiance Refining Mask"),
    
];
