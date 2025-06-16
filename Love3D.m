% Inisialisasi grafik
figure;
axis equal;
hold on;
xlim([-1.5 1.5]);
ylim([-1.5 1.5]);
zlim([-1.5 1.5]);
view(3); % Mengatur tampilan menjadi 3D
grid on;

% Menambahkan judul
title('Animasi 3D Bentuk Hati');

% Persamaan parametrik untuk bentuk hati 3D
theta = linspace(0, 2*pi, 1000);
phi = linspace(0, pi, 1000);
[Theta, Phi] = meshgrid(theta, phi);

% Persamaan parametrik 3D untuk bentuk hati
X = sin(Theta) .* cos(Phi) .* (1.2 + 0.5 * (cos(Theta).^2));
Y = sin(Theta) .* sin(Phi) .* (1.2 + 0.5 * (cos(Theta).^2));
Z = cos(Theta);

% Membuat animasi
for i = 1:20:length(theta)
    surf(X(1:i, 1:i), Y(1:i, 1:i), Z(1:i, 1:i), 'EdgeColor', 'none', 'FaceColor', 'r');
    pause(0.01); % Jeda waktu untuk animasi
end

% Mengakhiri perintah hold setelah animasi selesai
hold off;

