% Inisialisasi grafik
figure;
axis equal;
hold on;
xlim([-1.5 1.5]); % Batas x
ylim([-2 1.5]);   % Batas y
title('Animasi 2D Bentuk Hati dengan Garis Ditarik dari Samping');
grid on;

% Persamaan parametrik untuk bentuk hati
t = linspace(0, 2*pi, 1000);
x = 0.5 * sin(t).^3; % Koordinat x untuk bentuk hati
y = 0.5 * (13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)) / 17; % Koordinat y untuk bentuk hati

% Membuat animasi garis yang ditarik dari samping
line_handle = plot(0, 0, 'r', 'LineWidth', 2); % Inisialisasi garis

for i = 1:length(t)
    % Memperbarui data garis
    set(line_handle, 'XData', x(1:i), 'YData', y(1:i));

    % Menggambar titik saat ini untuk memberikan efek animasi
    plot(x(i), y(i), 'ro', 'MarkerSize', 3, 'MarkerFaceColor', 'r');

    pause(0.01); % Jeda waktu untuk animasi
end

hold off;

