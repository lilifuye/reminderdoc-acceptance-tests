Feature: US06: Como paciente quiero buscar los productos que necesito por filtros para obtener directamente las recomendaciones de las medicinas que necesito

    Scenario: Búsqueda de productos
    Given que el paciente se encuentre en la sección de compras por farmacias afiliadas
    When ingrese "Búsqueda"
    Then  se mostrará la lista de productos disponibles de acuerdo a la búsqueda
Examples:
|     Búsqueda      |
|    Paracetamol    |
|    Amoxicilina    | 

    Scenario: Filtros de categorías
    Given que le paciente se encuentre en la sección de compras por farmacias afiliadas
    When seleccione = "Categorías"
    And escoja = "Filtro"
    Then se mostrará la lista de categorías organizadas según los productos disponibles
Examples:
|   Categorías   |  Filtro  | 
|   Pastillas    |  Precio  | 
|   Jarabes      |  Nombre  | 

    Scenario: Filtros de productos
    Given que el paciente se encuentre en la sección de compras por farmacias afiliadas
    When seleccione = "Filtrar por"
    And escoja la opción de filtro
    Then se mostrará la lista de productos disponibles según el filtro seleccionado
Examples:
|  Filtrar por | 
|  Precio      | 
|  Nombre      | 

    Scenario: Activar o desactivar filtración de productos
    Given que el paciente haya previamente filtrado los productos deseados
    When me encuentre en la sección de filtros buscados
    And seleccione el filtro que esté a su agrado
    And active la búsqueda de filtros
    And desactive la búsqueda de filtros
    Then los filtros buscados aparecerán cada vez que ingrese nuevamente

