//collision_line_ext(x1, y1, x2, y2, object, precision)

x_ = argument0;
y_ = argument1;

angle = point_direction(x_, y_, argument2, argument3);

for(i = 0; i < point_distance(x_, y_, argument2, argument3); i += argument5)
{
    x_ += lengthdir_x(argument5, angle);
    y_ += lengthdir_y(argument5, angle);
    draw_point(x_, y_);
}
