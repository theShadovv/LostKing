//amp_equipment_drag(origin_slot, destination_slot);
hnet_message_start(34);
hnet_write_byte(argument0);
hnet_write_byte(argument1);
hnet_message_send();
