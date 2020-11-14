class Cast {

  List<Actor> actores = new List();


  Cast.fromJsonList( List<dynamic> jsonList ){

    if ( jsonList == null ) return;

    jsonList.forEach((item) { 
      final actor = Actor.fromJsonMap(item);
      actores.add(actor);
    });

  }


}




class Actor {
  bool adult;
  int gender;
  int id;
  String knownForDepartment;
  String name;
  String originalName;
  double popularity;
  String profilePath;
  int castId;
  String character;
  String creditId;
  int order;
  String department;
  String job;

  Actor({
    this.adult,
    this.gender,
    this.id,
    this.knownForDepartment,
    this.name,
    this.originalName,
    this.popularity,
    this.profilePath,
    this.castId,
    this.character,
    this.creditId,
    this.order,
    this.department,
    this.job,
  });

  Actor.fromJsonMap( Map<String, dynamic> json){

    adult               = json['adult'];
    gender              = json['gender'];
    id                  = json['id'];
    knownForDepartment  = json['known_for_department'];
    name                = json['name'];
    originalName        = json['original_name'];
    popularity          = json['popularity'];
    profilePath         = json['profile_path'];
    castId              = json['cast_id'];
    character           = json['character'];
    creditId            = json['credit_id'];
    order               = json['order'];
    department          = json['department'];
    job                 = json['job'];

  }

  getFoto(){

    if (profilePath == null) {
      return 'https://lh3.googleusercontent.com/proxy/tPPTFU7CiTJ_8G1xKIf_18Ytk5RNKdwf95q9wzvenfmXJdGB1HbC0WcO2PcraAIKiOfeaN07vbyC1cv2oP9Yu9VaoFIqr7xAQBO_oJJLq8LDvy0BvB9K3OpJALfg';
    } else {
      return 'https://image.tmdb.org/t/p/w500/$profilePath';
    }
  }

}