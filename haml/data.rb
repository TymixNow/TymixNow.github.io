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

$codes = {
    gen: {code: "GEN", expl: "GENeral"},
    web: {code: "CEW", expl: "Current Endeavour Website"},
    chip: {code: "SCH", expl: "Sound CHip"},
    tcr: {code: "WBL:TCR", expl: "TriConsonantal Roots"},
    wb: {code: "WBL", expl: "WorldBuiLding"},
    game: {code: "HCG", expl: "Hexagonal Cogwheel Game"}
}

$contents = [
    {
        code: :gen,
        index: 2,
        title: "I'm back (again)",
        img_alt: "piece of code used for this website",
        date:
        {
            year: 2025,
            month: 8,
            day: 10
        },
        post_desc: "I forgot about this place for a while"
    },
    {
        codename: "GEN-01",
        code_expl: "GENeral",
        title: "VM",
        img_alt: "A screenshot from a virtual machine",
        date:
        {
        year: 2025,
        month: 03,
        day: 18,
        },
        post_desc: "Virtual Machine",
    },
    {
        codename: "CEW-02",
        code_expl: "Current Endeavour Website",
        title: "Automation",
        img_alt: "a ruby script for automating editing",
        date:
        {
            year: 2025,
            month: 03,
            day: 07
        },
        post_desc: "Makes mistake rate lower (I hope)"
    },
    {
        codename: "SCH-01",
        code_expl: "Sound CHip",
        title: "Making Music Chips with Meehow",
        img_alt: "a few header files used in the project",
        date:
        {
            year: 2025,
            month: 02,
            day: 26
        },
        post_desc: "Basic Beeps and Waveform tests"
    },
    {
        codename: "TCR@WBL-02",
        code_expl: "Tri-Consonatal Roots @ WorldBuiLding",
        title: "Tri-Consonatal Roots building finale",
        img_alt: "a screenshot of a semitic stem table",
        date:
        {
            year: 2025,
            month: 01,
            day: 27,
        },
        post_desc: "The finale has begun."
    },
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
    unless content[:code] == nil then
        content[:codename] = "#{$codes[content[:code]][:code]}-#{'%02d' % content[:index].to_s}"
        content[:code_expl] = $codes[content[:code]][:expl]
    end
end
