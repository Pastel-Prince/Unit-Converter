function simple_gui2
handles.f = figure('Visible','on','Position',[360,500,300,150]);
set(gcf, 'Toolbar', 'none', 'Menu', 'none');
set(gcf, 'Name', 'Simple Unit Converter', 'NumberTitle', 'Off')


htext = uicontrol('Style','text','String','From:',...
           'Position',[25,100,60,15]);

htext2 = uicontrol('Style','text','String','To:',...
           'Position',[150,100,60,15]);
           
units1 = uicontrol('Style','popupmenu',...
           'String',{'Miles','Kilometers','Meters','feet','Centimeters','Millimeters', 'Farenheit', 'Degrees'},...
           'Position',[40,100,100,20]);

units2 = uicontrol('Style','popupmenu',...
           'String',{'Miles','Kilometers','Meters','feet','Centimeters','Millimeters', 'Farenheit', 'Degrees'},...
           'Position',[160,100,100,20]);

input = uicontrol('Style','edit','Callback',@input_callback,...
           'Position',[40,70,100,20]);

output = uicontrol('Style','text', 'String', 'Output',...
           'Position',[160,66,100,20]);

button = uicontrol('Style', 'pushbutton','String', 'Convert','Callback', @pushbutton_callback,...
           'Position', [50, 40, 100, 20]);



function pushbutton_callback(src,event)
  inp = get(input, 'String');
  un1 = get(units1, 'Value');
  un2 = get(units2, 'Value');

  if un1 == 1; un1 = 'miles';
  elseif un1 == 2; un1 = 'km';
  elseif un1 == 3; un1 = 'm';
  elseif un1 == 4; un1 = 'feet';
  elseif un1 == 5; un1 = 'cm';
  elseif un1 == 6; un1 = 'mm';
  elseif un1 == 7; un1 = 'far';
  elseif un1 == 8; un1 = 'deg';
  end

  if un2 == 1; un2 = 'miles';
  elseif un2 == 2; un2 = 'km';
  elseif un2 == 3; un2 = 'm';
  elseif un2 == 4; un2 = 'feet';
  elseif un2 == 5; un2 = 'cm';
  elseif un2 == 6; un2 = 'mm';
  elseif un2 == 7; un2 = 'far';
  elseif un2 == 8; un2 = 'deg';
  end

  answer = UnitConverter(un1, un2, str2num(inp));

  set(output, 'String', answer);
end
end

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
