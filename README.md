# Recursion exercises
>https://tildesites.bowdoin.edu/~ltoma/teaching/cs107/spring05/recursion.html

### 1. Write a recursive function that computes the sum of all numbers from 1 to _n_, where _n_ is given as parameter.

```c
//return the sum 1+ 2+ 3+ ...+ n
int sum(int n)
```

### 2. Write a recursive function that finds and returns the minimum element in an array, where the array and its size are given as parameters.

```c
//return the minimum element in a[]
int findmin(int a[], int n)
```

### 3. Write a recursive function that computes and returns the sum of all elements in an array, where the array and its size are given as parameters.

```c
//return the sum of all elements in a[]
int findsum(int a[], int n)
```

### 4. Write a recursive function that determines whether an array is a palindrome, where the array and its size are given as parameters.

```c
//returns 1 if a[] is a palindrome, 0 otherwise
int ispalindrome(char a[], int n)
```

### 5. Write a recursive function that searches for a target in a sorted array using binary search, where the array, its size and the target are given as parameters.