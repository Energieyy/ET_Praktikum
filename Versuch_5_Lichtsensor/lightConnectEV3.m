%% Lichtsensor-Versuch - Sensor auslesen
function brickObj = lightConnectEV3(brickConnectionType, sensorMode)
%% EV3-Verbindung oeffnen
% EV3-Objekt erstellen
brickObj = EV3();
% Verbindung herstellen
if strcmp(brickConnectionType, 'usb')
  brickObj.connect('usb');
else
  brickObj.connect('bt', 'deviceName', 'EV3-16-B', 'channel', 1);
end

%% Lichtsensor initialisieren
%
% Initialisieren Sie den Lichtsensor!

if strcmp (sensorMode, 'ambient')
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % IHR CODE HIER ...
       brickObj.sensor1.mode = DeviceMode.Color.Ambient;
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
elseif strcmp (sensorMode, 'reflect')
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  % IHR CODE HIER ...
       brickObj.sensor1.mode = DeviceMode.Color.Reflect;
  %
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
else
  error('Unbekannter sensorMode');
end
