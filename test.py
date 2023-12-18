def primes(n: int):
    sieve = [True] * n

    res = []

    for i in range(2,n):
        if sieve[i]:
            res.append(i)
            for j in range(i * i, n, i):
                sieve[j] = False

    return res


xs = primes(100)
print(xs)
