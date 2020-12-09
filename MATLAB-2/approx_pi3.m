function mypi = approx_pi3(num_iters)

debug = 0;

radius = 1.0;
num_boxes = 1;
old_sum = 0;
for (iter = 1 : num_iters)

  area_sum = area_inside(radius, num_boxes);
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
