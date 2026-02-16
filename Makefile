APP_NAME=LanDashboard
SOLUTION=LanDashboard
PROJECT=LanDashboard.App
PUBLISH_DIR=$(HOME)/apps/$(APP_NAME)/app
SERVICE_NAME=lan-dashboard

deploy: publish reload restart status

publish:
	dotnet publish $(HOME)/src/$(SOLUTION)/$(PROJECT)/$(PROJECT).csproj -c Release -o $(PUBLISH_DIR)

reload:
	systemctl --user daemon-reload

restart:
	systemctl --user restart $(SERVICE_NAME)

status:
	systemctl --user status $(SERVICE_NAME) --no-pager

