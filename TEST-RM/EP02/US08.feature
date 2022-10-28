Feature: US08: Como paciente quiero confirmar mi compra y el método de pago para poder registrar mi pedido

    Scenario: Confirmación de datos de pedido
    Given que el paciente se encuentre en el panel de confirmación de compras
    When ingrese "Nombres"
    And ingrese "Dirección"
    And ingrese "Número de celular"
    Then los datos se guardarán en el pedido
Examples:
| Nombre        | Dirección          | Número de celular |
| Tito Arévalo  |  UPC San Isidro    |   982734562       |
| Luisa Tello   |  Av. Monterrey 275 |   912384248       |

    Scenario: Selección del método de pago
    Given que el paciente se encuentre en el panel de confirmación de compras
    When seleccione "Método de pago"
    Then se registrará el pedido satisfactoriamente
Examples:
|   Métodos de pago  |
|   Visa             |
|   Mastercard       |
|   Efectivo         |

    Scenario: El paciente desea cancelar el pedido
    Given que el paciente se encuentre conforme con lo adquirido.
    When seleccione = "Cancelar pedido"
    Then el pedido previamente adquirido y pagado pasará a evaluación para su posterior cancelación.
Examples:
| Cancelar pedido | 
| Si              |
| No              |
