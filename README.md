
<h1 align="center">Welcome to Profile Me</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT License" src="https://img.shields.io/badge/License-MIT License-yellow.svg" />
    <img alt="GitHub release (with filter)" src="https://img.shields.io/github/v/release/platomo/profileme">
  </a>
</p>

> library for profiling

## Author

👤 **Jelle Kuebler**

## Example

```python
from profileme import profile

@profile(
    repeat=1000,
    profiler_kwargs=dict(warmup=10),
    writer_kwargs=dict(write_console=True),
)
def fibonacci_loop(num: int) -> int:
    if num == 0:
        return 0

    second_to_last = 0
    last = 1

    for _ in range(1, num):
        second_to_last, last = last, second_to_last + last

    return last

@profile(
    repeat=100,
    profiler_kwargs=dict(warmup=10),
    writer_kwargs=dict(write_console=True),
)
def fibonacci_recursive_wrapper(num: int) -> int:  # profiling recursive method requires wrapper
    return fibonacci_recursive(num)


def fibonacci_recursive(num: int) -> int:
    if num <= 1:
        return num
    else:
        return fibonacci_recursive(num - 1) + fibonacci_recursive(num - 2)


if __name__ == "__main__":
    fibonacci_recursive_wrapper(4)
    fibonacci_loop(4)
    ProfilePlotter(log=True, column="cumtime", type="all", call_depth=20).update_plots(
        "profiles", recursive=True
    )
```

## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

This project is licensed under the MIT License. For more details, please refer to the [LICENSE](LICENSE.md) file.

***
