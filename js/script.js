function readTextFile(file, callback) {
    var rawFile = new XMLHttpRequest();
    rawFile.overrideMimeType("application/json");
    rawFile.open("GET", file, true);
    rawFile.onreadystatechange = function() {
        if (rawFile.readyState === 4 && rawFile.status == "200") {
            callback(rawFile.responseText);
        }
    }
    rawFile.send(null);
}
function add(data) {
    document.getElementById("main-page-scroll-box").innerHTML += data;
}
function read(json) {
    readTextFile(json, function (text) {
        var data = JSON.parse(text);
        data.forEach(obj => {
            add(
                `
        <div class="post-box">
            <div class="codename">
                <a href="${obj["date"]["year"]}/${obj["date"]["month"].toString().padStart(2, '0')}/${obj["date"]["day"].toString().padStart(2, '0')}.html">
                ${obj["codename"]}
                </a>
            </div>
            <div class="code-expl">
                ${obj["code-expl"]}
            </div>
            <div class="title">
                ${obj["title"]}
            </div>
            <img class="proj-ill" src="${obj["date"]["year"]}/${obj["date"]["month"].toString().padStart(2, '0')}/${obj["date"]["day"].toString().padStart(2, '0')}.png" alt="${obj["img-alt"]}">
            <div class="date">
                <h3>
                    ${obj["date"]["day"].toString().padStart(2, '0')}.${obj["date"]["month"].toString().padStart(2, '0')}.${obj["date"]["year"]}
                </h3>
            </div>
            <div class="post-desc">
                ${obj["post-desc"]}
            </div>
        </div>
                `
            );
        });
    });
}