= Производящая функция. Сумма производящих функций, операция подстановки.
== Производящая функция
/ Производящая функция: $a_0, a_1, a_2, dots, a_n, dots$ производящая последовательность чисел. Производящей функцие (ПФ) для этой последовательности

$
	a_0 + a_1 t + a_2 t^2 + dots + a_n t^n + dots = underbracket(limits(sum)^infinity_(n = 0) a_n t^n, #[открытая форма ПФ])
$

$
	{a_n} space A(t) = limits(sum)^infinity_(n = 0) a_n t^n\
	A(t) space A(0) = a_0
$

=== Пример
$
underbrace(1, a_0), underbrace(0, a_1), underbrace(1, a_2), 1, 1, dots A(t) = 1 + t^2 + t^3 + dots
$

$
1, -1, 1, -1, dots A(t) = 1 - t + t^2 - t^3 = limits(sum)_(n = 0) (- 1)^n t^n
$

== Сумма производящих функций
/ Сумма ПФ-ций: $A(t) = limits(sum)_(n = 0)^infinity a_n t^n$ и $B(t) = limits(sum)_(n = 0)^infinity b_n t^n$ 

$
C(t) = A(t) + B(t) = c_0 + c_1 t + c_2 t^2 + dots, space #[ где]
$

$
c_0 = a_0 + b_0\
c_1 = a_1 + b_1\
dots dots dots\
c_n = a_n + b_n\
$

$
{a_n},
c_0, c_1, c_2, dots
$

=== Теорема (Свойства суммы)

1. $A(t) + B(t) = B(t) + A(t)$
2. $(A(t) + B(t)) + C(t) = A(t) + (B(t) + C(t))$
3. Произведение производящих функций $A(t)$ и $B(t)$: $C(t) = A(t) B(t) = (a_0 + a_1 t + a_2 t^2 + dots)(b_0 + b_1 t + b_2 t^2 + dots)$

	$ c_n = limits(sum)_(k = 0)^n a_k b_(n - k) $

== Операция подстановки.
/ Подстановкой в производящую функцию $A(t) = limits(sum)_(n = 0)^infinity a_n t^n$ производящей функции $B(t) = limits(sum)_(n = 0)^infinity b_n t^n$, $B(0) = b_0 = 0$: называется производящая функция $C(t) = A(B(t)) = $

$ c_0 + c_1 t + c_2 t^2 + dots $
$ c_0 = a_0 $
$ c(t) = a_0 + a_1 (b_1 t + b_2 t^2 + dots) + a_2 (b_1 t + b_2 t^2 + dots)^2 + dots $
$ c_1 = a_1 + b_1 $
$ c_2 = a_1 + b_2 + a_2 b_1^2 $

=== Пример
1. $ B(t) = - t, space A(- t) = a_0 - a_1 t + a_2 t^2 - dots = limits(sum)_(n = 0)^infinity (-1)^n a_n t^n $
2. $ c t, space A(c t) = a_0 + a_1 c t + a_2 c^2 t^2 + dots = limits(sum)_(n = 0)^infinity c^n a_n t^n $
