function f=kerial(g,b)
g=im2double(g);
[x,y]=size(g);
[x1,y1]=size(b);
f=zeros(x,y);
g_s=zeros(x+x1-1,y+y-1);
g_s((x1-1)/2+1:x+(x1-1)/2,(y1-1)/2+1:y+(y1-1)/2)=g;
for i=(x1-1)/2+1:x+(x1-1)/2
    for j=(y1-1)/2+1:y+(y1-1)/2
        f(i-(x1-1)/2,j-(y1-1)/2)=sum(sum(g_s(i-(x1-1)/2:i+(x1-1)/2,j-(y1-1)/2:j+(y1-1)/2).*b));
    end
end
end