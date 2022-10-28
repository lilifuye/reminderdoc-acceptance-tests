Feature: US10: Como paciente quiero hacer seguimiento de mis compras realizadas para ver el estado de mis pedidos

    Scenario: Estado de pedidos
    Given que el paciente se encuentre en el menú de pedidos realizados
    When visualice la sección de pedidos
    Then podrá visualizar "Lista de pedidos pendientes"
| Lista de pedidos pendientes | 
|       #s3801ssd             |
|       #s192jmnsa            |

    Scenario: Recepción de pedidos
    Given el paciente haya recibido el producto
    When se encuentre en el menú de pedidos realizados
    Then en su cuenta se le marcará el producto pendiente como "Entregado"
Examples:
| Entregado |
| Si        |
| No        |

    Scenario: El paciente devolver el pedido
    Given el paciente no se encuentre conforme con el producto adquirido.
    When se dirija a su cuenta
    And seleccione "Devolver producto"
    Then podré devolver el producto previamente adquirido junto con "Cantidad de retorno"
    And deberá esperar "Estado de devolución"
Examples:
| Devolver producto  |  Cantidad de retorno | Estado de devolución |
| Paracetamol        |      25 soles        |       Finalizado     |
| Jarabe             |      79 soles        |       En proceso     |

