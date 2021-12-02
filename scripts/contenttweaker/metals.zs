#loader contenttweaker

import mods.contenttweaker.item.ItemBuilder;
import mods.contenttweaker.item.tool.ItemBuilderTool;
import mods.contenttweaker.block.BlockBuilder;

function generateResources(itemName as string, parts as string[]) as void {
    for part in parts {
        new ItemBuilder().build(itemName+"_"+part);
    }
}

var metals = {
    "arcane_gold": ["dust", "nugget", "gear", "plate", "rod"],
    "infused_iron": ["dust", "nugget", "gear", "plate", "rod"],
    "tainted_gold": ["dust", "nugget", "gear", "plate", "rod"]
} as string[][string];

for key in metals {
    var arr = metals[key];
    generateResources(key, arr);
}