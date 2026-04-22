### Rulesets
Rulesets are helpful for putting up guardrails for a repository: [https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository/managing-rulesets/about-rulesets)

### Personal Access Tokens
Personal Access Tokens (PATs) are like SSH keys but for HTTP connections - you can provision them to machines to give them access to your account or specific repos: [https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens)

### Deploy Keys
Deploy keys are another way to grant limited GitHub access to a machine: [https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#deploy-keys](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/managing-deploy-keys#deploy-keys)

You just register a public SSH key with a repository, optionally giving it write access.

One easy way to set this up for a machine is like so:

Create a new SSH key pair:

```
ssh-keygen -t ed25519 -C "second-machine deploy key" -f ~/.ssh/id_ed25519_deploykey

```

Or you can reuse an existing one.

Create a new deploy key for the repository (Settings -> Deploy Keys), then copy paste the contents of the SSH public key in.

Then create a new host that the machine will use the special SSH key (its deploy key) for:

```
Host whatever_you_want_to_call_it
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_ed25519_deploykey
    IdentitiesOnly yes

```


Finally, set up your machine to use this host for your repository:

```
git clone git@whatever_you_want_to_call_it:<github_username>/<github_repo_name>.git

```

Or for an already-cloned repository:

```
git remote set-url origin git@whatever_you_want_to_call_it:<github_username>/<github_repo_name>.git

```

