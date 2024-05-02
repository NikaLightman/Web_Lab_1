#!/bin/bash

# 1. Вывести в текстовый файл все комментарии, прописанные в файле ~/.bashrc

# Пути к файлам
input_file="$HOME/.bashrc"

output_file="$HOME/bashrc_comments.txt"

# Проверяем существует ли входной файл
if [ -f "$input_file" ]; then
    # Ищем строки, которые начинатся с #
    grep '^[[:space:]]*#' "$input_file" > "$output_file"
    echo "Комментарии из файла $input_file были записаны в файл $output_file"
else
    echo "Файл $input_file не существует!"
fi