function [ xiter ] = fixpt( x0, g, max_num )

%x0=6, a=6.015503072969339
%g(x)=6.28+sin(x)

xiter=zeros(max_num+1,1);
xiter(1)=x0;
for i=2:max_num+1
    xiter(i)=g(xiter(i-1));
end

end