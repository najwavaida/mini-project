% Inisialisasi grafik
figure;
axis equal;
hold on;
xlim([-1.5 1.5]);
ylim([-1.5 1.5]);
title ('TO ANGGOKKKK <3');

% Persamaan parametris untuk bentuk hati
t = linspace(0, 2*pi, 1000);
x = 16 * sin(t).^3 / 17;
y = (13 * cos(t) - 5 * cos(2*t) - 2 * cos(3*t) - cos(4*t)) / 17;

% Membuat animasi
for i = 1:length(t)
    plot(x(1:i), y(1:i), 'r', 'LineWidth', 2); % Plot garis hati
    pause(0.01); % Jeda waktu untuk animasi
end

hold off;

