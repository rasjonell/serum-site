---
title: Mix Tasks
group: docs
order: 1
---

[Back to the index](%page:docs/index)

# Mix Tasks

Once you have installed Serum locally in your project, you now have the access
to Serum's functionalities through Mix tasks. Use these Mix tasks to build,
test, and manage your Serum project.

## `serum` &mdash; Prints all Serum Tasks

```
$ mix serum
```

This Mix task simply prints a list of all Serum-related Mix tasks currently
available. This task does not take any command line argument.

If you want to read the help text for a specific task, `serum.build`
for example, run `mix help serum.build`.

- - -

## `serum.new` &mdash; Creates a New Serum Project

```
$ mix serum.new [--force] <PATH>
```

A new Serum project will be created at the given `PATH`. `PATH` cannot be
omitted and it must start with a lowercase ASCII letter, followed by zero
or more lowercase ASCII letters, digits, or underscores.

This task will fail if `PATH` already exists and is not empty. This behavior
will be overridden if the task is executed with a `--force` option.

This Mix task is not part of Serum; it's provided by `serum_new` package, which
is usually installed in your home directory, to make the task accessible from
anywhere.

Read [Project Structure](%page:docs/project_structure) document to see which
files and directories are created during the initialization process.

### Required Argument

- `PATH`

    A path where the new Serum project will be created.

### Options

- `--force`

    Forces the initialization of new project on a non-empty directory. Any
    existing files may be overwritten without any warning.

- - -

## `serum.build` &mdash; Builds the Current Serum Project

```
$ mix serum.build [(-o|--output) PATH]
```

The website will be built into `PATH` if `-o(--output) PATH` option is given,
otherwise `/path/to/project/site` directory.

If the output directory exists and is not empty, all files and directories
under that directory will be deleted before the build process begins.
However, any files or directories which names start with a dot (`.`) are
preserved, as they may contain important information such as version
control-related data.

### Options

- `-o(--output)` (string)

    Specifies the output directory. Defaults to `/path/to/project/site`.

- - -

## `serum.server` &mdash; Starts the Development Server

```
$ mix serum.server [(-p|--port) PORT]
```

This task builds the current Serum project at a temporary directory, and
starts the development server. The server uses the port `8080` by default.

### Options

- `-p(--port)` (integer)

    Use a specific port instead of `8080`. This is
    useful when the default port is not available for use.

### Server Commands

Once the development server has successfully started, you can interact with
the server by typing commands. Available commands are:

* `build` &mdash; Rebuilds current project.

* `quit` &mdash; Stops the development server and quit.

    <blockquote class="note">
      <header>NOTE</header>
      <p> Please make sure you type the <code>quit</code> command to stop the
      development server. Pressing Control-C causes unclean exit, leaving the
      temporary directory not removed.</p>
    </blockquote>

- - -

## `serum.gen.page` &mdash; Adds a New Page

```
$ mix serum.gen.page (-t|--title) TITLE (-o|--output) OUTPUT [Options]
```

### Required Options

- `-t(--title)` (string)

    Title of the new page.

- `-o(--output)` (string)

    The path where the new page will be saved, relative to `pages/` directory.
    It must end with one of `.md`, `.html`, or `.html.eex`.

### Other Options

- `-l(--label)` (string)

    Label of the new page. Defaults to the page title.

- `-g(--group)` (string)

    Name of a group the new page belongs to.

- `-r(--order)` (integer)

    The order of the new page in a group. Defaults to `0`.

- - -

## `serum.gen.post` &mdash; Adds a New Blog Post

```
$ mix serum.gen.post (-t|--title) TITLE (-o|--output) OUTPUT [Options]
```

Post date will be automatically set to the moment this task is executed.

### Required Options

- `-t(--title)` (string)

    Title of the new blog post.

- `-o(--output)` (string)

    Name of the generated post file. The actual path to the generated file will
    be in the form of `posts/YYYY-MM-DD-<OUTPUT>.md`.

### Other Options

- `-g(--tag)` (string)

    Tag(s) of the new post. You can provide this option zero or more times to
    give multiple tags to the post.