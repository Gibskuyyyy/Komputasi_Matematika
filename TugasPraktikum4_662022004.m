function allPlots()
    %% 1. plot - Line plot
    x = linspace(0, 2*pi, 100);
    y = sin(x);
    figure('Name','Line Plot'); plot(x, y, 'LineWidth', 2); grid on; title('Line Plot'); xlabel('x'); ylabel('sin(x)');

    %% 2. stem - Discrete data
    figure('Name','Stem Plot'); stem(x(1:10), y(1:10), 'filled'); grid on; title('Stem Plot');

    %% 3. stairs - Step plot
    figure('Name','Stairs Plot'); stairs(x, y); grid on; title('Stairs Plot');

    %% 4. bar - Bar chart
    data = randi(10, 1, 5);
    figure('Name','Bar Plot'); bar(data); title('Bar Plot'); grid on;

    %% 5. barh - Horizontal bar
    figure('Name','Horizontal Bar'); barh(data); title('Horizontal Bar Plot'); grid on;

    %% 6. pie - Pie chart
    figure('Name','Pie Chart'); pie([2, 3, 1, 4]); title('Pie Chart');

    %% 7. scatter - Scatter plot
    x = randn(100, 1); y = randn(100, 1);
    figure('Name','Scatter Plot'); scatter(x, y, 36, y, 'filled'); title('Scatter Plot'); colorbar;

    %% 8. area - Area plot
    x = linspace(0, 2*pi, 100); y = abs(sin(x));
    figure('Name','Area Plot'); area(x, y); title('Area Plot'); grid on;

    %% 9. fill - Filled 2D shape
    x = [1 2 3 4]; y = [1 3 2 1];
    figure('Name','Fill Plot'); fill(x, y, 'magenta'); title('Fill Plot');

    %% 10. histogram - Histogram
    data = randn(1000, 1);
    figure('Name','Histogram'); hist(data); title('Histogram');

    %% 11. boxplot - Box plot
    data = randn(100, 4);
    figure('Name','Box Plot'); boxplot(data); title('Box Plot');

    %% 12. heatmap
    data = randi(100, 10, 10);
    figure('Name','Heatmap'); data = randi(100, 10, 10);
    figure('Name','Heatmap (pcolor)');
    pcolor(data);
    shading interp;
    colorbar;
    title('Heatmap via pcolor');
    title('Heatmap');

    %% 13. contour - Contour plot
    [X, Y] = meshgrid(-3:0.1:3, -3:0.1:3);
    Z = peaks(X, Y);
    figure('Name','Contour'); contour(X, Y, Z); title('Contour Plot');

    %% 14. contourf - Filled contour
    figure('Name','Filled Contour'); contourf(X, Y, Z); title('Filled Contour Plot'); colorbar;

    %% 15. surf - Surface plot
    figure('Name','Surface'); surf(X, Y, Z); title('3D Surface'); shading interp; colorbar;

    %% 16. mesh - Wireframe mesh
    figure('Name','Mesh'); mesh(X, Y, Z); title('Mesh Plot');

    %% 17. plot3 - 3D line
    t = linspace(0, 10, 100); x = sin(t); y = cos(t); z = t;
    figure('Name','3D Line'); plot3(x, y, z); title('3D Line Plot'); grid on;

    %% 18. scatter3
    figure('Name','3D Scatter'); scatter3(randn(100,1), randn(100,1), randn(100,1), 36, 'filled'); title('3D Scatter');

    %% 19. quiver
    [Xq, Yq] = meshgrid(-2:0.5:2);
    U = cos(Xq); V = sin(Yq);
    figure('Name','Quiver'); quiver(Xq, Yq, U, V); title('Quiver Plot');

    %% 20. polarplot
    theta = linspace(0, 2*pi, 100); r = abs(sin(2*theta));
    figure('Name','Polar Plot'); polar(theta, r); title('Polar Plot');

    %% 21. compass
    figure('Name','Compass Plot'); compass(randn(10,1), randn(10,1)); title('Compass Plot');

    %% 22. loglog
    x = logspace(0.1, 2, 100); y = x.^2;
    figure('Name','Log-Log Plot'); loglog(x, y); grid on; title('Log-Log Plot');

    %% 23. semilogx
    figure('Name','Semilog X'); semilogx(x, y); grid on; title('Semilog X Plot');

    %% 24. semilogy
    figure('Name','Semilog Y'); semilogy(x, y); grid on; title('Semilog Y Plot');

    %% 25. imagesc
    figure('Name','Imagesc Plot'); imagesc(peaks(30)); colorbar; title('Imagesc Plot');

    disp('Semua plot telah ditampilkan.');
end
