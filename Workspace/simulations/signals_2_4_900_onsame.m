% --- 915 MHz vs 2.4 GHz Antenna Proximity Simulation ---
clear; clc; close all;

% 1. Define Frequencies and Dimensions
f1 = 915e6;     % XBee Frequency
f2 = 2.4e9;     % WiFi Frequency
spacing = 0.05; % 50mm spacing between centers

% 2. Define Antennas
% Ant 1: 915 MHz XBee "Duck" (Approx 105mm loaded dipole)
ant1 = dipole(Length=0.105, Width=0.002);
% Ant 2: 2.4 GHz WiFi "Duck" (Approx 62mm half-wave dipole)
ant2 = dipole(Length=0.062, Width=0.002);

% 3. Create Array Assembly (Placed next to each other)
% Elements are placed at [-0.025, 0, 0] and [0.025, 0, 0] to get 50mm spacing
confArr = conformalArray('Element', {ant1, ant2}, ...
    'ElementPosition', [-spacing/2 0 0; spacing/2 0 0]);

% --- SCENARIO SIMULATIONS ---

% SCENARIO 1: 915 MHz Tx (XBee transmitting, WiFi is a passive load)
figure('Name', 'Scenario 1: XBee Transmitting (915 MHz)');
pattern(confArr, f1, 'ElementNumber', 1, 'Termination', 50);
title('XBee Tx Pattern (Distorted by nearby WiFi antenna)');

% SCENARIO 2: 2.4 GHz Tx (WiFi transmitting, XBee is a passive load)
figure('Name', 'Scenario 2: WiFi Transmitting (2.4 GHz)');
pattern(confArr, f2, 'ElementNumber', 2, 'Termination', 50);
title('WiFi Tx Pattern (Distorted by nearby XBee antenna)');

% SCENARIO 3 & 4: RECEIVER MODES
% Note: By Reciprocity, the Receive sensitivity pattern is identical to the Tx pattern.
% These plots represent the "search" sensitivity of each module in presence of the other.
figure('Name', 'Scenario 3: XBee Receiving Sensitivity');
pattern(confArr, f1, 'ElementNumber', 1, 'Termination', 50);
title('XBee Rx Sensitivity (Note the "shadow" cast by the WiFi antenna)');

figure('Name', 'Scenario 4: WiFi Receiving Sensitivity');
pattern(confArr, f2, 'ElementNumber', 2, 'Termination', 50);
title('WiFi Rx Sensitivity (Distortion caused by XBee metal body)');

% SCENARIO 5: BOTH TRANSMITTING (Dual-Link Mode)
% This shows the total directivity if both frequencies were somehow summed
% or if they interfere in the far-field (primarily showing pattern skew).
figure('Name', 'Scenario 5: Dual Transmission (Pattern Overlap)');
pattern(confArr, f1); % Driven simultaneously at f1
hold on;
pattern(confArr, f2); % Driven simultaneously at f2
title('Dual-Frequency Radiation Footprint');

% SCENARIO 6: BOTH RECEIVING (Combined System Sensitivity)
% This calculates the S-parameters (Mutual Coupling) to show the "Harm"
figure('Name', 'Scenario 6: Mutual Coupling (Port Isolation)');
s = sparameters(confArr, linspace(800e6, 2.5e9, 50));
rfplot(s, 1, 2);
title('Coupling (S12/S21): Power Leaking from one antenna to the other');
grid on;

% Analysis Output
fprintf('--- Simulation Complete ---\n');
fprintf('Observe the "nulls" in Scenario 1 & 2 patterns.\n');
fprintf('These are the "blind spots" where you might lose telemetry during flight.\n');