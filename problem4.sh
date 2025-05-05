mkdir -p logs/old_logs
touch logs/app.log
touch logs/error.log
mkdir -p old_logs
touch old_logs/app_old.log
find  -type f -name "*.log"

echo "총 로그 파일 개수:"
find . -type f -name "*.log" | wc -l
