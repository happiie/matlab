function [sqnr,a_quan,code]=uPCM(a,n)
n=8;
for i=1:2;
t=[0:0.1:10]; 
x = sin(t).^2;
y = cos(t).^2;
a= x-y;
amax=max(abs(a));
a_quan=a/amax;
b_quan=a_quan;
d=2/n;
q=d.*[0:n-1];
q=q-((n-1)/2)*d;
for i=1:n
    a_quan(find((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2)))=...
    q(i).*ones(1,length(find((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2))));
    b_quan(find(a_quan==q(i)))=(i-1).*ones(1,length(find(a_quan==q(i))));
end 
a_quan=a_quan*amax;
nu=ceil(log2(n));
code=zeros(length(a),nu);
for i=1:length(a)
    for j=nu:-1:0
        if (fix(b_quan(i)/(2^j)) == 1)
            code(i,(nu-j)) = 1;
            b_quan(i) = b_quan(i) - 2^j;
        end
    end
end
sqnr=20*log10(norm(a)/norm(a-a_quan));
plot(t,a,'-');
hold on;
plot(t,a_quan,'-');
n=n+8;
title('Quantization of uniform PCM for 8 and 16 levels');
xlabel('time');
ylabel('Amplitude');
legend('16-levels','8-levels','sin(t)');
end






