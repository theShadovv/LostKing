global.hnet_buffer = buffer_create(1, buffer_grow, 1);
global.hnet_buffer_size = 4;
global.hnet_message_id = argument0;
buffer_seek(global.hnet_buffer, buffer_seek_start, 0);

buffer_write(global.hnet_buffer, buffer_u8, 251);
buffer_write(global.hnet_buffer, buffer_u8, argument0);

var value = argument1;
buffer_write(global.hnet_buffer, buffer_u8, floor(value/256));
buffer_write(global.hnet_buffer, buffer_u8, value % 256);

