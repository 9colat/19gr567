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
figure
plot(Longitude3/10000000)
figure
plot(Latitude3/10000000,Longitude3/10000000)
figure
plot(distarry)
