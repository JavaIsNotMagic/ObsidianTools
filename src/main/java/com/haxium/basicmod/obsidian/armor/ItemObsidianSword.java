package com.haxium.basicmod.obsidian.armor;

import net.minecraft.item.ItemSword;

public class ItemObsidianSword extends ItemSword {
	public ItemObsidianSword(ToolMaterial material, String name) {
		super(material);
		setUnlocalizedName(ObsidianArmor.MODID + "_" + name);
		setTextureName("obsidian_armor:" + name);
		this.canRepair = true;
		setCreativeTab(ObsidianArmor.tabHaxCraftItems);
	}
};
