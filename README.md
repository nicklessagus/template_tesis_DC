# Template Tesis DC extendido

Se organizó el documento de forma de poder trabajar independientemente por capítulos (_/chapters/chapter-X.tex_) y a su vez tener un _main.tex_ que englobe toda la tesis (para carátula, seccionado y cuestiones generales).

## Organización
* `/img`

Directorio con todas las imágenes, está declarado en _\graphicspath_ y tiene en cuenta el tema de los capítulos, así que cuando se referencia una imagen simplemente hay que poner el nombre, no hace falta poner la ruta.

* `/chapters`

Los capítulos, cada capítulo puede ser compilado independientemente y genera su TOC, lista de ToDO's y bibliografia.

## Paquetes necesarios
Se utilizaron varios paquetes de LaTeX que podrian no estar en la instalación standard, instalar si hacen falta:

**Hyperref**

Hyperlinks en el pdf, tanto para URL o referencias internas.

**Subfiles**

Cada _chapter-*.tex_ puede ser compilado de forma independiente para trabajar mas cómodo y enfocarse en cada sección sin tener que compilar todo.

**Draft**

Los capítulos pueden tener una marca de agua con la leyenda _DRAFT_ esta etiqueta se pone y se saca con:

* `\draftwatermarkon`
* `\draftwatermarkoff`

La marca en el main es independiente de los capítulos, o sea, puede haber capítulos terminados y sin embargo el main estar en _draft_, esta seria la última marca a sacar :) .

**ToDO**

El paquete **ToDO** sirve para poner etiquetas de cosas a aclaraciones para mirar mas adelante, los comandos más útiles son:

* `\todo{Make a cake}`
* `\missingfigure`
* `\missingfigure{poner dibujo de X}`
* `\listoftodos` (un TOC de ToDO's)

**Varios**

Paquetes que se usan por ahí (además del paquete de tesis que ya está incluido):
subcaption, pgfplots, color, listings, setspace.

# Compilado
Dos sabores

## Editor preferido
Cualquier editor a gusto (compilar con pdflatex o XeLaTeX) si se compila el _main.tex_ se compila TODO, si se edita y compila algún capítulo por separado se va a compilar SOLO ese cap.
No se puede hacer más sencillo _insertar imagen de René Lavand_

## Makefile
Para no mandarme cagadas borrando y demás hay un Makefile (bastante chapucero por cierto :P) con las órdenes clásicas:

`make clean`

Limpia todo lo temporal y los pdf (incluidas carpetas)

`make` 

Genera _Tesis-Cosme-Fulanito.pdf_, es el informe completo.

`make chapter-1`

Genera _/chapters/chapter-1.pdf_, se entiende (y obvio que si se cambia el número va cambiando el cap a compilar)

**Bugs**

Por algún motivo cuando se compila el documento completo el drafwatermark cambia una página antes que termine el capítulo, por ejemplo: Si se pone una marca de agua solo en el capítulo 1 va a estar, SALVO en la última página. Idem si se pone la marca de agua en el documento general pero se va sacando en los capítulos, en la última página de cada uno se cuela el "DRAFT". Misterio
                                                  
