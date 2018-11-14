# Members Only

Made in response of one of [The Odin Project](https://www.theodinproject.com) [assignments](https://www.theodinproject.com/lessons/authentication).

Assignment description:

> In this project, you’ll be building an exclusive clubhouse
> where your members can write embarrassing posts about non-members.
> Inside the clubhouse, members can see who the author of a post is
> but, outside, they can only see the story and wonder who wrote it.

## Getting started

To get started with the app, clone the repository and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```