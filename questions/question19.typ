= Теорема о разложении функции  $1/(1- a x)^m$.
$forall n$ натурального имеет место разложение

$
1/(1 - a x)^m = 1 + c_m^1 a x + c_(m + 1)^2 a^2 x^2 + c_(m + 2)^3 a^3 x^3 + dots + c_(m + n - 1)^n a^n x^n + dots
$

*Доказательство* Докажем по индукции по $m$
1.
	$ m = 1 $
	$
	1/(1 - a x) = 1 + a x + a^2 x^2 + a^3 x^3 + dots + a^n x^n + dots
	$


	$
	1 = (1 - a x)(1 + a x + a^2 x^2 + a^3 x^3 + dots + a^n x^n + dots) =\
	= (1 + a x + a^2 x^2 + a^3 x^3 + dots + a^n x^n + dots) - a x(1 + a x + a^2 x^2 + a^3 x^3 + dots + a^n x^n + dots)=\
	= 1
	$

2. (\*) $m lt.eq k space $ $ space 1/(1 - a x) = 1 + a x + a^2 x^2 + a^3 x^3 + dots + a^n x^n + dots$ верно

3.
	$
	m = k + 1 \
	underbrace(frac(1, (1 - a x)^(k + 1)), #[закр. форма]) = underbrace(1 + C_(k + 1)^n a x + C_(k + 2)^2 a^2 x^2 + dots + C_(k + n)^n a^n x^n + dots, #[откр. форма])
	$

	Мы считаем верным утверждение для $m <= k$ и берём его за предположение индукции, теперь нужно доказать справедливость случая $m = k + 1$.

	$
	underbracket(1/(1 - a x)^k,#[закрытая форма]) = (1 - a x) dot underbracket(1/(1 - a x)^(k + 1),#[закрытая форма]) #[ верное равенство]
	$

	$
	1/(1 - a x)^(k + 1) dot (1 + c_(k + 1)^1 a x + c_(k + 2)^2 a^2 x^2 + dots + c_(k + n)^n a^n x^n + dots) =\
	= (1 + c_(k + 1)^1 a x + c_(k + 2)^2 a^2 x^2 + dots + c_(k + n)^n a^n x^n) -\
	- a x (1 + c_(k + 1)^1 a x + c_(k + 2)^2 a^2 x^2 + dots + c_(k + n)^(n - 1) a^(n - 1) x^(n - 1) + c_(k + n)^n a^n x^n) =\
	= 1 + (c_(k + 1)^1 - 1) a x + (c_(k + 2)^2 c_(k + 1)^1) a^2 x^2 + dots + (c_(k + n)^n c_(k + n - 1)^(n - 1)) a^n x^n + dots =\
	= 1 + c^1_k a x + c^2_(k + 1) a^2 x^2 + dots + c^n_(k + n) a^n x^n
	$

	тк

	$
	c^n_k = c^(n - 1)_(k - 1) + c^n_(k - 1) -> c^n_k - c^(n - 1)_(k - 1) = c^n_(k - 1) 
	$
