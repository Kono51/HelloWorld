function Laplace(N,T)
%% This verison of 'Laplace' is mine -Connor Blandford
%  If you are looking for the matlab 'laplace' loss the
%  capital and you're good.
    close all;
    xstart=0; xstop=0.4;
    ystart=0; ystop=0.4;
    stepx=(xstop-xstart)/N; stepy =(ystop-ystart)/N;
    x=xstart:stepx:xstop;
    y=ystart:stepy:ystop;
    T = T;
    Nx=length(x);
    Ny=length(y);
    V(1:Ny,1:Nx)=1;
    V(:,1)=0; V(:,Nx)=0;
    V(1,:)=0; V(Ny,:)=0;
    for i=1:T % set up 100 iterations
        V(26,11:30)=10; V(16,11:30)=-10;
        if ~mod(i,10)
            [Ex,Ey] = gradient(V);
            figure(i);
            contour(V,11); hold on; quiver(-Ex,-Ey); hold off;
            %         figure(i)
            %         imagesc(V)
        end
%         if ~mod(i,50)
%             if sum(sum(abs(V(i)-V(i-1)))) < (Nx*Ny)*1e-4                
%                 fprintf('The difference is between successive iterations is less then Nx*Ny*1e-3\n');
%                 break
%             end
%         end
        for n=2:Ny-1
            for m=2:Nx-1
                V(n,m)=1/4*(V(n-1,m)+V(n+1,m)+V(n,m-1)+V(n,m+1));
            end
        end
    end
end 