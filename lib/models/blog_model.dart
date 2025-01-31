class Blog {
  final String? date, title, description, image;

  Blog({this.date, this.title, this.description, this.image});
}

List<Blog> blogPosts = [
  Blog(
    date: "23 September 2020",
    image: "assets/images/winterdog.jpg",
    title: "How to Keep Your Dog Healthy During Winter Months",
    description:
        "As the colder months approach, it’s important to take extra care of your dog’s health. Cold weather can lead to joint pain, dry skin, and other health issues for pets. To help keep your furry friend warm, ensure they have a cozy bed, regular indoor exercise, and proper winter clothing for walks. Always check their paws for salt and ice after walks, and keep them hydrated with fresh water.",
  ),
  Blog(
    date: "21 August 2020",
    image: "assets/images/dog breeds.jpg",
    title: "Top 5 Dog Breeds for Active Families",
    description:
        "If you're an active family who loves outdoor adventures, you’ll need a dog that can keep up. Breeds like the Labrador Retriever, Border Collie, and Australian Shepherd are known for their high energy levels and love for outdoor activities. Whether it’s hiking, running, or playing fetch, these dogs thrive in active environments and are great companions for an energetic family.",
  ),
  Blog(
    date: "23 September 2020",
    image: "assets/images/vet.jpg",
    title: "The Importance of Regular Vet Visits for Your Pet",
    description:
        "Regular vet visits are essential to maintaining your pet’s health. Annual check-ups can help detect health issues early, provide vaccinations, and keep your pet on track with necessary treatments. It's also a great opportunity to discuss any concerns you might have about your pet’s behavior, diet, or environment. Regular vet visits ensure that your pet lives a long, healthy, and happy life.",
  ),
];
