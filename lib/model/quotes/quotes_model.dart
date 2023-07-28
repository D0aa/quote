class QuotesModel {
  int? page;
  bool? lastPage;
  List<Quotes> quotes=[];

  QuotesModel({this.page, this.lastPage, this.quotes=const []});

  QuotesModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    lastPage = json['last_page'];
    if (json['quotes'] != null) {
      quotes = <Quotes>[];
      json['quotes'].forEach((v) {
        quotes.add(Quotes.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['page'] = page;
    data['last_page'] = lastPage;
    data['quotes'] = quotes.map((v) => v.toJson()).toList();
    return data;
  }
}

class Quotes {
  int? id;
  bool? dialogue;
  bool? private;
  List<String>? tags;
  String? url;
  int? favoritesCount;
  int? upvotesCount;
  int? downvotesCount;
  String? author;
  String? authorPermalink;
  String? body;
  String? source;
  String? context;
  List<Lines>? lines;

  Quotes(
      {this.id,
        this.dialogue,
        this.private,
        this.tags,
        this.url,
        this.favoritesCount,
        this.upvotesCount,
        this.downvotesCount,
        this.author,
        this.authorPermalink,
        this.body,
        this.source,
        this.context,
        this.lines});

  Quotes.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dialogue = json['dialogue'];
    private = json['private'];
    tags = json['tags'].cast<String>();
    url = json['url'];
    favoritesCount = json['favorites_count'];
    upvotesCount = json['upvotes_count'];
    downvotesCount = json['downvotes_count'];
    author = json['author'];
    authorPermalink = json['author_permalink'];
    body = json['body'];
    source = json['source'];
    context = json['context'];
    if (json['lines'] != null) {
      lines = <Lines>[];
      json['lines'].forEach((v) {
        lines!.add(Lines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = id;
    data['dialogue'] = dialogue;
    data['private'] = private;
    data['tags'] = tags;
    data['url'] = url;
    data['favorites_count'] = favoritesCount;
    data['upvotes_count'] = upvotesCount;
    data['downvotes_count'] = downvotesCount;
    data['author'] = author;
    data['author_permalink'] = authorPermalink;
    data['body'] = body;
    data['source'] = source;
    data['context'] = context;
    if (lines != null) {
      data['lines'] = lines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Lines {
  int? position;
  String? body;
  String? author;
  String? authorPermalink;

  Lines({this.position, this.body, this.author, this.authorPermalink});

  Lines.fromJson(Map<String, dynamic> json) {
    position = json['position'];
    body = json['body'];
    author = json['author'];
    authorPermalink = json['author_permalink'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['position'] = position;
    data['body'] = body;
    data['author'] = author;
    data['author_permalink'] = authorPermalink;
    return data;
  }
}