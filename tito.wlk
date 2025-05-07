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
}
object cianuro {
    method rendimiento(cantidad) = 0
}

object terere {
    method rendimiento(cantidad) {
        return 1.max(cantidad * 0.1)
        //tambien (cantidad * 0.1).max(1)
    }
}

object licuado {
    const cantidadDeNutrientes = []

    method rendimiento(cantidad) = cantidadDeNutrientes.sum() * cantidad

    method agregar(elementoParaAgregar) {
        cantidadDeNutrientes.add(elementoParaAgregar)
    }
}

object aguaSaborizada {
    var bebidaMezclada = terere

    method rendimiento(cantidad) = 1 + bebidaMezclada.rendimiento(cantidad) / 4

    method mezclar(unaBebida) {
        if (unaBebida != aguaSaborizada) {
            bebidaMezclada = unaBebida
        } 
        else {
            bebidaMezclada = terere
        }
    }
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
}