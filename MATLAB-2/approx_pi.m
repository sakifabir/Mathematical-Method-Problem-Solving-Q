function mypi = approx_pi(num_iters)
debug = 0;
radius = 1.0;
num_boxes = 1;
old_sum = 0;
for (iter = 1 : num_iters)
  
  box_length = (2.0*radius)/num_boxes;
  box_rad = box_length*0.5;
  box_area = box_length*box_length;

  area_sum = 0;
  for (xi = 1 : num_boxes)
    xc = -1 + box_rad + box_length*(xi - 1);
    if (debug > 0)
      fprintf(1, 'iter %5d  box %5d  xc %9.4e \n', iter, xi, xc);
    end
    
    for (yi = 1 : num_boxes)
      yc = -1 + box_rad + box_length*(yi - 1);
         dist = sqrt((xc*xc) + (yc*yc));
      if (dist < radius)
        area_sum = area_sum + box_area;
        if (debug > 1)
          fprintf(1, '    box %9.4e %9.4e  dist %9.4e inside  sum %9.4e\n', ...
                         xc, yc, dist, area_sum);
        end
      end
    end 
  end

  fractional_change = abs((area_sum - old_sum)/area_sum);
  if (debug > 0)
    fprintf(1, '  area = %9.4e  old = %9.4e   change %9.4e \n', ...
           area_sum, old_sum, fractional_change);
  end

  mypi = area_sum/(radius*radius);
  fprintf(1, '  iter %5d  boxes %8d  pi %10.6f  frac_change %9.4e \n', ...
              iter, num_boxes*num_boxes, mypi, fractional_change);

  old_sum = area_sum;
  num_boxes = num_boxes*2;
  iter = iter + 1;
end
mypi = area_sum/(radius*radius);