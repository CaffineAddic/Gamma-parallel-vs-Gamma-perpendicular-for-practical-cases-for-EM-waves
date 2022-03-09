i = 1;
while(i==1)
c = input("Press 1 for Air-Glass interface. \nPress 2 for Glass-Water interface. \nPress 3 for Air-Water interface.\nEnter you choice: ")
if c == 1  
  n1 = 120*pi;
  n2 = 60*pi;7
elseif c == 2
  n1 = 60*pi;
  n2 = 40/3*pi;1
else 
  n1 = 120*pi;
  n2 = 40/3*pi;
endif  
o1 = linspace(0, pi/2, 10000);
o2 = asin((n2/n1)*sin(o1));
p1 = (n2.*cos(o2)-n1.*cos(o1))./(n2.*cos(o2)+n1.*cos(o1));
p2 = (n2.*cos(o1)-n1.*cos(o2))./(n2.*cos(o1)+n1.*cos(o2));
p1 = p1.**2;
p2 = p2.**2;
grid on
plot(o1, p2, 'r')
xlabel("Angle of incidence")
yticklabels({'0','0.5E','E','1.5E','2E'})
xticklabels({'0','PI/4','PI/2'})
hold on
plot(o1, p1, 'g')  
ylabel("Reflection Co-effiecient")
yticks([-2 -1 0 1 2])
xticks([0 0.5 1])
i = input("press 1 to view an another case else press any other key: \n");1
endwhile