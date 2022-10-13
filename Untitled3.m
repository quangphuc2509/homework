BoardSize = 300; SquareNumber = 5; SquareSize = BoardSize/SquareNumber; 
i = 0; j = 0;i1 = 1; j1 = 2;
l01 = 0; l02 = 0;
l2 = 220; l3 = 220; l4 = 150; r = BoardSize/(4*SquareNumber); l1 = 100;
xij = (BoardSize/SquareNumber)*(j+0.5); yij = (BoardSize/SquareNumber)*(i+0.5);
xij1 = (BoardSize/SquareNumber)*(j1+0.5); yij1 = (BoardSize/SquareNumber)*(i1+0.5);
xa1 = xij+r ; ya1 = yij+r ;
xb1 = xij-r; yb1 = yij-r ;
xa2 = xij-r ; ya2 = yij+r ;
xb2 = xij+r; yb2 = yij-r ;

fig = figure('Name','CaroBot','NumberTitle','off');

hold on;
grid on;

view([40 50]);

axis manual;
axis fill;
axis equal;
axis([0 400 0 400 0 20]);

Coner = [0 0 0];
Origin = [0 0 0];

for i = 0:1:SquareNumber
    line([(Coner(1) + i * SquareSize) (Coner(1) + i * SquareSize)],[(Coner(2)) (Coner(2) + BoardSize)],'Color','k','LineWidth',1); 
    line([(Coner(1)) (Coner(1) + BoardSize)],[(Coner(2) + i * SquareSize) (Coner(2) + i * SquareSize)],'Color','k','LineWidth',1);
end


for t = 0:0.01:1
    
    x = xa1 + (xb1-xa1)*t;
    y = ya1 + (yb1-ya1)*t;
    
    A = x+l01;
    B = y-l02;
    
    c2 = (A^2 + B^2 - l2^2 - l3^2)/(2*l2*l3);
    s2 = sqrt(abs(1 - c2^2));
    t2 = atan2(s2,c2);
    
    s1 = B*(l3*c2 + l2) - A*(l3*s2);
    c1 = A*(l3*c2 + l2) + B*(l3*s2);
    t1 = atan2(s1,c1);
    
    Px = l2*cos(t1) + l3*cos(t1 + t2) - l01;
    Py = l2*sin(t1) + l3*sin(t1 + t2) + l02;
    Pz = l1 - l4;
    
    plot3(Px,Py,0,'.r');
    pause(0.002);
    hold on;
    grid on;
   
end

for t = 0:0.01:1
    
    x = xa2 + (xb2-xa2)*t;
    y = ya2 + (yb2-ya2)*t;
    
    A = x+l01;
    B = y-l02;
    
    c2 = (A^2 + B^2 - l2^2 - l3^2)/(2*l2*l3);
    s2 = sqrt(abs(1 - c2^2));
    t2 = atan2(s2,c2);
    
    s1 = B*(l3*c2 + l2) - A*(l3*s2);
    c1 = A*(l3*c2 + l2) + B*(l3*s2);
    t1 = atan2(s1,c1);
    
    Px = l2*cos(t1) + l3*cos(t1 + t2) - l01;
    Py = l2*sin(t1) + l3*sin(t1 + t2) + l02;
    Pz = l1 - l4;
    
    plot3(Px,Py,0,'.r');
    pause(0.001);
    hold on;
    grid on;
   
end

for t = 0:0.01:2*pi
    
    x = xij1 + r*cos(t);
    y = yij1 + r*sin(t);
    
    A = x+l01;
    B = y-l02;
    
    c2 = (A^2 + B^2 - l2^2 - l3^2)/(2*l2*l3);
    s2 = sqrt(abs(1 - c2^2));
    t2 = atan2(s2,c2);
    
    s1 = B*(l3*c2 + l2) - A*(l3*s2);
    c1 = A*(l3*c2 + l2) + B*(l3*s2);
    t1 = atan2(s1,c1);
    
    Px = l2*cos(t1) + l3*cos(t1 + t2) - l01;
    Py = l2*sin(t1) + l3*sin(t1 + t2) + l02;
    Pz = l1 - l4;
    
    plot3(Px,Py,0,'.b');
    pause(0.002);
    hold on;
    grid on;
   
end

 
