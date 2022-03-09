

x = [197,165,174,102,152,124,121,186,136,133,181,110,103,121,147,142,138,137,183,127]
y = [3.281,3.117,2.75,1.686,2.907,2.159,1.772,2.57,2.263,2.138,3.143,1.6,1.632,1.557,2.955,2.34,2.417,1.955,2.585,2.186]




x_avg = sum(x)/length(x);
y_avg = sum(y)/length(y);
numerator=0
dividend=0
for i = 1:length(x)
  x_factor = x(i)-x_avg;
  y_factor = y(i)-y_avg;
  numerator += x_factor*y_factor
  dividend += power(x(i)-x_avg,2);
 endfor
b = numerator/dividend
# a = y -bx  ->  a = 4.5 - 0.9b (we take a random point (197,3.281)
a = 3.281-(197*b)

#normal formula: y = a+bx
y_regress = a + b*x

#plot data and lin. regression line
scatter(x,y)
hold on
plot(x,y_regress)
grid on
