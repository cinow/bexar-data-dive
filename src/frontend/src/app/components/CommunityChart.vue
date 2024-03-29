<template>
	<div 
		:ref="'chart_container_' + this.indicatorId" 
		:id="'chart_container_' + this.indicatorId" 
		:style="{ width: '100%', height: orientation === 'vertical' ? '400px' : '600px' }"
	>
	</div>
</template>

<script>
import { mapState } from 'vuex'
import i18n from '@/i18n'
import * as echarts from 'echarts/core';
import { SVGRenderer } from 'echarts/renderers';
import { AriaComponent, LegendComponent, GridComponent, TitleComponent } from 'echarts/components';
import { BarChart, CustomChart } from 'echarts/charts';
import { format } from '@/services/formatter'

export default {
	name: 'CommunityChart',
	props: {
		indicatorId: {
			type: String
		},
		indicatorType: {
			type: Object
		},
		indicatorName: {
			type: String
		},
		data: {
			type: Array,
		},
		maxDemographics: {
			type: Number
		},
		filterType: {
			type: Object
		},
		labelsOrLines: {
			type: String
		},
		orientation: {
			type: String,
			default: 'vertical'
		}
	},
	data() {
		return {
			chart: null
		}
	},
	computed: {
		...mapState(['locale']),
		smallScreen() {
			return document.body.clientWidth <= 1440;
		}
	},
	watch: {
		locale() {
			this.drawChart()
		},
		data() {
			this.drawChart()
		},
		labelsOrLines() {
			this.drawChart()
		}
	},
	mounted () {
		echarts.use([SVGRenderer, AriaComponent, LegendComponent, GridComponent, BarChart, CustomChart, TitleComponent]);
		window.addEventListener('resize', () => {
			this.chart.resize();
		});
		this.drawChart();
	},
	methods: {
		drawChart() {
			if (this.chart) {
				this.chart.dispose();
			}
			this.chart = echarts.init(document.getElementById('chart_container_' + this.indicatorId), null, { renderer: 'svg'});
			let textStyle = {
				fontFamily: '"Roboto", sans-serif !important',
				fontSize: this.smallScreen ? '14px' : '16px'
			};
			let option = {};
			option.grid = { left: 40, right: 200, containLabel: true };
			let valueAxis = this.orientation === 'vertical' ? 'yAxis' : 'xAxis';
			let categoryAxis = this.orientation === 'vertical' ? 'xAxis' : 'yAxis';
			option[valueAxis] = { 
				type: 'value', 
				splitLine: { show: false },
				splitNumber: 1,
				axisLabel: textStyle
			};
			let xAxisData = Array.from(new Set(this.data.map(d => '' + (d.demographicFilter['name_' + this.locale] || i18n.t('data.all')))));
			if (xAxisData.length < this.maxDemographics) {
				xAxisData = xAxisData.concat(...Array.from(Array(this.maxDemographics - xAxisData.length))).map(d => d || '')
			}
			option[categoryAxis] = [{ 
				type: 'category', 
				data: xAxisData,
				axisTick: { show: false },
				axisLabel: { ...textStyle, fontWeight: 'bold', interval: 0, width: '80', overflow: 'break', lineHeight: 20, color: '#333333' }
			}];
			option.textStyle = textStyle;
			option.color = '#3b5a98';
			if (this.orientation === 'horizontal') {
				option.grid.left = 100;
			}
			option.series = [];
			
			let series = [
				{ 
					type: 'bar', 
					cursor: 'default',
					emphasis: {
						disabled: true
					},
					barWidth: this.orientation === 'vertical' ? '120px' : '40px',
					label: { 
						//show: this.labelsOrLines === 'labels', 
						show: true,
						position: this.orientation === 'vertical' ? 'top' : 'right',
						formatter: (o) => {
							if (o.data.suppressed) {
								return '{a|' + i18n.t('data.suppressed') + '}';
							} else if (o.data.noData) {
								return '{a|' + i18n.t('data.no_data') + '}';
							} else if (this.labelsOrLines !== 'labels') {
								return '';
							}

							let rows = ['{a|' + i18n.t('data.value') +': ' + format(this.indicatorType.id, o.data.value) + '}'];
							if (o.data.moeLow || o.data.moeHigh) {
								rows.push('{b|' + i18n.t('data.moe_range') 
									+ ': ' 
									+ format(this.indicatorType.id, o.data.moeLow)
									+ " - "
									+ format(this.indicatorType.id, o.data.moeHigh) + '}');
							}
							return rows.join('\n');
						},
						rich: { 
							a: {
								align: this.orientation === 'vertical' ? 'center' : 'left',
								fontSize: this.smallScreen ? '12px' : '16px',
								fontWeight: 'bold',
								lineHeight: '20',
								color: '#333333'
							},
							b: {
								align: this.orientation === 'vertical' ? 'center' : 'left',
								fontSize: this.smallScreen ? '10px' : '14px',
								lineHeight: '16',
								color: '#666666'
							}
						}
					}
				}
			];
			if (this.labelsOrLines === 'lines') {
				series.push(
					{
						type: 'custom',
						name: 'error',
						renderItem: function() {
							return {
								type: 'group'
							}
						}
					}
				);
			}
			
			let seriesData = this.data
				.map(dataPoint => { 
					return { 
						value: dataPoint.suppressed || dataPoint.value === null ? 0 : dataPoint.value, 
						moeLow: dataPoint.moeLow, 
						moeHigh: dataPoint.moeHigh,
						noData: dataPoint.value === null,
						suppressed: dataPoint.suppressed 
					}; 
				});
			series[0].data = seriesData;
			if (this.labelsOrLines === 'lines') {
				series[1].data = seriesData.map((d, i) => [xAxisData[i], d.moeHigh, d.moeLow]);
			}
			option.series = series;
			option.aria = { enabled: true };
			let allValues = option.series[0].data.map(d => d.value);
			if (this.labelsOrLines === 'lines') {
				allValues = allValues.concat(...option.series[0].data.map(d => d.moeHigh || 0));
				allValues = allValues.concat(...option.series[0].data.map(d => d.moeLow || 0));
			}
			let maxValue = Math.max(...allValues);
			let minValue = Math.min(0, ...allValues);
			let rounder = 1;
			for (let i = 1; i < Math.floor(maxValue).toString().length; i++) {
				rounder = rounder * 10;
			}
			let axisMax = Math.ceil(maxValue / rounder) * rounder;
			let axisMin = Math.floor(minValue / rounder) * rounder;
			option[valueAxis].max = axisMax;
			option[valueAxis].min = axisMin;
			option[valueAxis].axisLabel.formatter = (value) => {
				return value === axisMin || value === axisMax || value === 0 ? value : ''	;
			};
			this.chart.setOption(option);

			if (this.labelsOrLines === 'lines') {
				window.setTimeout(() => {
					this.chart.setOption({
						series: [
							{
								name: 'error',
								renderItem: function(params, api) {
									let xValue = api.value(0);
									let highPoint = api.coord([xValue, api.value(1)]) || 0;
									let lowPoint = api.coord([xValue, api.value(2)]) || 0;
									let halfWidth = Math.min(20, api.size([1, 0])[0] * 0.1);
									let style = {
										stroke: '#b8237e',
										fill: null,
										lineWidth: 2
									};
									return {
										type: 'group',
										children: [
											{
												type: 'line',
												transition: ['shape'],
												shape: {
													x1: highPoint[0] - halfWidth,
													y1: highPoint[1],
													x2: highPoint[0] + halfWidth,
													y2: highPoint[1]
												},
												style: style
											},
											{
												type: 'line',
												transition: ['shape'],
												shape: {
													x1: highPoint[0],
													y1: highPoint[1],
													x2: lowPoint[0],
													y2: lowPoint[1]
												},
												style: style
											},
											{
												type: 'line',
												transition: ['shape'],
												shape: {
													x1: lowPoint[0] - halfWidth,
													y1: lowPoint[1],
													x2: lowPoint[0] + halfWidth,
													y2: lowPoint[1]
												},
												style: style
											}
										]
									}
								},
								encode: {
									x: 0,
									y: [1, 2]
								},
								z: 100
							}
						]
					});
				}, 1000);
			}
		}
	},
}
</script>

<style lang="scss" scoped>

</style>