function printMags(dist) {
    var st = "";
    for(i = 0; i < dist.length; i++) {
        st += dist[i][1] + ": " + dist[i][0] + "\n";
    }

    return st;
}

function solveConstruct() {
    //ordino i magazzini in modo crescente in base ai costi ma nel vettore ci metto gli indici e NON  i valori

    //m = numero magazzini
    var dist = new Array(m);

    var capLeft = cap.slice();
    sol = new Array(n);
    var cost = 0;

    for(i=0;i<m;i++) dist[i] = new Array(2);
    for(j=0;j<n;j++) { 
        for(i=0;i<m;i++) { 
            dist[i][0] = req[i][j];
            dist[i][1] = i;
        }
        dist.sort(compareKey);
        for(ii = 0;ii<m;ii++) { 
            i = dist[ii][1];
            if(capLeft[i] >= req[i][j]) {
                //quando trovo un cliente che ci sta nel magazzino glielo assegno
                sol[j] = i;
                //console.log("Al cliente " + j + " assegno il server " + i + " con una richiesta di " + req[i][j]);
                capLeft[i] -= req[i][j];
                //console.log("quindi gli rimane una capacità di " + capLeft[i]);
                cost += c[i][j];
                break;
            }
        }
        if (ii == m)
            alert("Il cliente " + j + " non è stato assegnato!");
    }

    console.log("Costo = " + cost);
    
    var zcheck = checkSol(sol);
    console.log("Cost " + cost + " zcheck " + zcheck + " sol " + sol);
    if (zub > cost) {
        zub = cost;
        document.getElementById("zub").value = zub;
    }
    solbest = sol.slice();
    console.log("Constructive, zub = " + zub);

    document.getElementById("z").value = cost;
    document.getElementById("zcheck").value = zcheck;

    alert("Constructive, zub = " + zub);
    console.log(sol);
}

function compareKey(a, b) {
    return a[0] - b[0];
}