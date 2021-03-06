﻿﻿function readWithCORS() {
    start();

    var resp;
    var req = new XMLHttpRequest();
    inText = document.getElementById("inputRemote").value;
    if ('withCredentials' in req) {
        req.open('GET', 'http://astarte.csr.unibo.it/gapdata/' + inText, true); //invia la richiesta al server
        req.onreadystatechange = function () {
            if (req.readyState === 4)
                if (req.status >= 200 && req.status < 400) {
                    jInstance = JSON.parse(req.responseText);
                    setInstance(jInstance);
                }
                else
                    alert('reading error');
        };
        req.send();
    }
}

function start() {
    document.getElementById("z").value = "";
    document.getElementById("zub").value = "";
    document.getElementById("zcheck").value = "";
    document.getElementById("bestAl").value = "";

    c = null;
    req = null;
    cap = null;
    sol = null;
    solbest = null;
    zub = Number.MAX_VALUE;
    zlbBest = Number.MAX_VALUE;
}

// elaborazione dei dati letti in locale
function receivedText(e) {
    istanza = e.target.result;
    jInstance = JSON.parse(istanza);
    setInstance(jInstance);
}

//copia i campi del json => poi ho tutte le variabili che mi servono
function setInstance(jInstance) {
    n = jInstance.numcustomers;   // num clienti
    console.log("Numero clienti = " + n);
    m = jInstance.numfacilities;  // num server
    console.log("Numero server = " + m);
    c = jInstance.cost;   // matrice dei costi
    req = jInstance.req;  // matrice delle richieste
    cap = jInstance.cap;  // vattore delle capacità
    alert("Got instance " + jInstance.name + " n=" + n);
}

function checkSol(sol) {
    var z = 0, j;
    var capused = new Array(m);
    for (i = 0; i < m; i++) capused[i] = 0;
    // controllo assegnamenti
    for (j = 0; j < n; j++)
        if (sol[j] < 0 || sol[j] >= m || sol[j] === undefined) {
            z = Number.MAX_VALUE;
            console.log("Errore di assegnamento nella soluzione di " + j);
            return z;
        }
        else
            z += c[sol[j]][j];
    // controllo capacità
    for (j = 0; j < n; j++) {
        capused[sol[j]] += req[sol[j]][j];
        if (capused[sol[j]] > cap[sol[j]]) {
            z = Number.MAX_VALUE;
            console.log("Errore di capacità nella soluzione di " + j);
            return z;
        }
    }
    return z;
}
