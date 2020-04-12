## Welcome!

This repository contains all the files you'll see during the live sessions of the course Programming for Everybody hosted by [Le Wagon](https://www.lewagon.com). Welcome aboard! 🎉

Please star the repository, or just bookmark the page in your favourite browser.

### ⚠️ IMPORTANT

Any tool other than Codecademy that you see a teacher using in a live session is **free to use** and __**OPTIONAL**__ for this course. The applications you'll see are used by thousands of startups around the world (including Le Wagon!), and we'll use them just to show you how to work in a real development environment. <br>
If you don’t have any prior experience, or you don’t know how to use an online REPL, please just watch the video session, ask your eventual questions at the end of the lesson, share your experience on [the Slack channel](https://programming4everybody.slack.com), and don’t do anything else described here. <br>
As explained during the program presentation, this course is just an extension of the [Codecademy Ruby track](https://www.codecademy.com/learn/learn-ruby), and you are not required to do anything more than following the meetings!

## Usage

Each Ruby file you see in this repository will be filled by a teacher during the corresponding session. In the [`slides`](./slides) folder you can see and download the slides we share during the lessons.

You'll also find a [`test`](./test) folder in this repository. **Don't edit or delete any file outside this folder**: it's important to always keep your personal experiments in a separate place! 🧪

## Setup

**N.B:** This is an online learning series, and our teachers won't be able to help you with your computer configuration. If you are just moving your first steps (you don't know Git, Ruby, what a terminal is, or any of the tools we are using), please [just watch the videos](https://bit.ly/p4e-lecture-videos) and, if you feel confident enough, use a REPL as described below. <br>
Do you want to learn how to configure your computer like a pro? [Do it with us!](#going-further)!

### REPL

You can use a [REPL](https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop) to see and interact with the code we share every session.

[Create an account on Repl.it](https://repl.it/signup), and, once logged in, click this button 👉 [![Run on Repl.it](https://repl.it/badge/github/lewagonlisbon/programming4everybody)](https://repl.it/@lewagonlisbon/programming4everybody) to save a copy of this repository in your personal REPLs collection (click on `Fork` if you just get the `@lewagonlisbon/programming4everybody`'s page and nothing happen's automatically).

Now click on the file `README.md` to open it, and... wait a second, that's me! 🤖

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl1.png)

After a session ends, switch to the `Version Control` tab and click `Pull` to get the new changes.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/repl2.png)

**N.B:** if the pull command doesn't work, it's probably because you edited some files you shouldn't touch! 🛑 Check which ones under `Changed files or folders`, and if they don't belong to the `test` folder, make them look exactly as the ones on GitHub, then click `Pull` again. If this doesn't help either, just [come back to GitHub](https://github.com/lewagonlisbon/programming4everybody#REPL) and follow the instructions again to create a new copy ☝️

### Git and Ruby

**ONLY** if you already have:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation) installed (type `ruby --version` in your terminal, it should give you a version >= 2.2)
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) installed (`git --version` should be >= 1.7)
- a GitHub profile
- some basic knowledge of programming

you can fork this repository on your computer and fetch the new changes after each session.

First, fork this repository on your profile.

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/fork.png)

Then, open your terminal and run the following commands one at a time (always read the comments carefully, they're there for a reason! 👀):

```sh
# TODO: change with your github username
GITHUB_USERNAME="your-github-username"

# Create a new folder where to keep your personal projects:
[ ! -d ~/code ] && mkdir ~/code
[ ! -d ~/code/$GITHUB_USERNAME ] && mkdir ~/code/$GITHUB_USERNAME
cd ~/code/$GITHUB_USERNAME

# Clone the repository from github and connect to @lewagonlisbon's one (run JUST ONCE):
git clone https://github.com/$GITHUB_USERNAME/programming4everybody.git
cd programming4everybody
git remote add upstream https://github.com/lewagonlisbon/programming4everybody.git
git fetch --all
git reset --hard upstream/master

# Open the repository in your favourite editor:
atom . # or `open -a Atom .`
subl . # or `open -a "Sublime Text" .`
code . # or `open -a "Visual Studio Code" .`
```

Check the sessions code in your editor and play around in the [`test`](./test) folder (run the files from the terminal with `ruby test/test_file.rb`).

After each session, you can get the latest updates with:

```sh
git fetch --all
git reset --hard upstream/master
```

In case you messed up your Git configuration or files, and the previous command returns an error like `Pulling is not possible because you have unmerged files`, just delete your local `programming4everybody` folder, then run the first block of code again (remember to change the username!) ☝️

> **Bonus**: if you use [Atom](https://atom.io), you can install the [Teletype package](https://teletype.atom.io) and interact with our code when you ask for a live help! 🤓
>
> ![](https://blog.atom.io/img/posts/teletype/code-together.gif)

## General overview

Our program has 10 lessons, following [Codecademy’s free Ruby track](https://www.codecademy.com/learn/learn-ruby):

1. [`Introduction to Ruby`](./01_introduction.rb) Wednesday, April 8th
2. [`Control flow in Ruby`](./02_control_flow.rb) Friday, April 10th
3. [`Looping with Ruby`](./03_looping.rb) Monday, April 13th
4. [`Arrays and Hashes`](./04_arrays_and_hases.rb) Wednesday, April 15th
5. [`Blocks and Sorting`](./05_blocks.rb) Friday, April 17th
6. [`Hashes and Symbols`](./06_hashes_and_symbols.rb) Monday, April 20th
7. [`Refactoring`](./07_refractoring.rb) Wednesday, April 22nd
8. [`Procs and Lambdas`](./08_procks_and_lambdas.rb) Friday, April 24th
9. [`Object-Oriented Programming, Part 1`](./09_oop.rb) Monday, April 27th
10. [`Object-Oriented Programming, Part 2`](./10_oop.rb) Wednesday, April 29th

## Typical session

- _13h00-13h25_ (GMT+1) **Live session** on [Zoom](https://zoom.us/signup) with Le Wagon's teachers showing lots of live-demos to help you understand the concepts using practical examples
- _13h25-13h45_ (GMT+1) **Q&A session** where you'll be able to ask the teachers any question you might have and share your screen with them for a live help
- _13h45-?_ **Keep coding!** Use [the Slack channel](https://programming4everybody.slack.com) to find a buddy and work with him, interact with other classmates, or just send a funny gif 🙈

For each session, a private link to the Zoom meeting will be shared on the course Slack channel before the beginning of the lesson.

**N.B:** to keep the course as interactive as possible, if you share your screen with the rest of the participants, we ask you to do it for **no more than 2 minutes** per session, excluding any eventual extra presentation 🙋🏼‍♀️🙋🏽‍♂️ <br>
The Zoom meetings and Slack workspace are **private**, and only authorised participants can access them.

## Going further

Can't wait to know more about programming? **[Apply to Le Wagon](http://www.lewagon.com/lisbon/apply)**, and learn how to build the app of your dreams with us! 🚀

By completing this course, **you get a special 10% off the next Lisbon course tuition**, and you can combine this discount with any other active scholarship! 🇵🇹 Applications are open for our next batches, check out the dates on our website and [get in touch with our bootcamp manager Fernando](https://app.slack.com/client/T0110B1KQP3/D011C474D2P/user_profile/U011PACG01W).

You can also follow us on [Meetup](https://www.meetup.com/Le-Wagon-Lisbon-Coding-Station), [Facebook](https://www.facebook.com/lewagonlisbon) and [Instagram](https://www.instagram.com/lewagonlisbon), and stay involved in our amazing community 🤩

![](https://github.com/lewagonlisbon/programming4everybody/raw/master/images/lisbon.jpg)
