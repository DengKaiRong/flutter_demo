class Post {
  const Post({
    this.title,
    this.image,
    this.desc,
    this.email
  });

  final String title;
  final String image;
  final String desc;
  final String email;
}

final List<Post> posts = [
  Post(
    title: '蔡玲',
    email: 'ad_dicta@hotmail.com',
    desc: '北京淄川区',
    image: 'https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=3775805866,1434593229&fm=26&gp=0.jpg'
  ),
  Post(
    title: '彭雪',
    email: 'ad_dicta@hotmail.com',
    desc: '北京淄川区',
    image: 'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=508387608,2848974022&fm=26&gp=0.jpg'
  ),
  Post(
    title: '范飞',
    email: 'ad_dicta@hotmail.com',
    desc: '北京淄川区',
    image: 'https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=180868167,273146879&fm=26&gp=0.jpg'
  ),
  Post(
    title: '严秀芳',
    email: 'ad_dicta@hotmail.com',
    desc: '北京淄川区',
    image: 'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2873269578,797009742&fm=26&gp=0.jpg' 
  ),
];