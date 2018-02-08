format compact
pi
ans =
    3.1416
%% izveidosim matricu
A = [123;456;789]
A =
   123
   456
   789
A
A =
   123
   456
   789
A = [1 2 3 4; 5 6 7 8; 9 10 11 12]
A =
     1     2     3     4
     5     6     7     8
     9    10    11    12
A
A =
     1     2     3     4
     5     6     7     8
     9    10    11    12
A = [1 2 3 4; 5 6 7 8; 9 10 11 12];
A
A =
     1     2     3     4
     5     6     7     8
     9    10    11    12
%% uzzimesim grafiku
% zimesim 2.kartas polinomu
C = [-2 5 6];
X = -6:2
X =
    -6    -5    -4    -3    -2    -1     0     1     2
X = -6:2:6
X =
    -6    -4    -2     0     2     4     6
Y = C(1)x^2+(2)*x+C(3)
 Y = C(1)x^2+(2)*x+C(3)
         ↑
{Error: Unexpected MATLAB expression.
} 
Y = C(1)*X.^2 + (2)*X + C(3)
Y =
   -78   -34    -6     6     2   -18   -54
plot(x,y)% funkcija plot zimee grafikus
{Undefined function or variable 'x'.} 
plot(X,Y)% funkcija plot zimee grafikus
%samazinasim soli
x2 = -6:0.01:6;
y2 = C(1)*x2.^2 + (2)*x2 + C(3);
plot(x2,y2)
plot(x2,y2)
% vair'aki grafiki uz vienaam asiim
plot(X,Y,x2,y2)
%linijas izskata maina (1)
plot(X,Y,'o')
plot(X,Y,'o')
plot(X,Y,'g')
plot(X,Y,':')
plot(X,Y,'og:')
help plot
 <strong>plot</strong>   Linear plot. 
    <strong>plot</strong>(X,Y) plots vector Y versus vector X. If X or Y is a matrix,
    then the vector is plotted versus the rows or columns of the matrix,
    whichever line up.  If X is a scalar and Y is a vector, disconnected
    line objects are created and plotted as discrete points vertically at
    X.
 
    <strong>plot</strong>(Y) plots the columns of Y versus their index.
    If Y is complex, <strong>plot</strong>(Y) is equivalent to <strong>plot</strong>(real(Y),imag(Y)).
    In all other uses of <strong>plot</strong>, the imaginary part is ignored.
 
    Various line types, plot symbols and colors may be obtained with
    <strong>plot</strong>(X,Y,S) where S is a character string made from one element
    from any or all the following 3 columns:
 
           b     blue          .     point              -     solid
           g     green         o     circle             :     dotted
           r     red           x     x-mark             -.    dashdot 
           c     cyan          +     plus               --    dashed   
           m     magenta       *     star             (none)  no line
           y     yellow        s     square
           k     black         d     diamond
           w     white         v     triangle (down)
                               ^     triangle (up)
                               <     triangle (left)
                               >     triangle (right)
                               p     pentagram
                               h     hexagram
                          
    For example, <strong>plot</strong>(X,Y,'c+:') plots a cyan dotted line with a plus 
    at each data point; <strong>plot</strong>(X,Y,'bd') plots blue diamond at each data 
    point but does not draw any line.
 
    <strong>plot</strong>(X1,Y1,S1,X2,Y2,S2,X3,Y3,S3,...) combines the plots defined by
    the (X,Y,S) triples, where the X's and Y's are vectors or matrices 
    and the S's are strings.  
 
    For example, <strong>plot</strong>(X,Y,'y-',X,Y,'go') plots the data twice, with a
    solid yellow line interpolating green circles at the data points.
 
    The <strong>plot</strong> command, if no color is specified, makes automatic use of
    the colors specified by the axes ColorOrder property.  By default,
    <strong>plot</strong> cycles through the colors in the ColorOrder property.  For
    monochrome systems, <strong>plot</strong> cycles over the axes LineStyleOrder property.
 
    Note that RGB colors in the ColorOrder property may differ from
    similarly-named colors in the (X,Y,S) triples.  For example, the 
    second axes ColorOrder property is medium green with RGB [0 .5 0],
    while <strong>plot</strong>(X,Y,'g') plots a green line with RGB [0 1 0].
 
    If you do not specify a marker type, <strong>plot</strong> uses no marker. 
    If you do not specify a line style, <strong>plot</strong> uses a solid line.
 
    <strong>plot</strong>(AX,...) plots into the axes with handle AX.
 
    <strong>plot</strong> returns a column vector of handles to lineseries objects, one
    handle per plotted line. 
 
    The X,Y pairs, or X,Y,S triples, can be followed by 
    parameter/value pairs to specify additional properties 
    of the lines. For example, <strong>plot</strong>(X,Y,'LineWidth',2,'Color',[.6 0 0]) 
    will create a plot with a dark red line width of 2 points.
 
    Example
       x = -pi:pi/10:pi;
       y = tan(sin(x)) - sin(tan(x));
       plot(x,y,'--rs','LineWidth',2,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','g',...
                       'MarkerSize',10)
 
    See also <a href="matlab:help plottools">plottools</a>, <a href="matlab:help semilogx">semilogx</a>, <a href="matlab:help semilogy">semilogy</a>, <a href="matlab:help loglog">loglog</a>, <a href="matlab:help plotyy">plotyy</a>, <a href="matlab:help plot3">plot3</a>, <a href="matlab:help grid">grid</a>,
    <a href="matlab:help title">title</a>, <a href="matlab:help xlabel">xlabel</a>, <a href="matlab:help ylabel">ylabel</a>, <a href="matlab:help axis">axis</a>, <a href="matlab:help axes">axes</a>, <a href="matlab:help hold">hold</a>, <a href="matlab:help legend">legend</a>, <a href="matlab:help subplot">subplot</a>, <a href="matlab:help scatter">scatter</a>.

    <a href="matlab:doc plot">Reference page for plot</a>
    <a href="matlab:matlab.internal.language.introspective.overloads.displayOverloads('plot')">Other functions named plot</a>

