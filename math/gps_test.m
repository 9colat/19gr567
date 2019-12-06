

truepose()=[,];


for i=1:size(gpsdata,1)
distarry(i)=pos2dist(truepose[1],truepose[2],gpsdata(i,1),gpsdata(i,2),2);
end

S=var(distarry);
Xbar=mean(distarry);

max(abs(distarry));

t_95=tinv(0.05,size(gpsdata,1)-1)


t_95+Xbar