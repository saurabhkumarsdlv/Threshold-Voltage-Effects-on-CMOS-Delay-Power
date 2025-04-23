% Parameters
Vdd = 1.0;              % Supply voltage (V)
alpha = 1.5;            % Alpha-power law exponent
n = 1.5;                % Subthreshold slope factor
Vt = 0.025;             % Thermal voltage (V)
C = 1e-15;              % Load capacitance (F)
f = 1e9;                % Frequency (Hz)
activity = 0.1;         % Switching activity

% Vth sweep
Vth = 0.2:0.01:0.5;

% Delay model (Alpha-Power Law)
delay = Vdd ./ (Vdd - Vth).^alpha;

% Leakage Power model
Pleak = exp(-Vth ./ (n * Vt));

% Dynamic Power (constant)
Pdyn = activity * C * Vdd^2 * f;

% Total Power
Ptotal = Pdyn + Pleak;

% Plotting
figure;
subplot(2,1,1);
plot(Vth, delay, 'b', 'LineWidth', 2);
xlabel('V_{th} (V)'); ylabel('Delay (arb. units)');
title('Delay vs Threshold Voltage'); grid on;

subplot(2,1,2);
plot(Vth, Pleak, 'r', 'LineWidth', 2); hold on;
plot(Vth, Ptotal, 'g--', 'LineWidth', 2);
xlabel('V_{th} (V)'); ylabel('Power (arb. units)');
title('Power vs Threshold Voltage');
legend('Leakage Power', 'Total Power'); grid on;
