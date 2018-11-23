.deps-canary:
	sudo apt update
	sudo apt install ruby
	sudo gem install t
	touch .deps-canary

$HOME/.trc:
	t authorize

.PHONY: deps
deps: .deps-canary

.PHONY: setup 
setup: .deps-canary $HOME/.trc

following.txt:
	mkdir -p data
	t followings > data/following.txt

.PHONY: backup
backup: following.txt
	scripts/backup-follows

.PHONY: unfollow
unfollow: backup
	scripts/unfollow
