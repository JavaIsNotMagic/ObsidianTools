package com.haxium.basicmod.obsidian.armor;

import cpw.mods.fml.relauncher.Side;
import cpw.mods.fml.relauncher.SideOnly;
import net.minecraft.creativetab.CreativeTabs;
import net.minecraft.item.Item;
import net.minecraft.item.ItemStack;
public class tabHaxCraftBlocks extends CreativeTabs {
	public tabHaxCraftBlocks(String label) {
	super(label);
}

	@Override
	@SideOnly(Side.CLIENT)
public ItemStack getIconItemStack(){
		// Here you make the Icon of the creative Tab
		return new ItemStack(ObsidianArmor.obsidite_ore);
	}
	public String getTranslatedTabLabel(){
		// Here the Name
		return "HaxCraft Blocks";
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