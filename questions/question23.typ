= Теорема о степенном множестве графа
*Степенью исхода* $d^+ (v)$ вершины $v$ орграфа называется число его дуг, с началом в $v$.\
*Степенью захода* $d^- (v)$ вершины $v$ орграфа называется число его дуг, с концом в $v$.

В неориентированном графе *степенью* $d(v) = d^+ (v) = d^- (v)$ вершины $v$ называется число рёбер, связанных с $v$.

*Степенным множеством* графа $G$ называется набор чисел, являющихся степенями вершин графа $G$.

*Теорема о степенном множестве графа*\
Для любого множества натуральных чисел $A = {d_1, d_2, dots, d_k}, space k gt.eq 1, space$ где $d_1 lt d_2 lt dots lt d_k$ $space exists$ граф с $d_(k) + 1$ вершинами, для которого $A$ является степенным множеством.

*Доказательство:*

Индукция по числу $k$.
- При $k = 1$ графом со степенным множеством $A = {d}$ является полный граф $K_(d + 1)$ \
  _Чтобы каждая вершина в графе имела степень $d$, необходимо её соединить с $d$ вершинами, а для этого в графе должно быть $d + 1$ вершин._
- При $k = 2$ степенное множество $A = {d_1, d_2}$, $(d_1 lt d_2)$, имеет соединение двух графов $G : K_(d_1) + K_(d_2 - d_1 + 1)$
- Пусть теорема справедлива для $k$. Докажем для $k + 1$.

	$A = {d_1, d_2, dots, d_k, d_(k + 1)}$, где $d_1 lt d_2 lt dots lt d_(k + 1)$. Найдется граф у которого число вершин будет равно $d_(k + 1) + 1$ и у которого это множество будет степенным множеством.

	Рассмотрим множество натуральных чисел ${d_2 - d_1, d_3 - d_1, dots, d_k - d_1}$. Чисел $lt k$, то есть найдется граф $G_0$ у которого число вершин равно $d_k - d_1 + 1$, и это множество является степенным множеством $G_0$

	Рассмотрим граф построенный следующим образом: $G = K_(d_1) + (overline(K)_(d_(k + 1) - d_k) union G_0)$.

  Число вершин $G = d_1 + d_(k + 1) - d_k + d_k - d_1 + 1 = d_(k + 1) + 1$. Покажем, что это действительно степенное множество этого графа.

	Разберем три типа вершин в графе G и найдем их степени.

	+ Вершины при $K_(d_1)$:
		их степень равна $d_1 + (d_(k+1) - d_k) + (d_k - d_1 + 1) = d_(k + 1) + 1$.

	+ Вершины при $overline(K)_(d_(k+1) - d_k)$:
		их степень равна $0 + d_1 = d_1$.

	+ Вершины при $G_0$:
		Их степени равны
		$(d_i - d_1) + d_1 = d_i$, где $i = 2,...,k$

	Получаем, что степенное множество графа G равно
	${d_1,...,d_(k+1)}$
