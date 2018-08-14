<h1> Liang barsky algorithm </h1>

•The Liang–Barsky algorithm uses the parametric equation of a line and inequalities describing the range of the clipping window to determine the intersections between the line and the clip window. With these intersections it knows which portion of the line should be drawn. This algorithm is significantly more efficient than Cohen–Sutherland. The idea of the Liang–Barsky clipping algorithm is to do as much testing as possible before computing line intersections.


• I reproduced the algorithm from the C code from https://gist.github.com/ChickenProp/3194723

•The explanations of the above website are comprehensive. Also, the reason why I did not explain it again.
