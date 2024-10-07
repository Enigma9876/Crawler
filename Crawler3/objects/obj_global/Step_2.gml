//// Get all elements from the layer
//var elements = layer_get_all_elements("Instances_Objects");

//// Loop through the elements array
//for (var i = 0; i < array_length(elements); i++) 
//{
//    var element_id = elements[i]; 
    
//    if (layer_get_element_type(element_id) == layerelementtype_instance) 
//	{
//        var inst_id = layer_instance_get_instance(element_id); 
        
//        if (instance_exists(inst_id)) 
//		{
//            var obj_type = object_get_name(inst_id.object_index);
			
//			if(obj_type == "obj_enemy1")
//			{
//				global.grid_contents[inst_id.y][inst_id.x] = "enemy";
//			}
//			else if(obj_type == obj_player)
//			{
//				global.grid_contents[inst_id.y][inst_id.x] = "player";
//			}
//        }
		
//    }
//}