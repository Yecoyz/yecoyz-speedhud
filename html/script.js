window.addEventListener("message", function(event) {
    const data = event.data;

    if (data.type === "show") {
        $("body").show();

        document.getElementById("speedometertext").innerText = `${Math.floor(data.speed)} KM/H`;

        const fuellevel = data.fuel * 200 + "px"; 

        $("#fuelbar").css("width", fuellevel); 
    } else if (data.type === "hide") {
        $("body").hide();
    }
});
