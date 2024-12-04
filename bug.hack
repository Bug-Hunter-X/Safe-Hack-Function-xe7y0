function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function main(): void {
  echo bar(5);
}

This code looks correct, but it will actually produce a runtime error in some cases. The problem is with integer overflow.  If the input to `foo` is large enough that adding 1 causes an integer overflow, the result will be unexpected and can lead to incorrect results in `bar` and thus `main`. For example, if `x` is the maximum possible integer value, adding 1 will wrap around to the minimum possible integer value, leading to incorrect calculations.