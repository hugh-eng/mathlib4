# How to Submit Files for Review in Mathlib4

This guide explains how to submit your work to mathlib4 for review by other contributors and maintainers.

## Prerequisites

Before submitting files for review, ensure you have:

1. **Set up your development environment**: Follow the [installation guide](https://leanprover-community.github.io/get_started.html)
2. **Created a fork**: If you're not a maintainer, you'll need to fork the repository
3. **Made your changes**: Complete your work on a feature branch
4. **Tested your changes**: Run `lake build` and `lake test` to ensure everything works

## Step-by-Step Process

### 1. Prepare Your Changes

Before submitting for review:

```bash
# Update Mathlib.lean if you added new files
lake exe mk_all

# Build your changes
lake build

# Run tests
lake test

# Run style linters
lake exe lint-style
```

### 2. Commit Your Changes

Follow the [commit style conventions](https://leanprover-community.github.io/contribute/commit.html):

```bash
git add <files>
git commit -m "feat(Category): description of your changes"
```

Common commit prefixes:
- `feat`: New features or theorems
- `fix`: Bug fixes
- `refactor`: Code refactoring
- `perf`: Performance improvements
- `docs`: Documentation changes
- `chore`: Maintenance tasks
- `style`: Code style changes

### 3. Push to Your Branch

```bash
# If working on a fork
git push origin your-branch-name

# If you have direct access (less common)
git push origin your-branch-name
```

### 4. Create a Pull Request (PR)

1. **Go to GitHub**: Navigate to https://github.com/leanprover-community/mathlib4
2. **Click "New Pull Request"**: You'll see this button after pushing your branch
3. **Select your branch**: Choose your branch from the dropdown
4. **Fill in the PR template**:
   - **Title**: Follow the same format as your commit messages
   - **Description**: Explain what your changes do and why
   - **Related Issues**: Reference any related issues with `#issue_number`

### 5. Wait for Initial Checks

After creating your PR:

- **CI Checks**: Automated tests will run on your PR
- **Auto-labeling**: The system will automatically add topic labels based on which files you modified
- **Build Status**: Wait for the build to complete (this can take 15-30 minutes)

### 6. Request Review

#### Automatic Reviewer Assignment

Mathlib4 has an automatic reviewer assignment system that runs daily. Your PR will be:

1. Added to the [review queue](https://leanprover-community.github.io/queueboard/)
2. Automatically assigned a reviewer based on the modified files
3. The assigned reviewer will be notified

#### Manual Review Request

You can also:

1. **Tag reviewers**: Mention maintainers in comments using `@username`
2. **Ask on Zulip**: Post in the [#mathlib4 channel](https://leanprover.zulipchat.com/) with a link to your PR
3. **Wait patiently**: Reviews can take time, especially for large changes

### 7. Respond to Review Feedback

When reviewers provide feedback:

1. **Address comments**: Make requested changes to your code
2. **Reply to reviewers**: Let them know when you've addressed their feedback
3. **Push new commits**: Updates will trigger new CI builds
4. **Mark conversations resolved**: Use GitHub's "Resolve conversation" feature when appropriate

## PR Labels and Their Meanings

Your PR may receive various labels:

- **awaiting-review**: Waiting for a reviewer to look at the PR
- **awaiting-author**: Reviewer has requested changes; action needed from you
- **maintainer-merge**: Approved and ready to be merged by maintainers
- **WIP**: Work in progress; not ready for review
- **t-{topic}**: Topic labels (e.g., t-algebra, t-topology) automatically added based on modified files

## Tips for a Smooth Review Process

1. **Keep PRs focused**: Smaller, focused changes are easier to review
2. **Write good descriptions**: Explain the "why" not just the "what"
3. **Follow style guides**: 
   - [Style guide](https://leanprover-community.github.io/contribute/style.html)
   - [Naming conventions](https://leanprover-community.github.io/contribute/naming.html)
   - [Documentation style](https://leanprover-community.github.io/contribute/doc.html)
4. **Be responsive**: Reply to review comments promptly
5. **Be patient**: Reviewers are volunteers; reviews take time
6. **Test thoroughly**: Don't submit untested code
7. **Update when asked**: If reviewers request changes, implement them

## Common Issues and Solutions

### "My PR hasn't been reviewed yet"

- **Check the review queue**: Visit https://leanprover-community.github.io/queueboard/
- **Wait for automatic assignment**: This happens daily
- **Ask on Zulip**: Politely inquire in the #mathlib4 channel
- **Be patient**: Some PRs take longer than others

### "CI checks are failing"

- **Check the logs**: Click on the failing check to see details
- **Common issues**:
  - Build failures: Fix compilation errors
  - Linter failures: Run `lake exe lint-style` locally
  - Test failures: Run `lake test` locally
- **Ask for help**: If you're stuck, ask on Zulip

### "I need to make changes after creating the PR"

- **Just push more commits**: Your PR will automatically update
- **Force push cautiously**: Avoid `git push --force` unless necessary
- **Keep reviewers informed**: Comment when you've made significant changes

## Resources

- [Contributing Guide](https://leanprover-community.github.io/contribute/index.html)
- [Review Queue](https://leanprover-community.github.io/queueboard/)
- [Zulip Chat](https://leanprover.zulipchat.com/)
- [Mathlib Documentation](https://leanprover-community.github.io/mathlib4_docs/index.html)

## Getting Help

If you have questions:

1. **Read the docs**: Start with the [contributing guide](https://leanprover-community.github.io/contribute/index.html)
2. **Search Zulip**: Many questions have been answered before
3. **Ask on Zulip**: The community is friendly and helpful
4. **Be specific**: Provide context and details about your issue

---

**Remember**: Everyone was new once! Don't hesitate to ask questions, and welcome to the mathlib4 community!
