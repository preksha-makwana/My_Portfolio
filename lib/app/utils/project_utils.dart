class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/02.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Money Traker App',
    description:
        'This is a just Fully functional Money Management App by using flutter, source code is also available, check below.',
    links: 'https://github.com/preksha-makwana',
  ),
  ProjectUtils(
    banners: 'assets/imgs/1.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'My Token App',
    description:
        'The Application allows to user to book the token number from any Place for example any bank, any small shop, any office for reduce crowd or waiting lines by using flutter, source code is also available, check below.',
    links: 'https://github.com/preksha-makwana',
  ),
  ProjectUtils(
    banners: 'assets/imgs/03.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Key Ring App',
    description:
        'This is a store password and card details Key Ring App by using flutter, source code is also available, check below.',
    links: 'https://github.com/preksha-makwana',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'My Portfolio Website',
    description:
        'This is my portfolio by using flutter, source code is also available, check below.',
    links: 'https://github.com/preksha-makwana',
  ),
  ProjectUtils(
    banners: 'assets/imgs/05.png',
    icons: 'assets/imgs/react-native.png',
    titles: 'Pizzaiolo App',
    description:
    'Maintained and enhanced the Pizzaiolo app, a Canadian pizza delivery and pickup platform built with React Native (iOS & Android). Implemented UI/UX improvements, optimized performance, and ensured smooth ordering for gourmet pizza customization, delivery, and pickup—similar to Domino’s app.',
    links: 'https://github.com/preksha-makwana',
  ),
];
