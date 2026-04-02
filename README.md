# ft_printf

> *Because writing `write(1, "hello", 5)` every time is not a life worth living.*

## 📖 About

**ft_printf** is a 42 School project that challenges you to re-implement
the famous `printf` function from the C standard library.

No more black-box formatting — by the end of this project, you'll know
exactly how variadic functions work, how format specifiers are parsed,
and how each type gets converted into a printable string.

This project also produces a static library `libftprintf.a` that you'll
carry and reuse in almost every future 42 project.

---

## 📁 Project Structure

```
ft_printf/
├── ft_printf.c
├── ft_printf_utils.c
├── ft_printf.h
└── Makefile
```

---

## ⚙️ Supported Conversions

`ft_printf` handles the following format specifiers:

| Specifier | Description |
|---|---|
| `%c` | Print a single character |
| `%s` | Print a string |
| `%p` | Print a pointer address in hexadecimal |
| `%d` | Print a decimal (base 10) integer |
| `%i` | Print an integer in base 10 |
| `%u` | Print an unsigned decimal integer |
| `%x` | Print a number in hexadecimal (lowercase) |
| `%X` | Print a number in hexadecimal (uppercase) |
| `%%` | Print a literal percent sign |

---

## 🔍 How It Works

The function uses **variadic arguments** (`va_list`, `va_start`, `va_arg`, `va_end`)
to handle an unknown number of parameters at runtime.

Here's the general flow:

1. Parse the format string character by character
2. When a `%` is encountered, read the next specifier
3. Fetch the corresponding argument from the variadic list
4. Convert and print it to `stdout`
5. Return the total number of characters printed

```c
int ft_printf(const char *format, ...);
```

---

## 🛠️ Usage

### Clone the repository
```bash
git clone git@github.com:wangunuxe/ft_printf.git
cd ft_printf
```

### Compile the library
```bash
make        # builds libftprintf.a
make clean  # removes object files
make fclean # removes object files + libftprintf.a
make re     # fclean + make
```

### Use it in your project
```bash
gcc main.c -L. -lftprintf -I. -o my_program
```

### Example
```c
#include "ft_printf.h"

int main(void)
{
    ft_printf("Hello, %s!\n", "world");
    ft_printf("Hex: %x | Pointer: %p\n", 255, &main);
    ft_printf("Number: %d | Unsigned: %u\n", -42, 42);
    return (0);
}
```

---

## 🧪 Testing

Community testers to validate your implementation:

- [printfTester](https://github.com/Tripouille/printfTester) — the reference tester
- [ft_printf_tester](https://github.com/paulo-santana/ft_printf_tester)
- [Francinette](https://github.com/xicodomingues/francinette) — supports ft_printf too

---

## 📌 Notes

- Compiled with `cc -Wall -Wextra -Werror`
- No use of the original `printf` or any equivalent function
- Return value matches the number of characters printed, just like the real `printf`
- Norm compliant (Norminette)
- Does **not** handle flags, width, or precision (mandatory part only)
