<h1 align="center">Welcome to ProfileMe</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-0.1-blue.svg?cacheSeconds=2592000" />
  <a href="https://fsf.org/" target="_blank">
    <img alt="License: GNU GENERAL PUBLIC LICENSE" src="https://img.shields.io/badge/License-GNU GENERAL PUBLIC LICENSE-yellow.svg" />
  </a>
</p>

> library for profiling

## Author

👤 **Jelle Kuebler**

## Example
```python
from time import sleep

from tests.profiling import profile

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

This project is [GNU GENERAL PUBLIC LICENSE](https://fsf.org/) licensed.

***