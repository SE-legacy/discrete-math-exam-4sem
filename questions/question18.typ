= Произведение и деление производящих функций.
== Произведение производящих функций
/ Произведение производящих функций: $A(t) = limits(sum)^(infinity)_(n = 0) a_n t^n$ и $B(t) = limits(sum)^(infinity)_(n = 0) b_n t^n$ 

$ C(t) = A(t) dot B(t) = c_0 + c_1 t + dots + c_n t^n + dots = limits(sum)^(infinity)_(n = 0) c_n t^n $

где

$
c_0 = a_0 dot b_0\
c_1 = a_0 dot b_1 + a_1 dot b_0\
c_2 = a_0 dot b_2 + a_1 dot b_1 + a_2 dot b_0\
dots dots dots\
c_n = a_0 dot b_n + a_1 b_(n - 1) + a_2 b_(n- 2) + dots + a_n b_0\
dots
$

$
(a_0 + a_1 t + a_2 t^2 + dots) (b_0 + b_1 t + b_2 t^2 + dots) = c_0 + c_1 t + c_2 t^2 + dots
$

=== Пример

$
B(t) = t^m = 0 + 0 dot t + dot + 1 dot t^m + 0 t^(m + 1)\

underbrace(0\, 0\, dots\, 0\,, m) 1, 0, 0, dots
$

$
{a_n} A(t) = a_0 + a_1 t + dots + a_n t^n + dots
$

$
t^m dot A(t) = a_0 t^m + a_1 t^(m + 1) + dots + a_n t^(n + m) + dot =\
= limits(sum)_(n = 0)^infinity a_n t^(n + m) = limits(sum)_(n = m)^infinity a_(n - m) t^n
$

$
t^m dot A(t)\
underbrace(0\, 0\, dots\, 0\,, m) a_0, a_1, a_2, dots
$

$
A(t) dot B(t) = B(t) dot A(t)\
(A(t) dot B(t)) dot C(t) = A(t) dot (B(t) dot C(t))\
A(t) dot (B(t) + C(t)) = A(t) B(t) + A(t) C(t)
$

== Деление производящих функций
/ Деление производящих функций: Пусть $A(t) = limits(sum)^(infinity)_(n = 0) a_n t^n$ и $B(t) = limits(sum)^(infinity)_(n = 0) b_n t^n$, $B(0) = b_0 eq.not 0$ частным $A(t)$ и $B(t)$ называется $C(t) = (A(t))/(B(t)) space : space A(t) = B(t) C(t)$.

== Пример

$ A(t) = 1 {1, 0, 0, 0, dots} = {a_0, a_1, a_2, dots} $

$ B(t) = 1 - t {1, - 1, 0, 0, dots} = {b_0, b_1, b_2, dots} $

$1/(1 - t)$ --- производящая функция в закрытой форме.

$1/(1 - t) = c_0 + c_1 t + c_2 t^2 + dots$ --- в открытой форме

$ c_0 = (a_0)/(b_0) = 1 $
$ c_1 = (a_1 - b_1 c_0)/(b_1) = (0 - (-1) 1)/(1) = 1 $
$ dots $
$ 1/(1 - t) = 1 + t + t^2 + dots = limits(sum)^(infinity)_(n = 0) t^n #[ --- в откртыой форме] $
