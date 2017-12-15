//passiamo la matrice dei costi anche se ora non serve
function run_opt10(cost) {
    if (sol == null)
        alert("Prima devi fare la costruttiva!");
    else {
        let z = opt10(cost);
        var zcheck = checkSol(sol);
        console.log("[opt10] Costo " + z + " zcheck " + zcheck + " sol " + sol);
        alert("[opt10] Costo " + z + " zcheck " + zcheck);
    }
}

function opt10(cost) {
    var i, isol, j, z = 0;
    var isImproved;

    var capLeft = cap.slice();
    for (j = 0; j < n; j++) {
        capLeft[sol[j]] -= req[sol[j]][j];
        z += cost[sol[j]][j];
    }

    do {
        isImproved = false;
        for (j = 0; j < n; j++) {
            
            for (i = 0; i < m; i++) {
                if(cost[i][j] < cost[sol[j]][j]) {
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


                        console.log("op10, improvement nel cliente " + j + ". z=" + z);
                        isImproved = true;
                        break;
                    }
                }
            }
            if(isImproved) break;
        }
    } while (isImproved)

    return z;
}