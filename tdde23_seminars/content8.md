### Backus-Naur-form (BNF)

- Terminaler och icke-terminaler
- Icketerminaler byts succesivt ut mot terminaler
- Små bokstäver är terminaler, stora är icket-terminaler
- Inget tecken betecknas med "e" (ϵ)
- **S** är startpunkten

```
S ::= aA | bA
A ::= a | b | e
```

```
[aa, ab, ba, bb, a, b]
```

--

### Uppgift BNF

Vilka sekvenser (ord) ingår i följande språk?

#### 1

```
S ::= aA | bB
A ::= aB | e
B ::= a | b
```

#### 2

```
S ::= aSa | bSb | a | b | e
```


--


### Uppgift BNF

Vilka sekvenser (ord) ingår i följande språk?

#### 1

```
S ::= aA | bB
A ::= aB | e
B ::= a | b
```


**[aaa, aab, a, baa, bab, b]**

#### 2

```
S ::= aSa | bSb | a | b | e
```

**Alla palindrom**








--

### Identifiera ord

Skriv funktioner som bestämmer om ord ingår i språken. Behöver inte vara generella


### 1


```
S ::= aA | bB
A ::= aB | e
B ::= a | b
```


### 2

```
S ::= aSa | bSb | a | b | e
```

### Exempel

```python
>>> S1("aaa")
True
>>> S2("abb")
False
```



--

```python
def S(seq):
    if seq and seq[0] == "a":
        return A(seq[1:])
    elif seq and seq[0] == "b":
        return B(seq[1:])
    return False

def A(seq):
    if seq and seq[0] == "a":
        return B(seq[1:])
    return not seq 

def B(seq):
    return seq == "a" or seq == "b"
```


--

```python
def S(seq):
    if len(seq) >= 2 and (seq[0] == seq[-1] == "a" or seq[0] == seq[-1] == "b"):
        return S(seq[1:-1])
    return seq == "a" or seq == "b" or not seq
```








--

### Uppgift: Prefix

Skriv en funktion `contains_prefixes` som tar två listor med strängar som parametrar.
Funktionen ska returnera `True` om varje sträng i den första listan är ett prefix till någon av strängarna i den andra listan.

```python
>>> contains_prefixes(["hej"], ["hejsan", "asdfasdf"])
True
>>> contains_prefixes(["hej", "sdf"], ["hejsan", "asdfasdf"])
False
```


--

### Is prefix

```python
# Option 1: Recursion
def is_prefix(prefix, string):
    """ Returns true if prefix is a prefix to string, otherwise False """
    if not prefix:
        return True
    elif not string:
        return False
    else:
        return prefix[0] == string[0] and is_prefix(prefix[1:], string[1:])

# Option 2: String comparison
def is_prefix_alt2(prefix, string):
    """ Returns true if prefix is a prefix to string, otherwise False """
    return len(string) >= len(prefix) and string[:len(prefix)] == prefix

# Option 3: Built in function
def is_prefix_alt3(prefix, string):
    """ Returns true if prefix is a prefix to string, otherwise False """
    return string.startswith(prefix)
```

--

### for-loopar

```python
def contains_prefixes(prefixes, strings):
    for prefix in prefixes:
        result = False
        for string in strings:
            if is_prefix(prefix, string):
                result = True
        if not result:
            return False
    return True
```



--

### `any`

```python
# Alternativ 1: any och listbyggare
def contains_prefixes(prefixes, strings):
    res = True
    for pref in prefixes:
        res = res and any(is_prefix(pref, x) for x in strings)
    return res


# Alternativ 2: Any och map
def contains_prefixes(prefixes, strings):
    res = True
    for pref in prefixes:
        res = res and any(map(lambda x: is_prefix(pref, x), strings))
    return res
```

--

### `all`

```python
def contains_prefixes(prefixes, strings):
    return all(any(is_prefix(pref, x) for x in strings) for pref in prefixes)
```

