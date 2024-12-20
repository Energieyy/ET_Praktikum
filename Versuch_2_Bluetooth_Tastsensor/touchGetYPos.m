function [value switchstate] = touchGetYPos(actualval_vector,cyclecount,brickObj)
% Berechnet den Wert des manuell veraenderlichen Signals fuer die GUI
% Beim Druecken des Tastsensors erhoeht sich der Wert
% und der Wert sinkt beim Loslassen des Tastsensors.
% Ausgabewerte:
%   value: neuer Y-Wert  neuerWert
%   switchstate: Tastsensor-Status
% Eingabewerte:
%   actualval_vector: speichert alle vorherigen Y-Werte (der letzte
%   Eintrag ist die letzte Y-Position)
%   cyclecount: Anzahl der bisherigen Funktionsaufrufe


% % Initialisieren der Bluetooth Verbindung
%%brickObj = EV3();
%%brickObj.connect('usb');
% 
% 
% %COM_SetDefaultNXT(h);   gibt es keinen ersatzbefehl fuer?
% 
% % Initialisierung des Sensors und Aufruf der GUI
% 
% %OpenSwitch(SENSOR_1);
%%brickObj.sensor1.mode = DeviceMode.Touch.Pushed;
% %
%% Bearbeitung des Codes ab hier:
%%switchstate brickObj.sensor1.value

%%disp(actualval_vector);
brickObj.sensor1.mode = DeviceMode.Touch.Pushed;
switchstate = brickObj.sensor1.value;
value = 0;

if switchstate == 1
    value = actualval_vector(cyclecount) + 0.2;
end
if  switchstate == 0
    value = actualval_vector(cyclecount) - 0.2;
end

if value <= -1.5
    value = -1.5;
end
if  value >= 1.5
    value = 1.5;
end

end
