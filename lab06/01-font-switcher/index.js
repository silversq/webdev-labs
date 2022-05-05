let xfontSize = 1.4;
let xtitleSize = 2.0;

const makeBigger = () => {
   xfontSize += 0.1;
   xtitleSize += 0.1;
   
   document.querySelector(".content").style.fontSize = xfontSize + "rem";
   document.querySelector("h1").style.fontSize = xtitleSize + "rem";
};

const makeSmaller = () => {
   xfontSize -= 0.1;
   xtitleSize -= 0.1;
   
   document.querySelector(".content").style.fontSize = xfontSize + "rem";
   document.querySelector("h1").style.fontSize = xtitleSize + "rem";
};


document.querySelector("#a1").addEventListener('click', makeBigger);
document.querySelector("#a2").addEventListener('click', makeSmaller);

