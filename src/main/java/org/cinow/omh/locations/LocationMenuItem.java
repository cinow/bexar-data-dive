package org.cinow.omh.locations;

import org.cinow.omh.menu.Item;

/**
 * This object represents a location menu item.
 */
public class LocationMenuItem implements Item {

	/**
	 * The id.
	 */
	private String id;

	/**
	 * The category id.
	 */
	private String categoryId;

	/**
	 * The name (English).
	 */
	private String name_en;

	/**
	 * The name (Spanish).
	 */
	private String name_es;

	/**
	 * The description (English).
	 */
	private String description_en;

	/**
	 * The description (Spanish).
	 */
	private String description_es;

	private boolean hasData;

	/**
	 * @return id
	 */
	@Override
	public String getId() {
		return this.id;
	}

	/**
	 * @param id the id to set
	 */
	@Override
	public void setId(String id) {
		this.id = id;
	}

	/**
	 * @return categoryId
	 */
	public String getCategoryId() {
		return categoryId;
	}

	/**
	 * @param categoryId the categoryId to set
	 */
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	/**
	 * @return name_en
	 */
	@Override
	public String getName_en() {
		return this.name_en;
	}

	/**
	 * @param name_en the name_en to set
	 */
	@Override
	public void setName_en(String name_en) {
		this.name_en = name_en;
	}

	/**
	 * @return name_es
	 */
	@Override
	public String getName_es() {
		return this.name_es;
	}

	/**
	 * @param name_es the name_es to set
	 */
	@Override
	public void setName_es(String name_es) {
		this.name_es = name_es;
	}

	/**
	 * @return description_en
	 */
	@Override
	public String getDescription_en() {
		return description_en;
	}

	/**
	 * @param description_en the description_en to set
	 */
	@Override
	public void setDescription_en(String description_en) {
		this.description_en = description_en;
	}

	/**
	 * @return description_es
	 */
	@Override
	public String getDescription_es() {
		return description_es;
	}

	/**
	 * @param description_es the description_es to set
	 */
	@Override
	public void setDescription_es(String description_es) {
		this.description_es = description_es;
	}

	public boolean isHasData() {
		return hasData;
	}

	public void setHasData(boolean hasData) {
		this.hasData = hasData;
	}
}
