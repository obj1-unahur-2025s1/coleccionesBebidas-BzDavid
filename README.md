# Bebidas parte 2 (colecciones y bloques)

Tito ahora no sólo puede tomar las bebidas existentes, sino que hay nuevas bebidas y puede hacer mezclas con las bebidas existentes. 

- Licuado de frutas: está hecho por varias frutas que es imposible identificar, pero se conocen los nutrientes que aporta cada una. Cada litro que se consuma (1000 cm3) da un rendimiento igual a la suma de todos los nutrientes. Al licuado se le pueden agregan mas frutas, leche, hielo u otros ingrediente, pero sólo se registran los nutrientes correspondientes.
- Agua "saborizada". Se trata de una composicioń de ¾ de agua y ¼ de alguna de las otras bebidas. La parte de agua aporta una unidad de rendimiento más el proporcional de la bebida. Por ejemplo, 10 cm3 de agua con whisky otorga un rendimiento de 1 más lo que aporten los 2.5 cm3 de wisky. 
- Coctel: está compuesto por una serie de bebidas, todas en la misma proporción. El rendimiento es el producto de los rendimientos de las bebidas que lo componen. Por ejemplo, si hubiera cianuro en el coctel su rendimento va a ser 0 sin importar las otras bebidas. 
- Coctel suave: está compuesto por una serie de bebidas, todas en la misma proporción. El rendimiento es la suma de los rendimientos de las bebidas que un rendimiento mayor a 0.5.

El requerimiento es el mismo que en la primera parte, hacer que Tito tome cierta cantidad de una bebida y pueda responder su velocidad. 
Para pensar:
- ¿Si se le agregan nuevos ingredientes al licuado luego que forme parte del coctel, afecta al rendimiento que otorta el coctel? 
- ¿Puede el coctel incluir a la vez whisky y agua saborizada con whisky?
- ¿Puede el coctel incluir el agua saborizada con coctel?
