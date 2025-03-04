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
%Paramêtros do controle de corrente
Wcc = 1000;
Kpc = La*2*pi*Wcc;
Kic = Ra*2*pi*Wcc;
Kac = 1/Kpc;
%Parâmetros do controle de velocidade
Wcs = 100;
J = 0.001; % momento de inércia do sistema [kg.m²]
Kps = J*2*pi*Wcs/Kt;
Kis = J*(2*pi*Wcs)^2/(5*Kt);
Kas = 1/Kps;

Vdc = Va_rated;
plot(out.W_rpm_ref.time,out.W_rpm_ref.data)
hold on
plot(out.W_rpm_ref.time,out.Wm_rpm.data)
plot(out.TL.time,out.Te.data)
plot(out.TL.time,out.TL.data)
% plot(out.Ia.time,out.Te.data)
hold off
