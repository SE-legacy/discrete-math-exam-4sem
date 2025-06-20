= Полиномиальная формула. Свойства полиномиальных коэффициентов.

*Полиномиальная формула* --- формула для вычисления полиномов. Её вид:
$ (x_1 + x_2 + ... + x_m)^n = (limits(sum)_(i = 1)^m x_i)^n $

Полиномиальная формула $(x_1 + x_2 + ... + x_m)^n$ называется полиномом степени $n$ от $m$ переменных.

*Теорема (полиномиальная формула)* \
$ (x_1 + x_2 + ... + x_m)^n = limits(sum)_(k_1 + k_2 + ... + k_m = n) overline(P)(k_1, ..., k_m) dot x_1^(k_1) dot ... dot x_m^(k_m) $
где $k_i space (1 <= i <= n)$ --- числа в сумме дающие $n$.

_Доказательство:_ \
$ underbrace((x_1 + ... + x_m) dot ... dot (x_1 + ... + x_m), n) = underbrace(x_1 x_1 ... x_1, n) + underbrace(x_1 x_1 ... x_1, n-1) x_2 + ... + underbrace(x_m x_m ... x_m, n) = \ = x_1^n + x_1^(n - 1) x_2 + ... + x_m^n $

Если каждое слагаемое рассматривать как $n$-буквенное "слово", то в полученной сумме присутствуют все "слова" из $n$ букв, в которых каждая буква принимает одно из $m$ значений $(x_1, x_2, ..., x_m)$. Каждое такое слово встречается 1 раз. Тогда

$ (limits(sum)_(i = 1)^m x_i)^n = limits(sum)_(k_1 + ... + k_m = n) overline(P)(k_1, ..., k_m) x_1^(k_1) dot ... dot x_m^(k_m) $
#align(right, $ballot$)

_Авторское пояснение:_ $k_1, ..., k_m$ --- количество каждой из $m$ букв. Получается, что $m$-я буква будет встречаться $k_m$ раз.

*Теорема (свойства полиномиальных коэфициентов)* \
+ $ limits(sum)_(k_1 + k_2 + ... + k_m = n) overline(P)(k_1, ..., k_m) = m^n $
+ $overline(P)(k_1, ..., k_m) = overline(P)(k_1 - 1, ..., k_m) + overline(P)(k_1, k_2 - 1, ..., k_m) + ... + overline(P)(k_1, ..., k_(m-1), k_m - 1) $

_Доказательство:_ \
+ $ limits(sum)_(k_1 + k_2 + ... + k_m = n) overline(P)(k_1, ..., k_m) = limits(sum)_(k_1 + k_2 + ... + k_m = n) overline(P)(k_1, ..., k_m) 1^(k_1) dot 1^(k_2) dot ... dot 1^(k_m) arrow.r.double \ arrow.r.double x_1 = x_2 = ... = x_m = 1 arrow.r.double (x_1 + x_2 + ...+ x_m)^n = (limits(sum)_(i = 1)^m x_i)^n = \ = underbrace((1 + 1 + ... + 1), m)^n = m^n $
+ $ (limits(sum)_(i = 1)^m x_i)^(n - 1) = limits(sum)_(k_1 + ... + k_m = n - 1) overline(P)(k_1, ..., k_m) dot x_1^(k_1) x_2^(k_2) ... x_m^(k_m) $

#pagebreak()

  Домножим обе части равенства на сумму $(x_1 + ... + x_m)$. Получаем:
  $ (limits(sum)_(i = 1)^m x_i)^n = limits(sum)_(k_1 + ... + k_m = n - 1) overline(P)(k_1, ..., k_m) dot x_1^(k_1) x_2^(k_2) ... x_m^(k_m) dot (x_1 + ... + x_m) arrow.r.double \ arrow.r.double overline(P)(k_1, ..., k_m) = overline(P)(k_1 - 1, ..., k_m) + overline(P)(k_1, k_2 - 1, ..., k_m) + ... + overline(P)(k_1, ..., k_(m-1), k_m - 1) $
