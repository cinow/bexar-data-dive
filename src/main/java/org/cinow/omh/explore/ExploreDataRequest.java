package org.cinow.omh.explore;

/**
 * This object represents a request to explore data in the Explore view.
 * 
 * @author brian
 */
public class ExploreDataRequest {
	
	/**
	 * The indicator.
	 */
	private String indicator;

	/**
	 * The filters.
	 */
	private FilterRequest filters;

	/**
	 * The comparisons
	 */
	private CompareRequest comparisons;

	/**
	 * The trendComparisons
	 */
	private CompareRequest trendComparisons;

	/**
	 * @return the indicator
	 */
	public String getIndicator() {
		return indicator;
	}

	/**
	 * @param indicator the indicator to set
	 */
	public void setIndicator(String indicator) {
		this.indicator = indicator;
	}

	/**
	 * @return the filters
	 */
	public FilterRequest getFilters() {
		return filters;
	}

	/**
	 * @param filters the filters to set
	 */
	public void setFilters(FilterRequest filters) {
		this.filters = filters;
	}

	/**
	 * @return the comparisons
	 */
	public CompareRequest getComparisons() {
		return comparisons;
	}

	/**
	 * @param comparisons the comparisons to set
	 */
	public void setComparisons(CompareRequest comparisons) {
		this.comparisons = comparisons;
	}

	/**
	 * @return the trendComparisons
	 */
	public CompareRequest getTrendComparisons() {
		return trendComparisons;
	}

	/**
	 * @param trendComparisons the trendComparisons to set
	 */
	public void setTrendComparisons(CompareRequest trendComparisons) {
		this.trendComparisons = trendComparisons;
	}
}
