
function getFibo() {
    var inicio = parseInt(document.getElementById("ejemplo").value);
    console.log(Fibo(0,1,inicio));
    
}


function Fibo(a,b,lim){
    if (b >= lim)
        return a;
    console.log(a)
    return Fibo(b,(a+b),lim)
}