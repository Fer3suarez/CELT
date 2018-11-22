# CELT #
Demodulador y decodificador de
la señal DCF77

# DESCRIPCIÓN GENERAL
 
La señal DCF77 es una señal de radio utilizada para el sincronismo de relojes que se transmite
desde la ciudad alemana de Mainflingen, a una frecuencia de 77,5 KHz. La emisora es de gran
potencia (50 KW) por lo que dicha señal puede captarse a distancias muy lejanas del transmisor (ha
llegado a captarse hasta a 2000 Km de distancia). La
zona de cobertura alcanza la práctica totalidad de la Península Ibérica. Dicha señal consta de una portadora modulada en amplitud por una señal de bits con una tasa
binaria de 1 bit/s. Los datos digitales contienen información acerca de la hora, la fecha, el día de la
semana y alguna información adicional y se obtienen a partir de un reloj atómico, por lo que la
precisión es muy alta y está principalmente limitada por los retardos de propagación desde el
transmisor a los distintos receptores.
La señal DCF77 está activa desde 1959, aunque se hizo muy popular en la década de los años 80
para la sincronización de relojes de uso doméstico y personal, donde la precisión no es
extremadamente importante. Actualmente sigue siendo muy utilizada tanto en estos elementos, como
en algunos instrumentos meteorológicos que pueden encontrarse en el mercado.
En este prototipo vamos a realizar un demodulador y decodificador a partir de una versión
simplificada de la señal DCF77. Se proporcionará un archivo MP3 con una señal digital de hora y
minutos (exclusivamente), modulada sobre una portadora de 1 KHz. Este archivo puede reproducirse
con cualquier dispositivo portátil MP3 evitando de esta forma la construcción de un receptor
complejo.

# Objetivo de este proyecto

El objetivo de este proyecto es diseñar y construir un sistema analógico/digital para demodular la
señal horaria descrita en el apartado anterior y presentar su valor en 4 displays de 7 segmentos. El
circuito analógico se realizará con componentes discretos, mientras que el hardware digital se
desarrollará describiendo sus módulos en VHDL y sintetizándolo finalmente sobre la FPGA Spartan
3E contenida en la tarjeta BASYS2 del laboratorio.
El cometido del circuito analógico será tomar como entrada la señal de salida de un reproductor mp3
y demodularla para obtener una señal digital donde la portadora modulada al 50% se represente por
un nivel de tensión de 0V y la portadora no modulada se represente por un nivel de tensión de 5 V.
El circuito digital deberá tomar como entrada esta secuencia de niveles de tensión y decodificarla
para obtener la señal BCD correspondiente a la hora, presentándola en los 4 displays de 7
segmentos de la tarjeta BASYS2. Este circuito funcionará de forma continua de manera que cada 15
segundos se actualizará la lectura de la hora en los displays.