plot(X,Y,'xr--')
plot(X,Y,'hr--')
plot(X,Y,'xr-')
plot(X,Y,'xr>')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(X,Y,'xb^')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(X,Y,'xb^-')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Error in color/linetype argument.} 
plot(X,Y,'xr --)
 plot(X,Y,'xr --)
          ↑
{Error: Character vector is not terminated properly.
} 
plot(X,Y,'xr --')
% vair'aki grafiki uz vienaam asiim
% vair'aki grafiki uz vienaam asiim (papildinajums)
plot(X,Y,'x',x2,y2)
%citas grafiskaas funkcijas
stem(X,Y)
stairs(X,Y)
%% vairaki grafiki uz uz vienaam asiim (2)ver
t = 0:0.01:1;
f1=1;f2 = 1;
y1 = sin(2*pi*f*f1*t);
{Undefined function or variable 'f'.} 
y1 = sin(2*pi*f1*t);
y2 = sin(2*pi*f2*t);
stairs (t,y1,'k')
hold on %iesaldeet asis
stars(t,y2,'b')
{Undefined function or variable 'stars'.} 
stairs(t,y2,'b')
y2 = cos(2*pi*f2*t);
stairs(t,y2,'b')
stairs(t,y1,'k')
hold off %izsleegt iesaldesanu
% uzraksti uz asiim
xlabel('t,s')
ylabel('U,V')
grid
title('Mans pirmais grafiks')
legend('sinusoiida','kosinosiida')
gtext('teksts ko ieliksim ar peles palidziibu')
% datu nolasisana
ginput(2)
ans =
    0.1353    0.7118
    0.1299    0.7087
% interaaktiva grafika maina
mans_grafiks(t,y1,y2)
{Index exceeds matrix dimensions.
Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mans_grafiks', '/home/user/matlab_darbi/mans_grafiks.m', 19)" style="font-weight:bold">mans_grafiks</a> (<a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',19,0)">line 19</a>)
set(stairs1(2),'DisplayName','kosinosiida','Color',[0 0
1]);} 
mans_grafiks(t,y2,y2)
{Index exceeds matrix dimensions.
Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mans_grafiks', '/home/user/matlab_darbi/mans_grafiks.m', 19)" style="font-weight:bold">mans_grafiks</a> (<a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',19,0)">line 19</a>)
set(stairs1(2),'DisplayName','kosinosiida','Color',[0 0
1]);} 
mans_grafiks(t,y1,y2,y2)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mans_grafiks')" style="font-weight:bold">mans_grafiks</a>
Too many input arguments.} 
mans_grafiks(t,y1,y2)
{Index exceeds matrix dimensions.
Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mans_grafiks', '/home/user/matlab_darbi/mans_grafiks.m', 19)" style="font-weight:bold">mans_grafiks</a> (<a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',19,0)">line 19</a>)
set(stairs1(2),'DisplayName','kosinosiida','Color',[0 0
1]);} 
mans_grafiks(t,y2,y1)
{Index exceeds matrix dimensions.
Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('mans_grafiks', '/home/user/matlab_darbi/mans_grafiks.m', 19)" style="font-weight:bold">mans_grafiks</a> (<a href="matlab: opentoline('/home/user/matlab_darbi/mans_grafiks.m',19,0)">line 19</a>)
set(stairs1(2),'DisplayName','kosinosiida','Color',[0 0
1]);} 
%% lisazu figuras
edit
lisazu
{Error: <a href="matlab: opentoline('/home/user/matlab_darbi/lisazu.m',4,9)">File: lisazu.m Line: 4 Column: 9
</a>Unexpected MATLAB expression.} 
lisazu
lisazu
lisazu
lisazu
lisazu
lasazu(1,2)
{Undefined function or variable 'lasazu'.} 
lisazu(1,2)
{Attempt to execute SCRIPT lisazu as a function:
/home/user/matlab_darbi/lisazu.m} 
lisazu2(1,2)
lisazu2(5,8)
lisazu2(56,8)
lisazu2(123,8)
lisazu2(1765,8)
lisazu2(2000,8)
lisazu2(202,8)
lisazu2(202,202)
lisazu2(202,22)
lisazu2(202,212)
lisazu2(202,201)
lisazu2(202,2017)
lisazu2(24,32)
help lisazu2
 si ir funkcija, to izsauc tikai no comandlog, ar komandu lisazu(2,3),
 ar run nestradaas

lisazu3
{Not enough input arguments.
Error in <a href="matlab:matlab.internal.language.introspective.errorDocCallback('lisazu3', '/home/user/matlab_darbi/lisazu3.m', 8)" style="font-weight:bold">lisazu3</a> (<a href="matlab: opentoline('/home/user/matlab_darbi/lisazu3.m',8,0)">line 8</a>)
x = cos(2*pi*f1*t+faze);} 
lisazu3(2,3)
lisazu3(2,3)
lisazu3(2,3)
lisazu3(34,56)
diary off
