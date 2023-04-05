const vis = d3.select("#vis") // select the div element to contain the chart
const data = employee // get data from Looker

// set up the chart dimensions
const margin = { top: 20, right: 20, bottom: 30, left: 40 }
const width = vis.attr("width") - margin.left - margin.right
const height = vis.attr("height") - margin.top - margin.bottom

// create the x and y scales
const xScale = d3.scaleLinear().range([0, width])
const yScale = d3.scaleBand().range([0, height]).padding(0.1)

// set the domain of the x and y scales
xScale.domain([0, d3.max(data, d => d.value)])
yScale.domain(data.map(d => d.label))

// create the x and y axes
const xAxis = d3.axisBottom(xScale)
const yAxis = d3.axisLeft(yScale)

// append the x and y axes to the chart
vis.append("g").attr("transform", `translate(${margin.left}, ${height + margin.top})`).call(xAxis)
vis.append("g").attr("transform", `translate(${margin.left}, ${margin.top})`).call(yAxis)

// create the bars
vis.selectAll(".bar")
  .data(data)
  .enter()
  .append("rect")
  .attr("class", "bar")
  .attr("x", margin.left)
  .attr("y", d => yScale(d.label) + margin.top)
  .attr("width", d => xScale(d.value))
  .attr("height", yScale.bandwidth())
  .attr("fill", "steelblue")
