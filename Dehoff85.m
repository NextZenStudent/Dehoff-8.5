
axis([0,1,0,1000])
x = linspace(0,1,1000);

G = 6250*x.*((1-x).^2);

h = animatedline;
h.Color = 'red';
h.LineWidth = 4;
set(gcf, 'Position',  [300, 300, 600, 600])

for k = 1:length(x)
    addpoints(h,x(k),G(k));
    drawnow
end

