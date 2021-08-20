<!-- README.md is generated from README.Rmd. Please edit that file -->

OpenCaseStudies
===============

<!-- badges: start -->

[![render-README](https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard/workflows/render-README/badge.svg)](https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard/actions)
[![render-index](https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard/workflows/render-index/badge.svg)](https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard/actions)
<!-- badges: end -->

### Important links

-   HTML:
    <a href="https://www.opencasestudies.org/ocs-bp-school-shootings-dashboard" class="uri">https://www.opencasestudies.org/ocs-bp-school-shootings-dashboard</a>
-   GitHub:
    <a href="https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard" class="uri">https://github.com/opencasestudies/ocs-bp-school-shootings-dashboard</a>
-   Bloomberg American Health Initiative:
    <a href="https://americanhealth.jhu.edu/open-case-studies" class="uri">https://americanhealth.jhu.edu/open-case-studies</a>
-   Dashboard:
    <a href="https://rsconnect.biostat.jhsph.edu/ocs-bp-school-shootings-dashboard/" class="uri">https://rsconnect.biostat.jhsph.edu/ocs-bp-school-shootings-dashboard/</a>
-   GitHub repo for dashboard:
    <a href="https://github.com/opencasestudies/ocs-bp-school-shootings-flexdashboard" class="uri">https://github.com/opencasestudies/ocs-bp-school-shootings-flexdashboard</a>

### Disclaimer

