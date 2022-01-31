

all default: clean
	go build -ldflags="-s -w" -o loot-user-rule-sync.exe cmd/loot-user-rule-sync/main.go
	upx -9 loot-user-rule-sync.exe

clean:
	del *.exe

.PHONY: default all