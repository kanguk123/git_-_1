touch original.txt
echo -e "Hello Linux\nThis is a test\nHave a good day" > original.txt
cp original.txt backup.txt
mv original.txt data.txt
tail -n 2 data.txt

# data.txt 파일의 단어 수 출력
word_count=$(wc -w < data.txt)
echo "The number of words in data.txt is: $word_count"
