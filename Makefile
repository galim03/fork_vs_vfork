CC = gcc
CFLAGS = -g -Wall

# 기본 타겟
all: fork_vs_vfork

# fork_vs_vfork.c 컴파일
fork_vs_vfork: fork_vs_vfork.c
	$(CC) $(CFLAGS) fork_vs_vfork.c -o fork_vs_vfork

# 테스트 타겟 (테스트 스크립트나 명령어 추가 가능)
test: fork_vs_vfork
	./fork_vs_vfork