The purpose of the [Open Case
Studies](https://opencasestudies.github.io) project is **to demonstrate
the use of various data science methods, tools, and software in the
context of messy, real-world data**. A given case study does not cover
all aspects of the research process, is not claiming to be the most
appropriate way to analyze a given dataset, and should not be used in
the context of making policy decisions without external consultation
from scientific experts.

### License

This case study is part of the
[OpenCaseStudies](https://opencasestudies.github.io) project. This work
is licensed under the Creative Commons Attribution-NonCommercial 3.0
([CC BY-NC 3.0](https://creativecommons.org/licenses/by-nc/3.0/us/))
United States License.

### Citation

To cite this case study:

Wright, Carrie and Ontiveros, Michael and Jager, Leah and Taub, Margaret
and Hicks, Stephanie. (2020).
<https://github.com//opencasestudies/ocs-bp-school-shootings-dashboard>.
School Shootings in the United States (Version v1.0.0).

### Acknowledgments

We would like to acknowledge [Elizabeth
Stuart](https://www.jhsph.edu/faculty/directory/profile/1792/elizabeth-a-stuart)
for assisting in framing the major direction of the case study.

We would also like to acknowledge the [Bloomberg American Health
Initiative](https://americanhealth.jhu.edu/) for funding this work.

### Title

School Shootings in the United States

### Motivation

According to this
[report](https://siepr.stanford.edu/sites/default/files/publications/19-036.pdf)
school shootings can have long lasting impacts on those that witness
them. This article states that:

> Over **240,000** American students experienced a school shooting in
> the last two decades.

Therefore as the number of school shootings apppears to be increasing,
it is useful to better understand the characteristics about these
shootings to better understand why they happen and how to avoid them in
the future. Thus we will make a dashboard to display this data.

The dashboard created in this case study can be found
[here](https://rsconnect.biostat.jhsph.edu/ocs-bp-school-shootings-dashboard/).

### Motivating questions

<b><u> Our main questions: </u></b>

1.  What has been the yearly rate of school shootings and where in the
    country have they occurred in the last 50 years (from January 1970
    to June 2020)?

2.  How many individuals are typically killed in a shooting?

3.  What were the characteristics of the shooters: How often was a
    shooter male? How often did a shooter attempt or commit suicide?

### Data

In this case study we will be using data related to school shootings in
the US from 1970 to June 2020 from the [**Center for Homeland Defense
and Security
(CHDS)**](Center%20for%20Homeland%20Defense%20and%20Security%20(CHDS))
[**K-12 Shool Shooting Database**](https://www.chds.us/ssdb/dataset/).

Their methods for identifying and authenticating incidents are outlined
[here](https://www.chds.us/ssdb/methods/).

Previously according to their website:

*“The database compiles information from more than 25 different sources
including peer-reviewed studies, government reports, mainstream media,
non-profits, private websites, blogs, and crowd-sourced lists that have
been analyzed, filtered, deconflicted, and cross-referenced. **All of
the information is based on open-source information and 3rd party
reporting… and may include reporting errors.**”*

#### Learning Objectives

The skills, methods, and concepts that students will be familiar with by
the end of this case study are:

<u>**Data Science Learning Objectives:**</u>

1.  Importing text from a Google Sheets document (`googlesheets4`)  
2.  Converting date formats (`lubridate`)  
3.  Geocoding data (`ggmap`) and creating a jitter for geocoded data on
    a map (`SF`)
4.  How to reshape data by pivoting between “long” and “wide” formats
    and drop rows with `NA` values (`tidyr`)  
5.  How to create data visualizations with `ggplot2`
6.  An introductory understand of R Markdown  
7.  How to create an interactive table (`DT`)  
8.  How to create a map (`leaflet`)  
9.  How to create an interactive dashboard with `flexdashboard` and
    `shiny`

<u>**Statistical Learning Objectives:**</u>

1.  Calculating percentages for data with missing values

#### Data import

In this case study we demonstrate how to import data from Google Sheets,
however we have also downloaded the data as a CSV file and we demonstate
how to import the data in this format as well.

#### Data wrangling

This case study covers the differences between the various `*_join()`
functions of the `dplyr` package, as well as use of the `case_when()`
function to recode data based on particular evaluations of existing
values.

We also cover removing `NA` values with the `drop_na()` function of the
`tidyr` package, and selecting the last few variables of a tibble using
the `last_col()` function. We cover using the `tidyr` functions such as
`pivot_wider()` and `pivot_longer()` for reshaping data, as well as
arranging levels of factors using the `forcats` package.

Finally, this case study also covers a few of the `stringr` functions to
manipulate character strings, including `str_c()`, `str_detect()`, and
`str_remove()` as well as some of the functions of teh `lubridate`
package for working with data related to dates.

We also cover how to geocode data using the `ggmap` package and how to
modify duplicated locations using the `SF` pacakge so as to avoid
overlapping points on a map.

#### Data Visualization

In this case study we show how to make faceted plots where each plot has
its own y-axis label (which is actually a bit tricky), we show how to
make pie charts with `ggplot2` and we demonstrate how to use the
`waffle` package to create a waffle plot. We also discuss why in some
cases a pie chart might not be a good choice.

We also show how to create an interactive table with the `DT` package,
as well as how to create an interactive map with the `leaflet` package.

### Analysis

This case study does not really include an analysis like other case
studies, but it does domonstrate how to create simple percentage
statistics using a data with missing values, as well as how to properly
report such percentages.

### Other notes and resources

The dashboard created in this case study can be found
[here](https://rsconnect.biostat.jhsph.edu/ocs-bp-school-shootings-dashboard/).

<a href="https://rstudio.com/products/rstudio/features/" target="_blank">RStudio</a>  
<a href="https://github.com/rstudio/cheatsheets/raw/master/rstudio-ide.pdf" target="_blank">Cheatsheet on RStuido IDE</a>  
<a href="https://rstudio.com/resources/cheatsheets/" target="_blank">Other RStudio cheatsheets</a>  
[RStudio projects](https://r4ds.had.co.nz/workflow-projects.html)

<a href="https://www.tidyverse.org/" target="_blank">Tidyverse</a>

<a href="https://cran.r-project.org/web/packages/magrittr/vignettes/magrittr.html" target="_blank">Piping in R</a>

<a href="https://rstudio.com/resources/cheatsheets/" target="_blank">String manipulation cheatsheet</a>  
<a href="https://en.wikipedia.org/wiki/Wide_and_narrow_data" target="_blank">Table formats</a>

[Geocoding](https://en.wikipedia.org/wiki/Geocoding)  
[Coordinate reference system
(CRS)](https://www.w3.org/2015/spatial/wiki/Coordinate_Reference_Systems)
[ESPG](https://en.wikipedia.org/wiki/EPSG_Geodetic_Parameter_Dataset)
[World Geodetic System (WGS) version 84 also called
ESPG:4326](https://en.wikipedia.org/wiki/World_Geodetic_System#WGS84)  
[Albers equal-area conic
projection](https://en.wikipedia.org/wiki/Albers_projection#:~:text=The%20Albers%20equal%2Darea%20conic,that%20uses%20two%20standard%20parallels.&text=The%20Albers%20projection%20is%20used,the%20United%20States%20Census%20Bureau.)  
[crs 102008](https://spatialreference.org/ref/esri/102008/html/)

To learn more about geospatial coordinate systems see
[here](https://www.nceas.ucsb.edu/sites/default/files/2020-04/OverviewCoordinateReferenceSystems.pdf)
and [here](https://guides.library.duke.edu/r-geospatial/CRS).

<a href="http://ggplot2.tidyverse.org" target="_blank"><code>ggplot2</code> package</a>  
Please see [this case
study](https://opencasestudies.github.io/ocs-bp-co2-emissions/) for more
details on using `ggplot2`  
<a href="http://vita.had.co.nz/papers/layered-grammar.html" target="_blank">grammar of graphics</a>  
<a href="https://ggplot2.tidyverse.org/reference/ggtheme.html" target="_blank"><code>ggplot2</code> themes</a>

[Motivating article for this case study about school
shootings](https://link.springer.com/content/pdf/10.1007/s11920-012-0331-6.pdf)

Also see this
[article](https://siepr.stanford.edu/sites/default/files/publications/19-036.pdf)
to learn more about the impacts of school shootings.

[Lightweight markup
languages(LML)](https://en.wikipedia.org/wiki/Lightweight_markup_language)  
[Markdown](https://en.wikipedia.org/wiki/Markdown)  
[R markdown](http://rmarkdown.rstudio.com/)  
[`knitr`](https://yihui.org/knitr/)  
[`rmarkdown`
(package)](https://cran.r-project.org/web/packages/rmarkdown/rmarkdown.pdf)

See this [book](https://bookdown.org/yihui/rmarkdown/) for more
information on working with R Markdown files.

The RStudio [cheatsheet for R
Markdown](https://github.com/rstudio/cheatsheets/raw/master/rmarkdown-2.0.pdf)
and this
[tutorial](https://ourcodingclub.github.io/tutorials/rmarkdown/) are
great for getting started.

[Pandoc](https://en.wikipedia.org/wiki/Pandoc)

[YAML](https://en.wikipedia.org/wiki/YAML)  
[Configuration](https://en.wikipedia.org/wiki/Configuration_file)

[flexdashboard](https://rmarkdown.rstudio.com/flexdashboard/)

See
[here](https://rstudio.com/resources/webinars/introducing-flexdashboards/)
for a video about flexdashboard and
[here](https://rmarkdown.rstudio.com/flexdashboard/) for a more
information on how to use this package.  
See
[here](https://rmarkdown.rstudio.com/flexdashboard/using.html#components)
for a list of other packages that are useful for adding elements to
dashboards created with the `flexdashboard` package.  
See [here](https://www.datadreaming.org/post/r-markdown-theme-gallery/)
for a list of R Markdown themes which can be used with `flexdashbard`.  
See [Font Awesome](https://fontawesome.com/icons?d=gallery) for icons.

To learn more about using `shiny` with the `flexdashboard` package to
create interactive dashboards, see this
[tutorial](https://rmarkdown.rstudio.com/flexdashboard/shiny.html).

[leaflet (R package)](https://rstudio.github.io/leaflet/)  
[Leaflet (JavaScript Library)](https://leafletjs.com/)

[shiny](https://shiny.rstudio.com/)  
See [here](https://shiny.rstudio.com/gallery/) for a gallery of `shiny`
examples.

See this [website](https://rstudio.github.io/shinydashboard/) to learn
about a more flexible and slightly more challenging option for creating
dashboards in R using a package called `shinydashboard`.

<u>**Packages used in this case study:** </u>

<table>
<colgroup>
<col style="width: 43%" />
<col style="width: 56%" />
</colgroup>
<thead>
<tr class="header">
<th>Package</th>
<th>Use in this case study</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><a href="https://github.com/jennybc/here_here" target="_blank">here</a></td>
<td>to easily load and save data</td>
</tr>
<tr class="even">
<td><a href="https://readr.tidyverse.org/">readr</a></td>
<td>to import the data as a csv file</td>
</tr>
<tr class="odd">
<td><a href="https://googlesheets4.tidyverse.org/">googlesheets4</a></td>
<td>to import directly from Google Sheets</td>
</tr>
<tr class="even">
<td><a href="https://tibble.tidyverse.org/">tibble</a></td>
<td>to create tibbles (the tidyverse version of dataframes)</td>
</tr>
<tr class="odd">
<td><a href="https://dplyr.tidyverse.org/" target="_blank">dplyr</a></td>
<td>to filter, subset, join, add rows to, and modify the data</td>
</tr>
<tr class="even">
<td><a href="https://stringr.tidyverse.org/" target="_blank">stringr</a></td>
<td>to manipulate character strings within the data (collapsing strings together, replace values, and detect values)</td>
</tr>
<tr class="odd">
<td><a href="https://magrittr.tidyverse.org/" target="_blank">magrittr</a></td>
<td>to pipe sequential commands</td>
</tr>
<tr class="even">
<td><a href="https://tidyr.tidyverse.org/" target="_blank">tidyr</a></td>
<td>to change the shape or format of tibbles to wide and long, to drop rows with <code>NA</code> values, and to see the last few columns of a tibble</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/ggmap/ggmap.pdf">ggmap</a></td>
<td>to geocode the data (which means get the latitude and longitude values)</td>
</tr>
<tr class="even">
<td><a href="https://r-spatial.github.io/sf/">sf</a></td>
<td>to modify the geocoded data so that overlapping points did not overlap</td>
</tr>
<tr class="odd">
<td><a href="https://lubridate.tidyverse.org/">lubridate</a></td>
<td>to work with the data-time data</td>
</tr>
<tr class="even">
<td><a href="https://rstudio.github.io/DT/">DT</a></td>
<td>to create the interactive table</td>
</tr>
<tr class="odd">
<td><a href="https://www.rdocumentation.org/packages/htmltools/versions/0.5.0">htmltools</a></td>
<td>to add a caption to our interactive table</td>
</tr>
<tr class="even">
<td><a href="https://ggplot2.tidyverse.org/" target="_blank">ggplot2</a></td>
<td>to create plots</td>
</tr>
<tr class="odd">
<td><a href="https://forcats.tidyverse.org/" target="_blank">forcats</a></td>
<td>to reorder factor for plot</td>
</tr>
<tr class="even">
<td><a href="https://github.com/hrbrmstr/waffle">waffle</a></td>
<td>to make waffle proportion plots</td>
</tr>
<tr class="odd">
<td><a href="https://cran.r-project.org/web/packages/poliscidata/poliscidata.pdf">poliscidata</a></td>
<td>to get population values for the states</td>
</tr>
<tr class="even">
<td><a href="https://rmarkdown.rstudio.com/flexdashboard/">flexdashboard</a></td>
<td>to create the dashboard</td>
</tr>
<tr class="odd">
<td><a href="https://shiny.rstudio.com/" target="_blank">shiny</a></td>
<td>to allow our dashboard to be interactive</td>
</tr>
<tr class="even">
<td><a href="https://rstudio.github.io/leaflet/shiny.html">leaflet</a></td>
<td>to implement the <a href="http://leafletjs.com/">leaflet</a> (a JavaScript library for maps) to create the map for our dashboard</td>
</tr>
</tbody>
</table>

#### For users

There is a [`Makefile`](Makefile) in this folder that allows you to type
`make` to knit the case study contained in the `index.Rmd` to
`index.html` and it will also knit the [`README.Rmd`](README.Rmd) to a
markdown file (`README.md`). Note that you may need to press the “Q” key
to close the documentation about flexdashboard.

Users can skip the Data Import and Data Wrangling sections to start with
the Data Analysis and Visualization section if they wish. Alternatively
users can also start at the Dashboard Basics or Our Dashboard sections.

#### For instructors

Instructors who only wish to demonstrate the basics of how to create a
dashboard with `flexdashboard` can simply use the `Dashboard Basics`
section, this would likely only take one or two class sessions to cover.

Instructors can skip the Data Import and Data Wrangling sections to
start with the Data Analysis section if they wish.

#### Target audience

This case study is appropriate for those new to R programming. It is
also appropriate for more advanced R users who are new to the Tidyverse.
This particular case study may require some introductory knowlege of R
programming.

#### Suggested homework

Create another dashboard with graphs and statistics featuring other
elements within this dataset. For example, students may create graphs
that explore what school events are reported to have more shootings.
Students could be asked to use one of the pages of the dashboard that we
created as an example.
