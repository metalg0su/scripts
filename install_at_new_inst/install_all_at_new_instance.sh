icon_project_dir=$HOME/icon-project

mkdir ${icon_project_dir}


# ----- install icon-projects
cd ${icon_project_dir}

# Download all
git clone https://github.com/icon-project/loopchain.git
wget https://dl.google.com/go/go1.13.1.linux-amd64.tar.gz
git clone https://github.com/icon-project/rewardcalculator.git

