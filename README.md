# bcn-temps
Data and scripts for some graphics on Barcelona temperatures.

## Data
The historic data (`long-data`) starts in 1780 and is the oldest temperature series of the Iberic Peninsula.

>  Prohom M, Barriendos, Aguilar E, Ripoll R (2012): [Recuperación y análisis de la serie de temperatura diaria de Barcelona, 1780-2011](http://static-m.meteo.cat/wordpressweb/wp-content/uploads/2014/11/20105602/Ref_publicacio_aec.pdf). Cambio Climático. Extremos e Impactos, Asociación Espanola de Climatología, Serie A, Vol. 8, 207–21

The data from the [Observatori Fabra](http://www.fabra.cat/meteo/dades/dades.html) (`fabra-avg`) is the most reliable. The series starts in 1914 (although mine comes from 1950) and it has been calculated from [this dataset](http://www.meteo.cat/wpweb/climatologia/serveis-i-dades-climatiques/series-climatiques-historiques/).


## R script
The script handles the conversion from wide to long format for the `long-data` csv, needed for the data visualization code. It also filters the columns.

`historic-data` is the generated data for visualization.

There's also another part which generates a scatterplot with a smoothed line via [LOESS](https://en.wikipedia.org/wiki/Local_regression), a graphic used on the article as well.
