% Parâmetros do motor DC
Power = 3336;
Va_rated = 140; % Tensão Nominal [V]
Ia_rated = 25;  % Corrente Nominal [A]
Wm_rated = 3000*2*pi/60;    % Velocidade Angular Nominal [rad/s]
Te_rated = Power/Wm_rated;  %Torque Nominal [Nm]

Ra = 0.26;   % Resistência de Armadura [Ohm]
La = 1.7e-3;    % Indutância de Armadura [H]
J = 0.00252;    % Momento de Inércia [kg.m²]
B = 0;  % Coeficiente de atrito viscoso [kg.m²/s]

Kt = Te_rated/Ia_rated;
