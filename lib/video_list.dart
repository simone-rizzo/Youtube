class video{
  String titolo,copertina_url,url,avatar_url;
  int likes,dislikes;
  String iscritti,data,minuti;
  String account_name;
  String visual;
  
  video(this.titolo,this.account_name, this.copertina_url, this.url, this.avatar_url, this.likes,
      this.dislikes, this.iscritti, this.data, this.minuti, this.visual);
}

String server_base_url="http://192.168.1.215/videos/video";
List<video> videos = [
  video("QUELLA COSA CON LA LINGUA TUTORIAL","NELLO TAVER", "https://i.ytimg.com/vi/lnCXtHhuCko/hq720.jpg?sqp=-oaymwEZCOgCEMoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLDMf_-lbmiuL3ouSTGbzG8CEB1hQg", server_base_url+"1.mp4", "https://yt3.ggpht.com/ytc/AAUvwnjOLKJVRDVoC4Hu8oChpb9idQokoC_dEX13BFmd-g=s48-c-k-c0xffffffff-no-rj-mo", 532, 20, "135 000 Iscritti", "1 giorno fa", "06:20","  300k Visualizzazio"),
  video("FEDEZ RACCONTA DI QUANDO SI SPAVENTÒ","tony938", "https://i.ytimg.com/vi/he7dQ0CRFnE/hq720.jpg?sqp=-oaymwEZCNAFEJQDSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLCIAUreiXJRVN1GnXz3sKaC7B37Kg", server_base_url+"2.mp4", "https://yt3.ggpht.com/a-/AOh14GjeF6wiAJmu9ft6QvXlqCHBzWfE4844F14TgA=s68-c-k-c0x00ffffff-no-rj-mo", 12, 20, "10 532 Iscritti", "2 giorno fa", "05:40","  125 152 Visualizzazio"),
  video("Quanto guadagno con youtube","tony938", "https://i.ytimg.com/vi/mXnsCiWKyXo/hq720.jpg?sqp=-oaymwEZCNAFEJQDSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLBUKHV07GSZtPWBe3nzAldICl5vPA", server_base_url+"3.mp4", "https://yt3.ggpht.com/a-/AOh14GgNkiRZiBxZLP79QoHVNySuS9P6BJyl7QpxAQ=s68-c-k-c0x00ffffff-no-rj-mo", 600, 20, "10 Mln Iscritti", "3 giorno fa", "56:40","  80 050 Visualizzazio"),
  video("MI ha preso di brutto Trailer","LOL", "https://i.ytimg.com/vi/TFzkbos0oeo/hq720.jpg?sqp=-oaymwEZCNAFEJQDSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLA9XpE2nUQRKqIcIzHckxa5JaHgSQ", server_base_url+"4.mp4", "https://yt3.ggpht.com/a-/AOh14GjAMPi6VS3gmbLl78ugizPwmu1ddwY2D6dKJQ=s68-c-k-c0x00ffffff-no-rj-mo", 999, 222, "10 Mln Iscritti", "3 giorno fa", "56:40","  12 084 Visualizzazio"),
  video("Jack Harlow - WHATS POPPIN","Jack Harlow", "https://i.ytimg.com/vi/9vMLTcftlyI/hq720.jpg?sqp=-oaymwEZCNAFEJQDSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLD1ToxaoMp6VFow_mbJkluYW5Kw1Q", server_base_url+"4.mp4", "https://yt3.ggpht.com/ytc/AAUvwniCAZyrpTebwKQvjcsVw4ahS9w24qqtEcT01nYkWA=s48-c-k-c0xffffffff-no-nd-rj-mo", 544, 30, "10 Mln Iscritti", "3 giorno fa", "56:40","  3Mln Visualizzazio")
];
