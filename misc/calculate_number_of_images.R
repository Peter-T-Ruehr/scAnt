x_min = 0
x_step = 50
x_max = 330

y_min = 0
y_step = 80
y_max = 1600

z_min = -25300
z_step = 1000
z_max = 15300

steps_x = ceiling((x_max - x_min) / x_step)
steps_x

steps_y = ceiling((y_max - y_min) / y_step)
steps_y

steps_z = ceiling((z_max - z_min) / z_step)
steps_z

steps_all = steps_x * steps_y * steps_z
steps_all
