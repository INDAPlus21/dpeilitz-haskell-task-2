function sum(s, n) {
     if(n == 0){
         return s;
     } else{
         return sum(s + n, n - 1);
     }
}
print(sum(1,2))