package com.haxium.basicmod.obsidian.armor;

import net.minecraft.item.ItemPickaxe;


public class ItemObsidianPickaxe extends ItemPickaxe {
	public ItemObsidianPickaxe(ToolMaterial material, String name) {
		super(material);
		setUnlocalizedName(ObsidianArmor.MODID + "_" + name);
		setTextureName("obsidian_armor:" + name);
		setCreativeTab(ObsidianArmor.tabHaxCraftItems);
		this.canRepair = true;
	}
}
