function y = UnitConverter(from, to, inp)
if strcmp(from, 'deg')
    if strcmp(to, 'far')
        y = (inp * 9/5) + 32;
    else
        y = 'You cannot convert between these units';
    end


elseif strcmp(from, 'far')
    if strcmp(to, 'deg')
        y = (32 - inp) * -5/9;
    else
        y = 'You cannot convert between these units';
    end


elseif strcmp(from, 'm')
    if strcmp(to, 'cm')
        y = inp * 100;
    elseif strcmp(to, 'mm')
        y = inp * 1000;
    elseif strcmp(to, 'feet')
        y = inp * 3.281
    elseif strcmp(to, 'km')
        y = inp / 1000
    elseif strcmp(to, 'miles')
        y = inp / 1609.344
    end
    
elseif strcmp(from, 'cm')
    if strcmp(to, 'mm')
        y = inp * 10;
    elseif strcmp(to, 'm')
        y = inp / 100;
    elseif strcmp(to, 'feet')
        y = inp / 30.48;
    elseif strcmp(to, 'km')
        y = inp / 100000;
    elseif strcmp(to, 'miles')
        y = inp / 160934.4;
    end
    
elseif strcmp(from, 'mm')
    if strcmp(to, 'cm')
        y = inp / 10;
    elseif strcmp(to, 'm')
        y = inp / 1000;
    elseif strcmp(to, 'feet')
        y = inp / 304.8;
    elseif strcmp(to, 'km')
        y = inp / 1000000;
    elseif strcmp(to, 'miles')
        y = (inp / 1.609*10^6);
    end

elseif strcmp(from, 'feet')
    if strcmp(to, 'cm')
        y = inp * 30.48;
    elseif strcmp(to, 'm')
        y = inp / 3.281;
    elseif strcmp(to, 'mm')
        y = inp * 304.8;
    elseif strcmp(to, 'km')
        y = inp / 3280.84;
    elseif strcmp(to, 'miles')
        y = (inp / 5280);
    end

    elseif strcmp(from, 'km')
    if strcmp(to, 'cm')
        y = inp * 100000;
    elseif strcmp(to, 'm')
        y = inp * 1000;
    elseif strcmp(to, 'mm')
        y = inp * 1000000;
    elseif strcmp(to, 'feet')
        y = inp * 3280.84;
    elseif strcmp(to, 'miles')
        y = inp / 1.609;
    end

    elseif strcmp(from, 'miles')
    if strcmp(to, 'cm')
        y = inp * 160934.4;
    elseif strcmp(to, 'm')
        y = inp * 1609.344;
    elseif strcmp(to, 'mm')
        y = inp * 1609344;
    elseif strcmp(to, 'feet')
        y = inp * 5280;
    elseif strcmp(to, 'km')
        y = inp * 1.609;
    end
end
end
