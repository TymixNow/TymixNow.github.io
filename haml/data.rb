$title = {
    "index": "TymixNow\'s Main Page",
    "projects": "TymixNow\'s projects"
}

$me = {
    name: "TymixNow",
    title: "Programmer, Conlanger, and Game\u00A0Designer",
    img_link: "img/me",
    img_alt: "A picture of me",
    desc: "Music theorist, mathematician<br>Bit of a linguist, theoretician<br>Chemist, conlanger<br>Worldbuilder, programmer<br>In no particular order.<br>INTP<br>Ti-Ne-Si-Fe<br>AuDHD<br>Mat-chem",
    projects_link_text: "More Projects\u200B...",
    projects_top_desc: "Newest project:",
}

$nav = [
    {
        text: "home",
        link: "/index",
    },
    {
        text: "science",
        link: "/projects",
    },
    {
        text: "music_note",
        link: "/music",
    },
]

$contents = [
    {
        codename: "TCR => WBL-01",
        code_expl: "Tri-Consonatal Roots => WorldBuiLding",
        title: "Tri-Consonatal Roots merge into WorldBuiLding",
        img_alt: "a screenshot of a lexicon",
        date:
        {
            year: 2025,
            month: 01,
            day: 22
        },
        post_desc: "A merger or projects; (both unfinished)"
    },
    {
        codename: "TCR-02",
        code_expl: "Tri-Consonantal Roots",
        title: "I'm Back!",
        img_alt: "A piece of a lexicon for a conlang",
        date:
        {
            year: 2025,
            month: 01,
            day: 18
        },
        post_desc: "Return of (and to) the conlang."
    },
  {
      codename: "HCG-01",
      code_expl: "Hexagonal Cogwheel Game",
      title: "Cogwheel Game Prototype",
      img_alt: "Blank Hex",
      date:
      {
          year: 2024,
          month: 12,
          day: 11
      },
      post_desc: "A prototype for a game cogwheel system."
  },
  {
      codename: "TCR-01",
      code_expl: "Tri-Consonantal Roots",
      title: "TCR-lang",
      img_alt: "Piece of an IPA table",
      date:
      {
          year: 2024,
          month: 12,
          day: 5
      },
      post_desc: "A conlang with plans to make it have Tri-consonantal roots."
  },
  {
      codename: "CEW-01",
      code_expl: "Current Endeavour Website",
      title: "This Website",
      img_alt: "image of a line of HTML code",
      date:
      {
          year: 2024,
          month: 10,
          day: 11
      },
      post_desc: "Just a place to practise HTML while organising ideas."
  }
]
$contents.each do |content|
  content[:mm] = '%02d' % content[:date][:month].to_s
  content[:dd] = '%02d' % content[:date][:day].to_s
  content[:date_link] = "#{content[:date][:year]}/#{content[:mm]}/#{content[:dd]}"
  content[:date] = "#{content[:dd]}.#{content[:mm]}.#{content[:date][:year]}"
end