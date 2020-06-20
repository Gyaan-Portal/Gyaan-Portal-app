import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kreyative/main.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

import 'main.dart';

class Videoonepage extends StatefulWidget {
  const Videoonepage({Key key}) : super(key: key);
  @override
  _VideoonepageState createState() => _VideoonepageState();
}

class _VideoonepageState extends State<Videoonepage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String videoURL = "https://www.youtube.com/watch?v=1bPiqFmZcq4";
  YoutubePlayerController _controller;
  YoutubeMetaData _videoMetaData;
  PlayerState _playerState;
  bool _isPlayerReady = false;
  List<Tab> tabList = List();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=1bPiqFmZcq4"),
    )..addListener(listener);
    _videoMetaData = YoutubeMetaData();
    tabList.add(
      Tab(
        icon: Icon(Icons.library_books, color: Hexcolor('#6002EE')),
        text: "Lectures",
      ),
    );
    tabList.add(
      Tab(
        icon: Icon(Icons.explore, color: Hexcolor('#6002EE')),
        text: "Formulae",
      ),
    );
    tabList.add(
      Tab(
          icon: Icon(Icons.attach_file, color: Hexcolor('#6002EE')),
          text: "Notes"),
    );
    tabList.add(
      Tab(icon: Icon(Icons.forum, color: Hexcolor('#6002EE')), text: "Doubt"),
    );
    tabList.add(
      Tab(
        icon: Icon(Icons.assignment, color: Hexcolor('#6002EE')),
        text: "Test",
      ),
    );
    _tabController = TabController(length: 5, vsync: this);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                ),
                Container(
                  height: 60.0,
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(_controller.metadata.title),
                  ),
                ),
                Container(
                  color: Colors.white70,
                  child: TabBar(
                    labelColor: Hexcolor('#6002EE'),
                    controller: _tabController,
                    indicatorColor: Hexcolor('#6002EE'),
                    tabs: tabList,
                  ),
                ),
                Container(
                  height: 300,
                  child: TabBarView(
                    controller: _tabController,
                    // children: tabList.map((Tab tab){
                    //   return _getPage(tab);
                    // } ).toList(),
                    children: [
                      Lectures(),
                      Formulae(),
                      Notes(),
                      Doubt(),
                      Test(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lectures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Section 1-',
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.playlist_play,
                color: Colors.black,
                size: 30,
              ),
            ),
            ListTile(
              title: Text('Introduction', style: TextStyle(fontSize: 22)),
              subtitle: Text('Extra info'),
              leading: Icon(
                Icons.filter_1,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  color: Colors.indigo,
                ),
              ]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroductionPage()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text(
                'Lecture name-2',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_2,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videotwopage()));
              },
            ),
            ListTile(
              title: Text(
                'Lecture name-3',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_3,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            ListTile(
              title: Text(
                'Section 2-',
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.playlist_play,
                color: Colors.black,
                size: 30,
              ),
            ),
            ListTile(
              title: Text(
                'Another video',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_4,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            ListTile(
              title: Text(
                'Another video',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_5,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Formulae extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Notes extends StatefulWidget {
  @override
  _NotesState createState() => _NotesState();
}

class _NotesState extends State<Notes> {
  List<Icon> icons = List();
  List<String> titles = [
    "Announcements",
    "Resources",
    "Share this Course",
    "Downloads",
    "Add Something",
    "Add Something"
  ];

  @override
  void initState() {
    icons.add(Icon(Icons.announcement, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.import_contacts, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.share, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.file_download, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.attach_file, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.attach_file, color: Hexcolor('#6002EE')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: icons.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading: icons[index],
          title: Text(titles[index]),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}

class Doubt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Public",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Private",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                "Important Questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.purple,
              child: Text(
                " Previous Year Questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Videotwopage extends StatefulWidget {
  const Videotwopage({Key key}) : super(key: key);
  @override
  _VideotwopageState createState() => _VideotwopageState();
}

class _VideotwopageState extends State<Videotwopage>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  String videoURL = "https://www.youtube.com/watch?v=ya04wIWcg8A";
  YoutubePlayerController _controller;
  YoutubeMetaData _videoMetaData;
  PlayerState _playerState;
  bool _isPlayerReady = false;
  List<Tab> tabList = List();
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(
          "https://www.youtube.com/watch?v=ya04wIWcg8A"),
    )..addListener(listener);
    _videoMetaData = YoutubeMetaData();
    tabList.add(
      Tab(
        icon: Icon(
          Icons.library_books,
          color: Hexcolor('#6002EE'),
        ),
        text: "Lectures",
      ),
    );
    tabList.add(
      Tab(
        icon: Icon(Icons.explore, color: Hexcolor('#6002EE')),
        text: "Formulae",
      ),
    );
    tabList.add(
      Tab(
          icon: Icon(Icons.attach_file, color: Hexcolor('#6002EE')),
          text: "Notes"),
    );
    tabList.add(
      Tab(icon: Icon(Icons.forum, color: Hexcolor('#6002EE')), text: "Doubt"),
    );
    tabList.add(
      Tab(
          icon: Icon(Icons.assignment, color: Hexcolor('#6002EE')),
          text: "Test"),
    );
    _tabController = TabController(length: 5, vsync: this);
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  void deactivate() {
    _controller.pause();
    super.deactivate();
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                YoutubePlayer(
                  controller: _controller,
                ),
                Container(
                  height: 60.0,
                  child: Padding(
                    padding: EdgeInsets.all(7.0),
                    child: Text(_controller.metadata.title),
                  ),
                ),
                Container(
                  color: Colors.white70,
                  child: TabBar(
                    labelColor: Hexcolor('#6002EE'),
                    controller: _tabController,
                    indicatorColor: Hexcolor('#6002EE'),
                    tabs: tabList,
                  ),
                ),
                Container(
                  height: 300,
                  child: TabBarView(
                    controller: _tabController,
                    // children: tabList.map((Tab tab){
                    //   return _getPage(tab);
                    // } ).toList(),
                    children: [
                      Lecturestwo(),
                      Formulaetwo(),
                      Notestwo(),
                      Doubttwo(),
                      Testtwo(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lecturestwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text(
                'Section 1-',
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.playlist_play,
                color: Colors.black,
                size: 30,
              ),
            ),
            ListTile(
              title: Text('Introduction', style: TextStyle(fontSize: 22)),
              leading: Icon(
                Icons.filter_1,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.picture_as_pdf,
                  color: Colors.red,
                ),
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star,
                  color: Colors.indigo,
                ),
              ]),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IntroductionPage()));
                // Update the state of the app
                // ...
                // Then close the drawer
              },
            ),
            ListTile(
              title: Text(
                'Lecture name-2',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_2,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            ListTile(
              title: Text(
                'Lecture name-3',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_3,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            ListTile(
              title: Text(
                'Section 2-',
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
              contentPadding: EdgeInsets.only(left: 17, top: 8),
              leading: Icon(
                Icons.playlist_play,
                color: Colors.black,
                size: 30,
              ),
            ),
            ListTile(
              title: Text(
                'Another video',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_4,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
            ListTile(
              title: Text(
                'Another video',
                style: TextStyle(fontSize: 22),
              ),
              leading: Icon(
                Icons.filter_5,
                color: Colors.black,
              ),
              trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                Icon(
                  Icons.check_circle_outline,
                ),
                Icon(
                  Icons.star_border,
                ),
              ]),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Videoonepage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Formulaetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class Notestwo extends StatefulWidget {
  @override
  _NotestwoState createState() => _NotestwoState();
}

class _NotestwoState extends State<Notestwo> {
  List<Icon> icons = List();
  List<String> titles = [
    "Announcements",
    "Resources",
    "Share this Course",
    "Downloads",
    "Add Something",
    "Add Something"
  ];

  @override
  void initState() {
    icons.add(Icon(Icons.announcement, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.import_contacts, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.share, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.file_download, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.attach_file, color: Hexcolor('#6002EE')));
    icons.add(Icon(Icons.attach_file, color: Hexcolor('#6002EE')));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: icons.length,
      itemBuilder: (BuildContext context, index) {
        return ListTile(
          leading: icons[index],
          title: Text(titles[index]),
          trailing: Icon(Icons.arrow_forward),
        );
      },
    );
  }
}

class Doubttwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Public",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                " Private",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Testtwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              color: Colors.blue,
              child: Text(
                "Important questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            RaisedButton(
              onPressed: null,
              color: Colors.purple,
              child: Text(
                " Previous Year Questions",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
