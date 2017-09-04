## Terminal chain previous ... probably needs a better name.<br>Built with a bash usecase since that is the default out of the box.

## Why is this for you?
Ever run into this situation?

a repetitive task for a moment,  doing the same string of commands in the terminal, 
<br>like modifying a readme with git commit ammend?

example:
```
git add .
git commit --amend --no-edit
git push --force-with-lease
```

the trouble with these commands, the larger the chain becomes, 
<br>the more up arrow keys need to be pressed to find it in your computer history.
<br>additionally, they are in inverted order as shown:
```
git push --force-with-lease
git commit --amend --no-edit
git add .
```
the example is hard to show here is a summary expressed mathematically,
<br>3 upticks to reach git add . 
<br>3 upticks to reach git commit --amend --no-edit (because now git add . is the most recent in history.)
<br>3 upticks to reach git push --force (becuase now git commit and git add are more recent in history.)

## There must be a better way:
Imagine a world where you could uptick 
<br>to the last command in a chain of commands. 
type `ctrl a` type `chain ~n` type `enter`
and it would write all of your commands into a one line like shown:
`git add .; git commit --amend --no-edit; git push --force-with-lease;`

## additional positives
you do not have to worry about the semicolons on commands or not.
<br>All these commands will be put in parentheses and get a semicolon in string construction.
<br>having more than one semi-colin command will not break anything in bash.
<br>it will simply consider an empty command and move onto the next.
<br>try it yourself:
`(git add .;); (git commit --amend --no-edit); (git push --force-with-lease;);`
