object tito {
    var cantidad = 0
    var bebida = cianuro
    method peso() = 70
    method inerciaBase() = 490
    method consumir(unaCantidad,unaBebida) {
        bebida = unaBebida
        cantidad = unaCantidad
    }
    method bebida() = bebida

    method velocidad() {
        return bebida.rendimiento(cantidad)
        * self.inerciaBase() / self.peso()
    }
}

object wisky {
    method rendimiento(cantidad) = 0.9 ** cantidad

    method cantidadDeNutrientes() = 0
}
object cianuro {
    method rendimiento(cantidad) = 0

    method cantidadDeNutrientes() = -500
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }

    method cantidadDeNutrientes() = 5
}

object licuado {
    const cantidadDeNutrientes = []

    method rendimiento(cantidad) = cantidadDeNutrientes.sum() * cantidad

    method agregar(elementoParaAgregar) {
        cantidadDeNutrientes.add(elementoParaAgregar.cantidadDeNutrientes())
    }
}

object aguaSaborizada {
    var bebidaMezclada = terere

    method rendimiento(cantidad) = 1 + bebidaMezclada.rendimiento(cantidad) / 4

    method mezclar(unaBebida) {
        if (unaBebida != self) {
            bebidaMezclada = unaBebida
        } 
        else {
            bebidaMezclada = terere
        }
    }

    method cantidadDeNutrientes() = 1
}

object coctelSuave {
    const bebidas = [wisky, terere]

    method rendimiento(cantidad) {
        const bebidasAConsiderar = bebidas.filter({bebida => bebida.rendimiento(cantidad) > 0.5})
        return bebidasAConsiderar.sum({bebida => bebida.rendimiento(cantidad)})
    }

    method agregar(unaBebida) {
        bebidas.add(unaBebida)
    }

    method cantidadDeNutrientes() = 10
}

object coctel {
    const bebidas = [wisky, terere]

    method rendimiento(cantidad) {
        const bebidasAConsiderar = bebidas.map({bebida => bebida.rendimiento(cantidad)})
        return bebidasAConsiderar.fold(1, {multiplicador, rendimiento => multiplicador * rendimiento})
    }

    method agregar(unaBebida) {
        bebidas.add(unaBebida)
    }

    method cantidadDeNutrientes() = 20
}

//Frutas y demás para el licuado
object banana {
    method cantidadDeNutrientes() = 1
}

object naranja {
    method cantidadDeNutrientes() = 2
}

object kiwi {
    method cantidadDeNutrientes() = 5
}

object hielo {
    method cantidadDeNutrientes() = 0
}

object leche {
    method cantidadDeNutrientes() = 50
}

