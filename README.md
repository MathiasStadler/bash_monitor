# bash monitor

## description - simple bash script for monitor the system

## use extension [![alt text][1]](https://github.com/koalaman/shellcheck) - git repo [![alt text][1]](https://github.com/koalaman/shellcheck)

## Getting CPU Usage Using top [![alt text][1]](https://www.baeldung.com/linux/get-cpu-usage)
<!-- keep the format -->
```bash <!-- markdownlint-disable-line code-block-style -->
top -bn2 | grep '%Cpu' | tail -1 | grep -P '(....|...) id,'|awk '{print "CPU Usage: " 100-$8 "%"}'
```
<!-- keep the format -->
>[!TIP]
>Add link to files - README.md [![alt text][1]](./README.md) and project_path.md [![alt text][1]](./project_path.md)
><!-- -->
>```bash <!-- markdownlint-disable-line code-block-style -->
> bash -c echo "\n\n<-- Link sign - Don't Found a better way :-( - You know a better method? - send me a email --> \n\n[1]: ./img/link_symbol.svg"  >> ./README.md
>```
<!--keep the format -->
<!-- keep the format -->
<!-- make folder and download the link sign vai curl -->
<!-- mkdir -p img && curl --create-dirs --output-dir img -O  "https://raw.githubusercontent.com/MathiasStadler/link_symbol_svg/refs/heads/main/link_symbol.svg"-->
<!-- Link sign - Don't Found a better way :-( - You know a better method? - send me a email -->
[1]: ./img/link_symbol.svg
<!-- keep the format -->