"use strict";
var DEBUG = true; //enable/disable console log
if(!DEBUG) { console.log = function() {}}


var n;   // num clienti
var m;   // num server
var c;   // matrice dei costi
var req; // matrice delle richieste
var cap; // vattore delle capacità
var sol; // vettore soluzione
var solbest; // vettore migliore soluzione trovata
var startTime, endTime, timeDiff; // tempi esecuzione
var zub = Number.MAX_VALUE;       // costo miglior soluzione trovata = z upper bound
var zlbBest = Number.MAX_VALUE;   // best lower bound

var jInstance;    // istanza in input da risolvere in notazione json
var EPS = 0.001;
