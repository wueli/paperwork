function test()


[Gx,Gy,pot]=pot2grad('Bilder/example2.bmp','bmp'); %Bild einlesen
quiver(Gx,Gy)
hold on
contour(pot)
axis([0 250 0 250])
hold off
end