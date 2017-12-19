function grasp() {
    var z;

    if (sol == null)
        alert("Prima devi fare la costruttiva!");
    else {
        GRASP(20000, 3);
        z = zub;
        sol = solbest;
        var zcheck = checkSol(sol);
        console.log("[GRASP] Costo " + z + " zcheck " + zcheck + " sol " + sol);
        alert("[GRASP] Costo " + z + " zcheck " + zcheck);
    }
}

function GRASP(maxIter, candListSize) {
    var iter = 0;
    var t0 = new Date();
    //var maxt = 20000000;
    var maxt = document.getElementById("time").value;
    console.log("Tempo = " + maxt);
    var tCurr = new Date();
    var tspan = tCurr - t0;

    while (iter < maxIter && tspan < maxt) {
        z = GRASP_constructive(candListSize);
        if (z < zub) {
            zub = z;
            solbest = sol.slice();
        }
        z = opt10(c);
        if (z < zub) {
            zub = z;
            solbest = sol.slice();
        }
        iter++; tCurr = new Date();
        tspan = tCurr - t0;
    }

    return z;
}

function GRASP_constructive(candListSize) {
    //ordino i magazzini in modo crescente in base ai costi ma nel vettore ci metto gli indici e NON  i valori

    //m = numero magazzini
    var dist = new Array(m);

    var capLeft = cap.slice();
    sol = new Array(n);
    var cost = 0;
    var icand, ii;

    for (i = 0; i < m; i++) dist[i] = new Array(2);
    for (j = 0; j < n; j++) {
        for (i = 0; i < m; i++) {
            dist[i][0] = req[i][j];
            dist[i][1] = i;
        }
        dist.sort(compareKey);

        icand = Math.floor(Math.random() * candListSize + 0.5);
        //console.log("i cand = " + icand);

        ii = 0;

        while (ii < m) {
            i = dist[(ii + icand) % m][1];
            if (capLeft[i] >= req[i][j]) {
                //quando trovo un cliente che ci sta nel magazzino glielo assegno
                sol[j] = i;
                //console.log("Al cliente " + j + " assegno il server " + i + " con una richiesta di " + req[i][j]);
                capLeft[i] -= req[i][j];
                //console.log("quindi gli rimane una capacità di " + capLeft[i]);
                cost += c[i][j];
                break;
            }
            ii++;
        }
        if (ii == m)
            console.log("Err nell costruttiva");
    }

    if (cost < zub) {
        zub = cost;
        solbest = sol.slice();
    }
    return cost;
}