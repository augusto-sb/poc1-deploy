for repo in poc1-backend poc1-frontend
do
	if [ -d "$repo" ]; then
		echo "$repo does exist."
	else
		echo "$repo does not exist. cloning."
		git clone "https://github.com/augusto-sb/${repo}.git";
	fi
	cd $repo
	git pull
	cd ..
done

#git clone https://github.com/augusto-sb/poc1-backend.git;
#git clone https://github.com/augusto-sb/poc1-frontend.git;

docker compose -f poc1-compose.yml --env-file env.env up --build --force-recreate;