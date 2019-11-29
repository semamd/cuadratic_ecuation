a=input('Multiplier of x square: ');
b=input('Multiplier of x: ');
c=input('Single term: ');
display = '';
delta = b^2 - 4*a*c;


if a==0 && b ==0
    if c==0
        fprintf('All the solutions are valid')
    end
else
    result = 0;
    display = '1sol';
end

if a==0
    if c ~= 0
        result = (-c)/b;
        display = '1sol';
    else
        result = 0;
        display = '1sol';
    end
end

if b == 0
    if c>0
        fprintf('No solution, sqrt(negative number)')
    else
        result = sqrt(-c/a);
        display = '1sol';
    end
end


if c==0
    result = 0 +','+ (-b/a);
    display = '2sol';
end


if b~=0 && c~=0 && a~=0
    if delta > 0
        x1 = (-b+sqrt(delta))/(2*a);
        x2 = (-b-sqrt(delta))/(2*a);
        display = '2sol';
    end
    if delta== 0
        result = (-b)/(1*a);
        display = '1sol';
    end
    if delta < 0
        fprintf('No solution, sqrt(negative number)');
    end
end

if c==0
    if a~=0
        result = (-b)/a;
    end
end



switch display
    case '1sol'
        fprintf('The solution of the ecuation is %.2e', result);
    case '2sol'
        fprintf('The solutions of the ecuation are %.3f and %.3f', x1, x2);
end
