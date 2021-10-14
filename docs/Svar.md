
* Varför kan man skriva utryck så som detta i Haskell?

```haskell
let evenNumbers = [ 2 * n | n <- [1..]]
print (take 1000000 evenNumbers)
```
Först definieras funktionen even numbers som tar varje heltal och multiplicerar det med 2
Därefter tas de första 1000000 talen som funktionen genererar och printar det.

* Vad innebär rekursion?

rekursion innebär att någonting definieras utifrån sig själv.
* Varför fungerar följande funktion i språk så som haskell och inte i t.ex javascript

```haskell
sum :: Integral n, Num n => n -> n -> n
sum s 0 = s
sum s n = sum (s + n) (pred n)

```
```javascript
function sum(s, n) {
     if(n == 0){
         return s;
     } else{
         return sum(s + n, n - 1);
     }
}
```

Har inte den blekaste då jag aldrig använt rekursion i något språk tidigare.
