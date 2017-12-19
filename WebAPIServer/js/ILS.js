//passiamo la matrice dei costi anche se ora non serve
function ILS() {
    var alpha = 0.5;

    if (sol == null)
        alert("Prima devi fare la costruttiva!");
    else {
        var t0 = new Date();
        var iter = 0;
        var maxIter = 20000;
        var maxt = document.getElementById("time").value;
        console.log("Tempo = " + maxt);
        var tCurr = new Date();
        var tspan = tCurr - t0;
        var z;

        while (iter < maxIter && tspan < maxt) {
            z = opt10(c);

            if (z < zub) {
                console.log("New zub: " + z);
                zub = z;
                solbest = sol.slice();
            }

            dataPerturbation(alpha);
            iter++;
            tCurr = new Date();
            tspan = tCurr - t0;
        }

        z = zub;
        sol = solbest;
        var zcheck = checkSol(sol);
        console.log("[ILS] Costo " + z + " zcheck " + zcheck + " sol " + sol);
        document.getElementById("z").value = z;
        document.getElementById("zub").value = zub;
        document.getElementById("zcheck").value = zcheck;

        alert("[ISL] Costo " + z + " zcheck " + zcheck);
    }
}

function dataPerturbation(alpha) {
    var i, j;
    var cprimo = new Array(m);
    for (i = 0; i < m; i++) {
        cprimo[i] = new Array(n);
    }
    for (i = 0; i < m; i++) {
        for (j = 0; j < n; j++) {
            cprimo[i][j] = (1 - alpha / 2) * c[i][j] + Math.random() * alpha * c[i][j];
        }
    }

    opt10(cprimo);
}

function opt10(cost) {

    var i, isol, j, z = 0;
    var isImproved;
    var int = false;

    var capLeft = cap.slice();
    for (j = 0; j < n; j++) {
        if (sol[j] == undefined) {
            int = true;
            break;
        }
        capLeft[sol[j]] -= req[sol[j]][j];
        z += cost[sol[j]][j];
    }

    if (!int) {
        do {
            isImproved = false;
            for (j = 0; j < n; j++) {

                for (i = 0; i < m; i++) {
                    if (cost[i][j] < cost[sol[j]][j]) {
                        //console.log(cost[i][j] + " è minore di " + cost[sol[i]][j]);
                        if (capLeft[i] >= req[i][j]) {
                            //console.log("la quantità rimasta è ok");
                            //tolgo i valori vecchi
                            z -= cost[sol[j]][j];
                            capLeft[sol[j]] += req[sol[j]][j];
                            //aggiorno la soluzione
                            sol[j] = i;
                            //aggiorno i valori
                            z += cost[sol[j]][j];
                            capLeft[i] -= req[sol[j]][j];


                            //console.log("op10, improvement nel cliente " + j + ". z=" + z);
                            isImproved = true;
                            break;
                        }
                    }
                }
                if (isImproved) break;
            }
        } while (isImproved)
    }

    return z;
}