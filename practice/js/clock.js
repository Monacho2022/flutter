const WEEK = ["Domingo", "Lunes", "Martes", "Miercoles", "Jueves", "Viernes", "Sabado"];

function updatetime(){
    var now = new Date();

    document.getElementById("time").innerText =
    zeroPadding(now.getUTCHours(), 2) +":" +
    zeroPadding(now.getUTCMinutes(), 2) +":" +
    zeroPadding(now.getUTCSeconds(), 2);

    document.getElementById("date").innerText =
    now.getFullYear() +"-" +
    zeroPadding(now.getMonth()+1, 2) +"-" +
    zeroPadding(now.getDate(), 2) +" " +
    WEEK[now.getDay()];
}
updatetime();
setInterval(updatetime, 1000);

function zeroPadding(num, digit) {
    return String(num).padStart(digit, '0');
}
