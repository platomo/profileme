
<h1 align="center">Welcome to Profile Me</h1>
<p>
  <a href="#" target="_blank">
    <img alt="License: MIT License" src="https://img.shields.io/badge/License-MIT License-yellow.svg" />
  </a>
</p>
![GitHub release (with filter)](https://img.shields.io/github/v/release/platomo/profileme)
> library for profiling

## Author

👤 **Jelle Kuebler**

## Example
```python
from time import sleep

from profileme import profile

@profile(repeat=100)

def example() -> None:

    for iteration in range(100):

        print("Happy profiling")

        sleep(0.001)
if __name__ == "__main__":

    example()
```
## Show your support

Give a ⭐️ if this project helped you!

## 📝 License

This project is licensed under the MIT License. For more details, please refer to the [LICENSE](LICENSE.md) file.

***
