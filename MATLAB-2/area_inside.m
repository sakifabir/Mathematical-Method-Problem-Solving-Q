function area_sum = area_inside(radius, num_boxes)
 
  box_length = (2.0*radius)/num_boxes;
  box_rad = box_length*0.5;
  box_area = box_length*box_length;

  area_sum = 0;
  for (xi = 1 : num_boxes)
    xc = -1 + box_rad + box_length*(xi - 1);
    
    for (yi = 1 : num_boxes)
      yc = -1 + box_rad + box_length*(yi - 1);
      
   
    
      dist = sqrt((xc*xc) + (yc*yc));
      if (dist < radius)
        area_sum = area_sum + box_area;
      end
     
    end 
  end
