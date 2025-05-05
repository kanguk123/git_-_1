ps -ef | grep ssh | grep -v grep

echo "SSH 프로세스의 PID 목록:"
ps -ef | grep ssh | grep -v grep | awk '{print $2}'
