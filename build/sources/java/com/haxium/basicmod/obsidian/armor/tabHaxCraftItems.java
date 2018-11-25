package com.haxium.basicmod.obsidian.armor;

import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.ItemStack;
import net.minecraft.item.Item;
import cpw.mods.fml.relauncher.Side;
import cpw.mods.fml.relauncher.SideOnly;

public class tabHaxCraftItems extends CreativeTabs {
public tabHaxCraftItems(String label) {
	super(label);
}

@Override
@SideOnly(Side.CLIENT)
public ItemStack getIconItemStack(){
// Here you make the Icon of the creative Tab
	return new ItemStack(ObsidianArmor.obsidian_sword);
}
public String getTranslatedTabLabel(){
	// Here the Name
	return "HaxCraft Items";
	}
@Override
@SideOnly(Side.CLIENT)
public Item getTabIconItem() {
	return new Item(); 
}
@SideOnly(Side.CLIENT)
public int func_151243_f()
{
    return 0; 
	}
}
