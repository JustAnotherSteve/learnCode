# Github notes:

git init name			#  initialise this folder as a git repo
	
git add "file.txt"
git add .		# adds all
git add *		# adds all files - does not delete
git commit -m "message"		# commits to git - updates on their server, but doesnt change it. 
git push 		# changes their server

git pull		# gets changes 	

git checkout -b [new_branch_name] 	# Create a new branch and switch to it
git branch							# List all current branches
	git branch -r 					# shows the remote branches
git show-branch --all				# list all branches 
git checkout [branch_name]			# Switch to an existing branch

git merge [target] # Merge the target branch into current

git push -u origin first_new_branch		# whenever you ahve to insert a new branch (which will be first_new_branch)

git merge first_new_branch	# merge the first_new_branch to master

#  Merge Conlficts
	A merge conflict is physically shown in the file in which it occurs.
	<<<<<<< marks the beginning of the conflicting changes made on the current (merged into) branch.
	======= marks the beginning of the conflicting changes made on the target (merged) branch.
	>>>>>>> marks the end of the conflict zone.



#  How to update origin
git remote remove origin
git remote add -f origin https:# github.com/cs1531/lab02_USERNAME
git branch -u origin/master

# how to get a remote branch
git fetch origin theBranchYouWant
git checkout theBranchYouWant

# Git tools
git log		# tells about all of the git logs
git diff b67405defc6ef4   	# Details the diffence in commits. big number is the commit name. 
git show-ref --tags -d 		# shows all of the tags for the repo
git show --name-only 		# shows a commit detail?
git tag 					# shows the tags from a repo
git show --name-only TAGNAME	# shows the value of the named tag

# virtual environment
virtualenv --python=python3 dependanciesFolder
source dependanciesFolder/bin/activate
pip3 install -r requirements.txt
deactivate


# Pytest
pytest -s   //gives the output as well as does the tests

