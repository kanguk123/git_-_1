echo "Sensitive information"

log_changes() {
  local script_name=$(basename "$0")
  local timestamp=$(date "+%Y-%m-%d %H:%M:%S")
  local permissions=$(ls -l "$0" | awk '{print $1}')
  
  echo "[$timestamp] $script_name 파일이 변경되었습니다." >> change_log.txt
  echo "현재 파일 권한: $permissions" >> change_log.txt
  echo "마지막 수정 시간: $(stat -c %y "$0")" >> change_log.txt
  echo "파일 크기: $(stat -c %s "$0") bytes" >> change_log.txt
  echo "----------------------------------------" >> change_log.txt
}

# 스크립트가 실행될 때마다 로그 함수 호출
log_changes


