function nocollide= LiangBarsky(p1,p2,rec)
dx = p2(1)-p1(1) * 1.0;
dy = p2(2)-p1(2) * 1.0;
t0 = 0.0;
t1 = 1.0;
nocollide=0;
checks = [-dx, p1(1) - rec(1);
           dx, (rec(1)+rec(3)) - p1(1);
          -dy,  p1(2) - rec(2);
           dy, ((rec(2)+rec(4)) - p1(2))];

for i=1:size(checks,1)
    
    if (checks(i,1) == 0 &&  checks(i,2) < 0)
        nocollide=1;
        
    end
    if (checks(i,1) ~= 0)
        r = checks(i,2) / (checks(i,1) * 1.0);

        if checks(i,1) < 0
            if r > t1
                nocollision=1;
               
            elseif r > t0
                t0 = r
            end
       else
            if r < t0
                nocollision=1;
                
            elseif r < t1
                t1 = r
            end
        end
    end
end

end