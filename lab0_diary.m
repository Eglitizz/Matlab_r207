%% uzzimet 2.kartas polinomu
C = [2 3 -4]

C =

     2     3    -4

C = [2 3 -4];
X = -6:2:6

X =

    -6    -4    -2     0     2     4     6

y = C(1)*x.^2+C(2)*x+c(3)\
 y = C(1)*x.^2+C(2)*x+c(3)\
                           ↑
{Error: Invalid expression. Check for missing or extra characters.
} 
y = C(1)*x.^2+C(2)*x+c(3)
{Undefined function or variable 'c'.
} 
y = C(1)*x.^2+C(2)*x+C(3)

y =

     1    10    23
    40    61    86

y = C(1)*x.^2+C(2)*x+C(3)

y =

     1    10    23
    40    61    86

x

x =

     1     2     3
     4     5     6

y = C(1)*X.^2+C(2)*X+C(3)

y =

    50    16    -2    -4    10    40    86

plot(x,y) % ar sho zimejam grafiku
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(x,y) % ar sho zimejam grafiku
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(X,y) % ar sho zimejam grafiku
plot(X,y, 'o')
plot(X,y, 'o')
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

plot(X,y, 'r', '.')
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Invalid data argument.
} 
plot(X,y, 'r.:')
x2 = -6:0.01:6;
y2 = C(1)*x2.^2+C(2)*x2+C(3);
plot(x2,y2, 'r.:')
%Ka uzzimet 2 grafikus
plot(x,y,x2,y2)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Vectors must be the same length.
} 
plot(X,y,x2,y2)
% citas grafiskas funkcijas
stem(x,y)
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('stem', '/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/stem.m', 43)" style="font-weight:bold">stem</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/specgraph/stem.m',43,0)">line 43</a>)
X must be same length as Y.
} 
stem(X,y)
stairs(X,y)
bar (X,y)
%interaktiva linijas izskata mainja
%nospiezh bulti- edit current object 
%nospiezh bultinu - aktivize liniju
%edit-current object properites
plot(X,y)
mans_grafiks.m
{Undefined variable "mans_grafiks" or class "mans_grafiks.m".
} 
mans_grafiks(X,y)
mans_grafiks(x2, y2)
mans_grafiks(X, y )
%kaa uzzimet 2 grafikus -2 
t = 0:0.01:1;
y1 = sin(2*pi*t);
y2 = cos(2*pi*t);
stairs(t,y1)
hold on %iesalde asis
stairs (t,y2)
hold off
% anotacija uz asim
xlabel('t,s')
stairs (t,y2)
xlabel('t,s')
ylabel('signals, V')
title('Mans grafiks')
grid
legend('sin','cos')
[Warning: Ignoring extra legend entries.] 
[> In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>set_children_and_strings', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 646)" style="font-weight:bold">legend>set_children_and_strings</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',646,0)">line 646</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend>make_legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 316)" style="font-weight:bold">legend>make_legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',316,0)">line 316</a>)
  In <a href="matlab:matlab.internal.language.introspective.errorDocCallback('legend', '/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p', 259)" style="font-weight:bold">legend</a> (<a href="matlab: opentoline('/usr/local/MATLAB/R2018a/toolbox/matlab/scribe/legend.p',259,0)">line 259</a>)] 
gtext('\leftarrow sin')
%lisazu figuras
plot
{Error using <a href="matlab:matlab.internal.language.introspective.errorDocCallback('plot')" style="font-weight:bold">plot</a>
Not enough input arguments.
} 




exit
%lisazu figuras
edit
lisazu
lisazu
lisazu
diary off
