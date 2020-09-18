*** SERIES DE TIEMPO: CREAR FECHAS ***

** Generar variable trimestral **

generate date = tq(2000q1) + _n-1

format %tq date

** Generar variable mensual ** 

gen mdate = ym(2015, 1) + _n 

format %tm mdate

** Generar variable anual **

gen year=1990+_n-1

** Para crear datos semanales **
* Instalar la paqueteria **
ssc install tsmktim

tsmktim time, start(1973w7)

** Datos semanales: segunda opción

generate tiempo=tw(2020w12)+_n-1
format tiempo %tw

** Datos diarios **

generate time2=td(18apr1962)+_n-1
format time2 %td