--

### Vilket alternativ är bäst?

```python
def contains_prefixes(prefixes, strings):
    for prefix in prefixes:
        result = False
        for string in strings:
            if is_prefix(prefix, string):
                result = True
        if not result:
            return False
    return True

def contains_prefixes(prefixes, strings):
    res = True
    for pref in prefixes:
        res = res and any(is_prefix(pref, x) for x in strings)
    return res


def contains_prefixes(prefixes, strings):
    res = True
    for pref in prefixes:
        res = res and any(map(lambda x: is_prefix(pref, x), strings))
    return res

def contains_prefixes(prefixes, strings):
    return all(any(is_prefix(pref, x) for x in strings) for pref in prefixes)
```







--

### Uppgift: Primtal i Fibbonacci-sekvensen



Skriv en funktion som returnerar en lista med tal i fibonacci-serien som dessutom är primtal.

Funktionen ska ta ett heltal n som på ett eller annat sätt avgör hur många tal som beräknas -- för större värden på n ska man få minst lika många primtal som för mindre.  Du bestämmer själv exakt hur n ska tolkas.

För att testa funktionen bör du inte använda alltför stora värden på n då större fibonaccital tar lång tid att primtalstesta.

De 10 första primtalen i fibonacci-sekvensen är följande:

```python
[3, 5, 13, 89, 233, 1597, 28657, 514229, 433494437, 2971215073]
```


--

### Hur tolkade ni `n`?

- Antal tal i sekvensen att kolla?
- Antal primtal som returneras?
- Annat?




--

```python
from math import sqrt

def fibonacci(n):
    fib = [0, 1]
    while len(fib) < n:
        fib.append(fib[-1] + fib[-2])
    return fib

def is_prime(n):
    if n < 2 or n % 2 == 0:
        return False

    for i in range(3, int(sqrt(n))+1, 2):
        if n % i == 0:
            return False
    return True

def fibonacci_prime1(n):
    return [x for x in fibonacci(n) if is_prime(x)]

def fibonacci_prime2(n):
    return list(filter(is_prime, fibonacci(n)))

def fibonacci_prime3(n):
    res = []
    a, b = 0, 1
    for i in range(3, n):
        if is_prime(b):
            res.append(b)
        a, b = b, a + b
    return res
```





--

### Uppgift: Ihopslagning

Skriv en funktion som slår ihop två sorterade listor till en sorterad lista



--

```python
def merge(seq1, seq2):
    """ Merges two sorted lists into a single sorted list """
    if not seq1 or not seq2:
        return seq1 + seq2
    elif seq1[0] <= seq2[0]:
        return [seq1[0]] + merge(seq1[1:], seq2)
    else:
        return [seq2[0]] + merge(seq1, seq2[1:])


def merge(seq1, seq2):
    result = []
    while seq1 and seq2:
        if seq1[-1] < seq2[-1]:
            result.append(seq2.pop())
        else:
            result.append(seq1.pop())
    # Only one of the lists is non-empty so we can add both at the end
    result += seq1 + seq2
    return result
```




--

### Uppgift: Relativ sökväg

Skriv en funktion som givet två absoluta sökvägar på ett unix-system skapar en relativ sökväg från den ena till den andra.

Exempel:

```python
abs_to_rel_dir('/home/torvalds/python/work', '/home/torvalds/haskell/work')
>>> '../../haskell/work'
```

```python
abs_to_rel_dir('/home/torvalds/haskell/work', '/home/torvalds')
>>> 'haskell/work'
```

--

```python
def abs_to_rel_dir(from_dir, to_dir):
    from_list = from_dir.strip('/').split('/')
    to_list = to_dir.strip('/').split('/')

    while from_list and to_list and from_list[0] == to_list[0]:
        from_list.pop(0)
        to_list.pop(0)

    res = [".." for i in range(len(from_list))] + to_list
    return '/'.join(res)
```
