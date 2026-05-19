*This project has been created as part of the 42 curriculum by emda-sil.*

# ft_printf

## Description

The goal of this project is to recreate a small version of the `printf` function from the C standard library.

The function `ft_printf` prints text to the standard output, but it can also understand some format specifiers and print different types of values.

In simple words: normal text goes straight to the screen, and when the function finds a `%`, it checks what comes next and decides what kind of value must be printed.

The supported conversions are:

- `%c` for characters
- `%s` for strings
- `%p` for memory addresses
- `%d` for decimal numbers
- `%i` for integers
- `%u` for unsigned decimal numbers
- `%x` for lowercase hexadecimal numbers
- `%X` for uppercase hexadecimal numbers
- `%%` for the percent sign

The final result is a static library called `libftprintf.a`.

## Instructions

To compile the project, run:

```bash
make
```

This will create the library:

```text
libftprintf.a
```

To clean object files:

```bash
make clean
```

To remove object files and the library:

```bash
make fclean
```

To rebuild everything:

```bash
make re
```

Example usage:

```c
#include "ft_printf.h"

int	main(void)
{
	ft_printf("Hello %s!\n", "world");
	return (0);
}
```

Compile with:

```bash
cc main.c libftprintf.a
```

## Algorithm and Structure

The main idea of this project is simple, but not magic.

The function reads the format string one character at a time.

If the character is normal text, it prints it directly.

If the character is `%`, the function looks at the next character to know which conversion must be used.

For example:

- `%s` calls the string printer
- `%d` calls the decimal number printer
- `%x` calls the hexadecimal printer
- `%p` calls the pointer printer

A dispatcher function is used to send each format specifier to the correct helper function.

Each helper function prints its own value and returns how many characters were printed. The main `ft_printf` function adds all these return values and returns the final count.

This structure was chosen because it keeps the code organized, easier to understand, and easier to extend without turning the project into a monster with tentacles.

The project is divided into small parts:

- text printing
- number printing
- hexadecimal printing
- pointer printing
- format handling

## Resources

Useful resources:

- C documentation about variadic functions
- `man printf`
- `man stdarg`
- `man write`
- 42 subject PDF
- Book: *Linguagem C*, Luis Damas

## AI Usage

AI was used as a learning support tool during this project.

It helped with:

- understanding variadic functions
- organizing the project structure
- reviewing code logic
- explaining possible edge cases
- writing and reviewing this README

The code was written, tested, and adjusted by me during the development process.

AI was used to ask questions, check reasoning, and understand the project better. It was not used as a shortcut to skip the learning process.
