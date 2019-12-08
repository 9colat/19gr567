clear workspace

truepose=[57.015766, 9.985115];


for i=1:size(Longitude3,1)
distarry(i)=(pos2dist(truepose(1),truepose(2),Latitude3(i)/10000000,Longitude3(i)/10000000,2))*1000;
end

S=var(distarry)
Xbar=mean(distarry);

maximum=max(abs(distarry));

t_95=tinv(0.05,size(distarry,2)-1);


something=(Xbar+t_95*(S/sqrt(size(distarry,2))));
close all
figure
plot(Latitude3/10000000)%,Longitude3/10000000)
hold on
title('A plot of the latitude data from the gps at 1 Hz')
xlabel('Time [s]') 
ylabel('Latitude') 
hold off
figure
plot(Longitude3/10000000)
hold on
title('A plot of the longitude data from the gps at 1 Hz')
xlabel('Time [s]') 
ylabel('Longitude') 
hold off
figure
plot(Latitude3/10000000,Longitude3/10000000)
hold on
title('A plot of the position data from the gps at 1 Hz')
xlabel('Longitude') 
ylabel('Latitude') 
hold off
figure
plot(distarry)
hold on
title('The distance to the true GPS position')
xlabel('Time [s]') 
ylabel('Distance [m]') 
hold off
