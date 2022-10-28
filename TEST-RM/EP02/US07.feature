Feature: US07: Como paciente quiero agregar y eliminar productos de un carro de compras para mantener mi compra organizada

    Scenario: Agregar productos a carro de compras
    Given que el paciente se encuentre en la lista de productos que brinda la app
    When escoja un producto
    And seleccione = "Cantidad"
    And seleccione = "Agregar al carro de compras"
    Then el producto es agregado al carro de compras
Examples:
|   Cantidad    | Agregar al carro de compras |
|       1       | Agregar pastilla            |
|       1       | Agregar jarabe              |
|       2       | Agregar inyectable          |

    Scenario: Eliminar producto agregado
    Given que el paciente se encuentre en el carro de compras
    When escoja "Producto a eliminar"
    Then el producto será eliminado del carro de compras
| Producto a eliminar |
|     Pastilla        |
|     Jarabe          |
|    Inyectable       |

    Scenario: Filtros de productos
    Given que el paciente se encuentre en el carro de compras
    When el paciente escoja "Confirmar compra"
    Then seré redirigido al panel de pago y confirmación de compras
Examples:
|   Confirmar compra  |
|   Si                |
|   No                |

    Scenario: Reconfiguración del método de pago
    Given previamente el paciente haya configurado un método de pago
    When seleccione "Métodos de pago"
    Then el método de pago registrado en la cuenta del paciente es reconfigurado con el nuevo método de pago
Examples:
|   Métodos de pago  |
|   Visa             |
|   Mastercard       |
|   Efectivo         |

