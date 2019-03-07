function onInput(){
    input = document.getElementById('inputBox').value
    unit1 = document.getElementById('select1').value
    unit2 = document.getElementById('select2').value
    ans = calculate(unit1, unit2, input)
    $("#outputText").text(input + ' ' + unit1 + ' is ' + ans + ' ' + unit2)
}

function calculate(un1, un2, inp) {
    output = 0

    if(un1 == 'Miles'){
        switch(un2){
            case 'Miles': output = inp;   break;
            case 'Kilometers': output = inp * 1.609; break;
            case 'Meters': output = inp * 1609.344; break;
            case 'Feet': output = inp * 5280;   break;
            case 'Inches': output = inp * 63360;   break;
            case 'Centimeters': output = inp * 160934.4;  break;
            case 'Millimeters': output = inp * 1609000;   break;
        }
    }
    if(un1 == 'Kilometers'){
        switch(un2){
            case 'Miles': output = inp / 1.609;   break;
            case 'Kilometers': output = inp; break;
            case 'Meters': output = inp * 1000; break;
            case 'Feet': output = inp * 3280.84;   break;
            case 'Inches': output = inp * 39370.079;   break;
            case 'Centimeters': output = inp * 100000;  break;
            case 'Millimeters': output = inp * 1000000;   break;
        }
    }
    if(un1 == 'Meters'){
        switch(un2){
            case 'Miles': output = inp / 1609.344;   break;
            case 'Kilometers': output = inp / 1000; break;
            case 'Meters': output = inp; break;
            case 'Feet': output = inp * 3.281;   break;
            case 'Inches': output = inp * 39.37;   break;
            case 'Centimeters': output = inp * 100;  break;
            case 'Millimeters': output = inp * 1000;   break;
        }
    }
    if(un1 == 'Feet'){
        switch(un2){
            case 'Miles': output = inp / 5280;   break;
            case 'Kilometers': output = inp / 3280.84; break;
            case 'Meters': output = inp / 3.281; break;
            case 'Feet': output = inp;   break;
            case 'Inches': output = inp * 12;   break;
            case 'Centimeters': output = inp * 30.48;  break;
            case 'Millimeters': output = inp * 304.8;   break;
        }
    }
    if(un1 == 'Centimeters'){
        switch(un2){
            case 'Miles': output = inp / 160934.4;   break;
            case 'Kilometers': output = inp / 100000; break;
            case 'Meters':  output = inp / 100; break;
            case 'Feet': output = inp / 30.48;   break;
            case 'Inches': output = inp / 2.54;   break;
            case 'Centimeters': output = inp; break;
            case 'Millimeters': output = inp * 10; break;
        }
    }
    if(un1 == 'Millimeters'){
        switch(un2){
            case 'Miles': output = inp / 1609000;   break;
            case 'Kilometers': output = inp / 1000000; break;
            case 'Meters':  output = inp / 1000; break;
            case 'Feet': output = inp / 304.8;   break;
            case 'Inches': output = inp / 25.4;   break;
            case 'Centimeters': output = inp / 10; break;
            case 'Millimeters': output = inp; break;
        }
    }




    return Math.round(output*10000000000000)/10000000000000
}
