
! Clase base (Superclase)
type :: Shape
    real :: area
end type

! Subclase que hereda de Shape
type, extends(Shape) :: Circle
    real :: radius
end type

! Subclase que hereda de Shape
type, extends(Shape) :: Rectangle
    real :: length
    real :: width
end type

! Función para calcular el área de un círculo
subroutine calc_area_circle(circ)
    class(Circle), intent(inout) :: circ
    circ%area = 3.14159 * circ%radius**2
end subroutine

! Función para calcular el área de un rectángulo
subroutine calc_area_rectangle(rect)
    class(Rectangle), intent(inout) :: rect
    rect%area = rect%length * rect%width
end subroutine

program InheritanceExample
    type(Circle) :: myCircle
    type(Rectangle) :: myRectangle

    myCircle%radius = 5.0
    call calc_area_circle(myCircle)
    print *, "Área del círculo:", myCircle%area

    myRectangle%length = 6.0
    myRectangle%width = 4.0
    call calc_area_rectangle(myRectangle)
    print *, "Área del rectángulo:", myRectangle%area
end program