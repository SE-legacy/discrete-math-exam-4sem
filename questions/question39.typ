= Отношение достижимости, матрица достижимости, рекуррентная формула для построения матрицы достижимости;

*Маршрут* --- это последовательность смежных дуг $(v_(k-1), v_k) in rho$, то есть конец каждой дуги кроме последней является началом следующей. В маршруте дуги могут повторяться.

*Циклический маршрут* --- это маршрут, в котором начальаня вершина совпадает с конечной.

*Длина маршрута* --- количество дуг, входящих в состав маршрута.

*Путь* --- маршрут в котором каждая дуга встречается не более одного раза

*Простой путь* --- путь, в котором каждая вершина принадлежит не более чем двум дугам.

*Контур* --- простой циклический путь

*Бесконтурный путь (ориентированная цепь)* --- простой нециклический путь.

Вершина $v$ *достижима* из вершины $u$, если существует путь из $u$ в $v$. Достижимость задает *бинарное отношение достижимости.*

*Тривиальным контуром* называется петля (контур длины 1)

*Бесконтурный орграф* --- граф, не имеющий нетривиальных контуров, то есть у него могут быть петли, но не может быть контуров длины $>= 2$

*Теорема (необходимое и достаточное условие того, чтобы отношение достижимости являлось порядком)*\
Отношение достижимости является порядком $<=>$ граф бесконтурный.

*Матрицей маршрута* называется матрица $M$ такая, что
$ cases(
  m_(i j) = 1 ", " (v_i, v_j) in rho,
  m_(i j) = 0 ", " (v_i, v_j) in rho
) $

_Примечание:_ Следующая теорема, как и её доказательство, напрямую не указано в программе экзамена, однако её следствие и матрица из её следствия требуются в следующих билетах, потому считаем целесообразным показать ход доказательства.

*Теорема (матричный критерий существования маршрута)*\
Элемент $m_(i j)^((k))$ матрицы $M^k$ равен 1 $<=>$ существует маршрут длины $k$ из $v_i$ в $v_j$.\
_Доказательство:_ по методу математической индукции:
+ Проверим базис индукции: $k = 1 arrow.r.double m_(i j) = 1$.
+ Положим, что выполняется для некоторого $k: m_(i j)^((k)) = 1$.
+ Покажем, что выполняется $k + 1. space m_(i j)^((k + 1)) = 1$ (из перемножения $i$-й строки $k$-ой степени на $j$-й столбец матрицы первой степени) $<=> limits(sum)_(s = 1)^n m_(i s)^((k)) dot m_(s i)= 1 <=> exists s_0 : m_(i s_0)^((k)) = 1 and m_(s_0 j) = 1 =>$ есть путь из $v_i$ в $v_j$ длины $k + 1$

*_Следствие:_* $forall i != j: v_j$ достижима из $v_i$ в $n$-вершинном орграфе $<=>$ в матрице $D = limits(sum)_(k = 1)^(n - 1) M^k + E$ элемент $d_(i j) = 1$. (Единичная матрица добавляется в сумму, чтобы охватить случай $i = j$)

*Матрицей отношения достижимости* называется матрица $D = limits(sum)_(k = 1)^(n - 1) M^k + E$

*Теорема (рекуррентная формула для построения матрицы достижимости)*\
+ $M_1 = M$
+ $M_(k + 1) = M_k dot M_1 + M_1$
+ Если $M_k = M_(k + 1)$ (дошли до конца), то $D = M_k + E$, иначе $k = k + 1$ и переходим к шагу 2.
